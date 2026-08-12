# 当前可用 Skill 全表

盘点时间：2026-08-12。当前会话共有 80 个可用条目、75 个唯一名称。

## Codex 系统内置（5）

安装方式：随 Codex 自动提供，无需单独安装。

- `imagegen`
- `openai-docs`
- `plugin-creator`
- `skill-creator`
- `skill-installer`

## 本地 Codex Skill（21）

安装位置：`~/.codex/skills/<name>`。本仓库均已备份到 `codex-skills/`。

- `cloudflare-deploy`
- `develop-web-game`
- `figma`
- `figma-implement-design`
- `find-skills`
- `frontend-design`
- `gh-address-comments`
- `gh-fix-ci`
- `imagegen`
- `jupyter-notebook`
- `netlify-deploy`
- `pdf`
- `playwright`
- `react-joyride`
- `render-deploy`
- `screenshot`
- `speech`
- `transcribe`
- `ux-heuristics`
- `visual-design-foundations`
- `yeet`

安装方式：运行仓库根目录的 `./scripts/install.sh`。原始上游安装命令见 `../THIRD_PARTY_NOTICES.md`。

## 飞书/Lark Skill（26）

安装位置：`~/.agents/skills/<name>`。来源为 `larksuite/cli`，本仓库均已备份到 `agent-skills/`。

- `lark-approval`
- `lark-apps`
- `lark-attendance`
- `lark-base`
- `lark-calendar`
- `lark-contact`
- `lark-doc`
- `lark-drive`
- `lark-event`
- `lark-im`
- `lark-mail`
- `lark-markdown`
- `lark-minutes`
- `lark-okr`
- `lark-openapi-explorer`
- `lark-shared`
- `lark-sheets`
- `lark-skill-maker`
- `lark-slides`
- `lark-task`
- `lark-vc`
- `lark-vc-agent`
- `lark-whiteboard`
- `lark-wiki`
- `lark-workflow-meeting-summary`
- `lark-workflow-standup-report`

## Codex 内置插件（6）

安装方式：随 Codex 或对应内置插件提供，由 Codex 插件管理器启用和更新，不从本仓库复制。

- `browser:control-in-app-browser`
- `chrome:control-chrome`
- `computer-use:computer-use`
- `sites:sites-building`
- `sites:sites-hosting`
- `visualize:visualize`

## Figma 插件（12）

安装方式：在 Codex 插件市场安装并启用 Figma 插件；由插件管理器更新。

- `figma:figma-code-connect`
- `figma:figma-create-new-file`
- `figma:figma-design-to-code`
- `figma:figma-generate-design`
- `figma:figma-generate-diagram`
- `figma:figma-generate-library`
- `figma:figma-implement-motion`
- `figma:figma-swiftui`
- `figma:figma-use`
- `figma:figma-use-figjam`
- `figma:figma-use-motion`
- `figma:figma-use-slides`

## GitHub 插件（4）

安装方式：在 Codex 插件市场安装并启用 GitHub 插件；由插件管理器更新。

- `github:gh-address-comments`
- `github:gh-fix-ci`
- `github:github`
- `github:yeet`

## Codex 主运行时插件（6）

安装方式：在 Codex 插件设置中启用对应的 Documents、PDF、Presentations、Spreadsheets 和 Template Creator 插件；随运行时更新。

- `documents:documents`
- `pdf:pdf`
- `presentations:Presentations`
- `spreadsheets:Spreadsheets`
- `spreadsheets:excel-live-control`
- `template-creator:template-creator`

## 重名说明

以下名称同时存在本地版与系统/插件版：`imagegen`、`pdf`、`gh-address-comments`、`gh-fix-ci`、`yeet`。因此 80 个条目对应 75 个唯一名称。
