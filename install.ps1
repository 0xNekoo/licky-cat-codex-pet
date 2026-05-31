$ErrorActionPreference = "Stop"

$PetId = "licky-cat"
$RepoRawUrl = "https://raw.githubusercontent.com/0xNekoo/licky-cat-codex-pet/main"
$CodexHome = if ($env:CODEX_HOME) { $env:CODEX_HOME } else { Join-Path $env:USERPROFILE ".codex" }
$PetDir = Join-Path (Join-Path $CodexHome "pets") $PetId

New-Item -ItemType Directory -Force -Path $PetDir | Out-Null

Invoke-WebRequest -UseBasicParsing -Uri "$RepoRawUrl/pet.json" -OutFile (Join-Path $PetDir "pet.json")
Invoke-WebRequest -UseBasicParsing -Uri "$RepoRawUrl/spritesheet.webp" -OutFile (Join-Path $PetDir "spritesheet.webp")

Write-Host "Licky Cat installed to: $PetDir"
Write-Host "Restart Codex, then choose '舔舔猫' from the custom pet list."
