param (
    [string]$Prompt
)

if (-not $Prompt) {
    Write-Host "Usage: .\run.ps1 -Prompt 'Your prompt here'"
    exit
}

python cli.py "$Prompt"
