# 舔舔猫 - 我的金渐层小伙伴

[English README](README.md)

> 一个可以在 Codex 编辑器里养猫的小宠物插件：把我家快 5 岁的金渐层搬进屏幕，让写代码的每一天都有猫猫陪伴。

![舔舔猫动作预览](qa/contact-sheet.png)

## 灵感来源

他是一只**金渐层**，也是一只马上就要 **5 岁**的小朋友。因为实在太喜欢他了，我干脆用代码给他捏了一个可爱的数字分身，让他能随时趴在编辑器里陪我敲代码。

现在每次打开 Codex，第一眼就能看到他那张毛茸茸的小脸，治愈感直接拉满。

## 动作预览

| 状态 | 预览 |
| --- | --- |
| 待机 | ![待机](qa/previews/idle.gif) |
| 向右移动 | ![向右移动](qa/previews/running-right.gif) |
| 向左移动 | ![向左移动](qa/previews/running-left.gif) |
| 挥爪 | ![挥爪](qa/previews/waving.gif) |
| 跳跃 | ![跳跃](qa/previews/jumping.gif) |
| 失败 | ![失败](qa/previews/failed.gif) |
| 等待 | ![等待](qa/previews/waiting.gif) |
| 处理中 | ![处理中](qa/previews/running.gif) |
| 复查 | ![复查](qa/previews/review.gif) |

## 文件结构

```text
.
├── pet.json
├── spritesheet.webp
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

## 安装

### 一行命令安装

```bash
PET_DIR="${CODEX_HOME:-$HOME/.codex}/pets/licky-cat"
mkdir -p "$PET_DIR"
curl -L -o "$PET_DIR/pet.json" "https://raw.githubusercontent.com/0xNekoo/licky-cat-codex-pet/main/pet.json"
curl -L -o "$PET_DIR/spritesheet.webp" "https://raw.githubusercontent.com/0xNekoo/licky-cat-codex-pet/main/spritesheet.webp"
```

安装后重启 Codex，然后在自定义宠物列表里选择 `舔舔猫`。

### 手动安装

1. 下载 `pet.json`。
2. 下载 `spritesheet.webp`。
3. 如果本地没有宠物目录，先创建：

```bash
mkdir -p "${CODEX_HOME:-$HOME/.codex}/pets/licky-cat"
```

4. 把两个文件放到下面的位置：

```text
~/.codex/pets/licky-cat/pet.json
~/.codex/pets/licky-cat/spritesheet.webp
```

5. 重启 Codex，并选择 `舔舔猫`。

## 验证

```bash
PET_DIR="${CODEX_HOME:-$HOME/.codex}/pets/licky-cat"
test -f "$PET_DIR/pet.json"
test -f "$PET_DIR/spritesheet.webp"
python3 -m json.tool "$PET_DIR/pet.json" >/dev/null
```

`pet.json` 应包含：

```json
{
  "id": "licky-cat",
  "displayName": "舔舔猫",
  "spritesheetPath": "spritesheet.webp"
}
```

## 卸载

```bash
rm -rf "${CODEX_HOME:-$HOME/.codex}/pets/licky-cat"
```

卸载后重启 Codex。
