[CmdletBinding()]
param(
    [string]$Destination
)

$ErrorActionPreference = 'Stop'
$scriptDirectory = Split-Path -Parent $MyInvocation.MyCommand.Path
if ([string]::IsNullOrWhiteSpace($Destination)) {
    $Destination = Join-Path $scriptDirectory 'official'
}
$manifestPath = Join-Path $scriptDirectory 'official\downloads.csv'
$downloads = Import-Csv -LiteralPath $manifestPath

New-Item -ItemType Directory -Path $Destination -Force | Out-Null

foreach ($download in $downloads) {
    $outputPath = Join-Path $Destination $download.Name

    if (Test-Path -LiteralPath $outputPath -PathType Leaf) {
        $existingHash = (Get-FileHash -LiteralPath $outputPath -Algorithm SHA256).Hash
        if ($existingHash -eq $download.SHA256) {
            Write-Host "Already verified: $($download.Name)"
            continue
        }
    }

    Write-Host "Downloading: $($download.Name)"
    Invoke-WebRequest -Uri $download.Url -OutFile $outputPath -MaximumRedirection 10

    $bytes = [System.IO.File]::ReadAllBytes($outputPath)
    if ($bytes.Length -lt 5 -or [System.Text.Encoding]::ASCII.GetString($bytes, 0, 5) -ne '%PDF-') {
        throw "The downloaded file is not a PDF: $($download.Name)"
    }

    $actualHash = (Get-FileHash -LiteralPath $outputPath -Algorithm SHA256).Hash
    if ($actualHash -ne $download.SHA256) {
        throw "SHA-256 verification failed: $($download.Name)"
    }
}

Write-Host "Official CTFL documents are ready in $Destination"
