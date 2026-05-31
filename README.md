# Licky Cat - My Golden Shaded Coding Buddy

[中文说明](README.zh-CN.md)

> A tiny Codex pet plugin that brings my nearly five-year-old golden shaded British Shorthair onto the screen, so every coding day starts with a fluffy little companion.

![Licky Cat contact sheet](qa/contact-sheet.png)

## Inspiration

He is a golden shaded British Shorthair, almost 5 years old. I love him so much that I made him a cute digital twin, letting him curl up inside the Codex editor and keep me company while I code.

Now, whenever I open Codex, the first thing I see is his fluffy little face. Instant comfort.

## Preview

| State | Preview |
| --- | --- |
| Idle | ![Idle](qa/previews/idle.gif) |
| Running right | ![Running right](qa/previews/running-right.gif) |
| Running left | ![Running left](qa/previews/running-left.gif) |
| Waving | ![Waving](qa/previews/waving.gif) |
| Jumping | ![Jumping](qa/previews/jumping.gif) |
| Failed | ![Failed](qa/previews/failed.gif) |
| Waiting | ![Waiting](qa/previews/waiting.gif) |
| Running | ![Running](qa/previews/running.gif) |
| Review | ![Review](qa/previews/review.gif) |

## Files

```text
.
├── pet.json
├── spritesheet.webp
├── install.sh
├── install.ps1
├── README.md
├── README.zh-CN.md
└── qa/
    ├── contact-sheet.png
    └── previews/
        ├── idle.gif
        ├── running-right.gif
        ├── running-left.gif
        ├── waving.gif
        ├── jumping.gif
        ├── failed.gif
        ├── waiting.gif
        ├── running.gif
        └── review.gif
```

## Install

### macOS / Linux

```bash
curl -fsSL https://raw.githubusercontent.com/0xNekoo/licky-cat-codex-pet/main/install.sh | bash
```

### Windows PowerShell

```powershell
iwr -UseB https://raw.githubusercontent.com/0xNekoo/licky-cat-codex-pet/main/install.ps1 | iex
```

Restart Codex after installing, then choose `舔舔猫` from the custom pet list.

## Verify

macOS / Linux:

```bash
PET_DIR="${CODEX_HOME:-$HOME/.codex}/pets/licky-cat"
test -f "$PET_DIR/pet.json"
test -f "$PET_DIR/spritesheet.webp"
python3 -m json.tool "$PET_DIR/pet.json" >/dev/null
```

Windows PowerShell:

```powershell
$CodexHome = if ($env:CODEX_HOME) { $env:CODEX_HOME } else { Join-Path $env:USERPROFILE ".codex" }
$PetDir = Join-Path (Join-Path $CodexHome "pets") "licky-cat"
Test-Path (Join-Path $PetDir "pet.json")
Test-Path (Join-Path $PetDir "spritesheet.webp")
Get-Content (Join-Path $PetDir "pet.json") | ConvertFrom-Json | Out-Null
```

The `pet.json` file should contain:

```json
{
  "id": "licky-cat",
  "displayName": "舔舔猫",
  "spritesheetPath": "spritesheet.webp"
}
```

## Uninstall

macOS / Linux:

```bash
rm -rf "${CODEX_HOME:-$HOME/.codex}/pets/licky-cat"
```

Windows PowerShell:

```powershell
$CodexHome = if ($env:CODEX_HOME) { $env:CODEX_HOME } else { Join-Path $env:USERPROFILE ".codex" }
Remove-Item -Recurse -Force (Join-Path (Join-Path $CodexHome "pets") "licky-cat")
```

Restart Codex after uninstalling.
