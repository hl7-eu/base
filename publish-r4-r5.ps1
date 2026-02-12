<#    publish-r4-r5.ps1

  Steps:
  0) Run _preprocess-r4.bat (hl7eu-base)
  A) Commit + push hl7eu-base
  B) git pull hl7eu-base-r5\__r4-r5
  C) Run _preprocess-r5.bat
  D) Run sushi .
  E) Commit + push hl7eu-base-r5

  Returns to C:\workspace\hl7eu-base at the end

    .\publish-r4-r5.ps1
    or
    .\publish-r4-r5.ps1 -Message "My custom commit message"
#>

param(
  [string]$Message
)

$ErrorActionPreference = "Stop"

$base     = "C:\workspace\hl7eu-base"
$baseR5   = "C:\workspace\hl7eu-base-r5"
$subR5    = Join-Path $baseR5 "__r4-r5"
$preBatR4 = Join-Path $base "_preprocess-r4.bat"
$preBatR5 = Join-Path $baseR5 "_preprocess-r5.bat"

$originalLocation = Get-Location

# Default commit message if none provided
if ([string]::IsNullOrWhiteSpace($Message)) {
  $Message = @"
FHIR-55454: Moved EHDSBodyStructure model and associate map under the Entity group
FHIR-55741: Normalized relationships in model map tables
"@
}

function Run-Step([string]$Title, [scriptblock]$Cmd) {
  Write-Host "`n==> $Title" -ForegroundColor Cyan
  & $Cmd
  if ($LASTEXITCODE -ne 0) {
    throw "Step failed: $Title (exit code $LASTEXITCODE)"
  }
}

function Assert-Repo([string]$Path) {
  if (-not (Test-Path $Path)) {
    throw "Missing path: $Path"
  }
  if (-not (Test-Path (Join-Path $Path ".git"))) {
    throw "Not a git repo: $Path"
  }
}

function Git-HasChanges([string]$RepoPath) {
  Push-Location $RepoPath
  try {
    $out = git status --porcelain
    return -not [string]::IsNullOrWhiteSpace($out)
  } finally {
    Pop-Location
  }
}

function Git-CommitIfNeeded([string]$RepoPath, [string]$Msg) {
  Set-Location $RepoPath
  if (Git-HasChanges $RepoPath) {
    git add -A
    $Msg | git commit -F -
  } else {
    Write-Host "No changes in $RepoPath; skipping commit."
  }
}

try {
  # Pre-flight checks
  Assert-Repo $base
  Assert-Repo $baseR5
  Assert-Repo $subR5

  Write-Host "Commit message to be used:" -ForegroundColor Yellow
  Write-Host "--------------------------------" -ForegroundColor Yellow
  Write-Host $Message
  Write-Host "--------------------------------" -ForegroundColor Yellow

  # ---- 0) Run _preprocess-r4.bat
  Run-Step "0) Run _preprocess-r4.bat" {
    Set-Location $base
    if (-not (Test-Path $preBatR4)) {
      throw "Missing file: $preBatR4"
    }
    cmd /c "`"$preBatR4`""
  }

  # ---- A) Commit + push hl7eu-base
  Run-Step "A) Commit + push hl7eu-base" {
    Git-CommitIfNeeded $base $Message
    Set-Location $base
    git push
  }

  # ---- B) Pull submodule in hl7eu-base-r5\__r4-r5
  Run-Step "B) Pull submodule in hl7eu-base-r5\__r4-r5" {
    Set-Location $subR5
    git pull
  }

  # ---- C) Run _preprocess-r5.bat
  Run-Step "C) Run _preprocess-r5.bat" {
    Set-Location $baseR5
    if (-not (Test-Path $preBatR5)) {
      throw "Missing file: $preBatR5"
    }
    cmd /c "`"$preBatR5`""
  }

  # ---- D) Run sushi .
  Run-Step "D) Run sushi ." {
    Set-Location $baseR5
    sushi .
  }

  # ---- E) Commit + push hl7eu-base-r5
  Run-Step "E) Commit + push hl7eu-base-r5" {
    Git-CommitIfNeeded $baseR5 $Message
    Set-Location $baseR5
    git push
  }

  Write-Host "`nAll steps completed successfully." -ForegroundColor Green
}
finally {
  Set-Location $base
  Write-Host "`nReturned to $base" -ForegroundColor DarkGray
}
