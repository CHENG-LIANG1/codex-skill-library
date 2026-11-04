# Codex Skill Library

我的个人 Skill 备份与安装库。仓库公开保存当前环境中可再分发的 Skill，并记录由 Codex 系统或插件提供、但不适合复制进公开仓库的 Skill。

## 当前内容

- `codex-skills/`：22 个安装到 `~/.codex/skills` 的 Skill。
- `agent-skills/`：26 个安装到 `~/.agents/skills` 的飞书/Lark Skill。
- `catalog/active-skills.md`：2026-08-12 基线与后续增量收录的 81 个 Skill 条目及安装方式。
- `catalog/runtime-only-skills.md`：系统/插件运行时 Skill，以及仅存在于缓存、当前未启用的 Skill。
- `scripts/install.sh`：把仓库中的 48 个可移植 Skill 安装到本机；已有同名目录会跳过，不会覆盖。
- `THIRD_PARTY_NOTICES.md`：上游来源与许可证说明。

81 个收录条目中有 5 个重名实现，因此对应 76 个唯一名称。仓库实际备份 48 个可移植目录；其余 33 个由 Codex 系统或插件管理。这是历史基线与增量安装记录，不代表当前运行时的完整实时清单。

## Skill 分类目录

### Codex 系统内置（5）

这类 Skill 随 Codex 提供，无需从本仓库安装。

| Skill | 作用 |
|---|---|
| `imagegen` | 调用 Codex 内置图像能力生成或编辑图片。 |
| `openai-docs` | 查询 Codex、ChatGPT、OpenAI API 等官方产品文档。 |
| `plugin-creator` | 创建符合 Codex 规范的插件目录和插件清单。 |
| `skill-creator` | 创建或更新结构清晰、可复用的 Skill。 |
| `skill-installer` | 从 OpenAI curated 列表或 GitHub 仓库安装 Skill。 |

### 本地 Codex Skill（22）

这类 Skill 收录在 [`codex-skills/`](codex-skills)，安装目标是 `~/.codex/skills`。

| Skill | 分类 | 作用 |
|---|---|---|
| [`cloudflare-deploy`](codex-skills/cloudflare-deploy) | 部署 | 将应用和基础设施部署到 Cloudflare Workers、Pages 等服务。 |
| [`develop-web-game`](codex-skills/develop-web-game) | 游戏开发 | 通过小步实现、Playwright 操作和截图检查迭代 Web 游戏。 |
| [`figma`](codex-skills/figma) | 设计开发 | 获取 Figma 设计上下文、变量和素材并辅助落地代码。 |
| [`figma-implement-design`](codex-skills/figma-implement-design) | 设计开发 | 按 Figma 节点实现高还原度的生产代码。 |
| [`find-skills`](codex-skills/find-skills) | Skill 管理 | 在开放 Skill 生态中搜索、评估并安装合适的 Skill。 |
| [`frontend-design`](codex-skills/frontend-design) | 前端设计 | 指导更有辨识度的界面、排版、布局和动效设计。 |
| [`gh-address-comments`](codex-skills/gh-address-comments) | GitHub | 检查并处理当前 PR 的评审意见和 Issue 评论。 |
| [`gh-fix-ci`](codex-skills/gh-fix-ci) | GitHub | 分析 GitHub Actions 失败日志并修复 CI 问题。 |
| [`imagegen`](codex-skills/imagegen) | 图像 | 通过 OpenAI Image API 生成、编辑、抠图或批量制作图片。 |
| [`impeccable`](codex-skills/impeccable) | 前端设计 / UX | 审查与优化界面层级、排版、响应式、可访问性和交互细节，附带设计检测引擎启动器。 |
| [`jupyter-notebook`](codex-skills/jupyter-notebook) | 数据与实验 | 创建、编辑并验证实验或教程型 Jupyter Notebook。 |
| [`netlify-deploy`](codex-skills/netlify-deploy) | 部署 | 使用 Netlify CLI 发布预览或生产站点。 |
| [`pdf`](codex-skills/pdf) | 文档 | 读取、创建、渲染并检查 PDF 内容和版式。 |
| [`playwright`](codex-skills/playwright) | 浏览器自动化 | 使用真实浏览器完成操作、抓取、截图和 UI 调试。 |
| [`react-joyride`](codex-skills/react-joyride) | React | 实现和调试 React Joyride v3 新手引导与跨页面 Tour。 |
| [`render-deploy`](codex-skills/render-deploy) | 部署 | 分析项目并通过 Render Blueprint 或控制台完成部署。 |
| [`screenshot`](codex-skills/screenshot) | 桌面工具 | 捕获全屏、窗口或指定区域的系统截图。 |
| [`speech`](codex-skills/speech) | 音频 | 通过 OpenAI Audio API 生成旁白、语音和批量音频。 |
| [`transcribe`](codex-skills/transcribe) | 音频 | 将音频或视频转写为文本，并可进行说话人区分。 |
| [`ux-heuristics`](codex-skills/ux-heuristics) | UX | 用 Nielsen、Krug、WCAG 等方法进行可用性审计。 |
| [`visual-design-foundations`](codex-skills/visual-design-foundations) | 视觉设计 | 建立字体、颜色、间距和图标等视觉设计基础。 |
| [`yeet`](codex-skills/yeet) | GitHub | 一次完成暂存、提交、推送和创建 GitHub PR。 |

### 飞书 / Lark Skill（26）

这类 Skill 收录在 [`agent-skills/`](agent-skills)，安装目标是 `~/.agents/skills`。

| Skill | 分类 | 作用 |
|---|---|---|
| [`lark-approval`](agent-skills/lark-approval) | 审批 | 查询和管理飞书审批实例与审批任务。 |
| [`lark-apps`](agent-skills/lark-apps) | 应用发布 | 将本地 HTML 或静态站点发布为飞书妙搭应用。 |
| [`lark-attendance`](agent-skills/lark-attendance) | 考勤 | 查询个人飞书考勤和打卡记录。 |
| [`lark-base`](agent-skills/lark-base) | 多维表格 | 管理 Base、表、字段、记录、视图、权限和工作流。 |
| [`lark-calendar`](agent-skills/lark-calendar) | 日历 | 查询和创建日程、管理参会人、忙闲与会议室。 |
| [`lark-contact`](agent-skills/lark-contact) | 通讯录 | 在姓名、邮箱和飞书用户 ID 之间进行解析。 |
| [`lark-doc`](agent-skills/lark-doc) | 文档 | 创建、读取、改写和编辑飞书 Docx 或 Wiki 文档。 |
| [`lark-drive`](agent-skills/lark-drive) | 云空间 | 管理飞书云盘文件、文件夹、评论、权限与上传下载。 |
| [`lark-event`](agent-skills/lark-event) | 事件 | 订阅并消费飞书 IM、妙记、会议等实时事件。 |
| [`lark-im`](agent-skills/lark-im) | 即时通讯 | 收发消息、搜索聊天、管理群聊和消息附件。 |
| [`lark-mail`](agent-skills/lark-mail) | 邮箱 | 搜索、撰写、发送、回复和管理飞书邮件。 |
| [`lark-markdown`](agent-skills/lark-markdown) | Markdown | 创建、读取、覆盖、局部修改和比较 Markdown 文件。 |
| [`lark-minutes`](agent-skills/lark-minutes) | 妙记 | 搜索、上传、下载妙记并获取总结、待办和转写稿。 |
| [`lark-okr`](agent-skills/lark-okr) | OKR | 管理周期、目标、关键结果、对齐关系和进展。 |
| [`lark-openapi-explorer`](agent-skills/lark-openapi-explorer) | OpenAPI | 探索并调用尚未被现有 Skill 封装的飞书 OpenAPI。 |
| [`lark-shared`](agent-skills/lark-shared) | 基础配置 | 处理 lark-cli 登录、身份切换、权限和 Scope 问题。 |
| [`lark-sheets`](agent-skills/lark-sheets) | 电子表格 | 创建和操作飞书电子表格、工作表及单元格数据。 |
| [`lark-skill-maker`](agent-skills/lark-skill-maker) | Skill 开发 | 将飞书 API 操作封装成可复用的自定义 Skill。 |
| [`lark-slides`](agent-skills/lark-slides) | 幻灯片 | 创建、读取和编辑飞书或豆包幻灯片。 |
| [`lark-task`](agent-skills/lark-task) | 任务 | 创建和管理飞书任务、清单、子任务及协作成员。 |
| [`lark-vc`](agent-skills/lark-vc) | 视频会议 | 搜索历史会议并读取参会人、总结、待办和逐字稿。 |
| [`lark-vc-agent`](agent-skills/lark-vc-agent) | 会议 Agent | 让机器人加入会议并读取会议期间的实时事件。 |
| [`lark-whiteboard`](agent-skills/lark-whiteboard) | 画板 | 查询、导出并使用 DSL、Mermaid 等方式编辑飞书画板。 |
| [`lark-wiki`](agent-skills/lark-wiki) | 知识库 | 管理知识空间、成员和 Wiki 文档节点层级。 |
| [`lark-workflow-meeting-summary`](agent-skills/lark-workflow-meeting-summary) | 工作流 | 汇总指定时间范围的会议纪要并生成结构化报告。 |
| [`lark-workflow-standup-report`](agent-skills/lark-workflow-standup-report) | 工作流 | 汇总指定日期的日程和未完成任务，生成站会摘要。 |

### Codex 内置插件 Skill（6）

这类 Skill 由 Codex 内置插件提供和更新，不复制到公开仓库。

| Skill | 插件 | 作用 |
|---|---|---|
| `browser:control-in-app-browser` | Browser | 控制 Codex 内置浏览器进行导航、点击、输入和页面检查。 |
| `chrome:control-chrome` | Chrome | 利用用户现有 Chrome 标签页、登录状态和扩展完成操作。 |
| `computer-use:computer-use` | Computer Use | 通过屏幕和系统交互控制本地 Mac 应用。 |
| `sites:sites-building` | Sites | 构建网站、仪表盘、门户、游戏和内部工具。 |
| `sites:sites-hosting` | Sites | 发布并管理通过 Sites 构建的网站。 |
| `visualize:visualize` | Visualize | 在对话中创建图表、地图、模拟器和交互式可视化。 |

### Figma 插件 Skill（12）

| Skill | 作用 |
|---|---|
| `figma:figma-code-connect` | 创建和维护 Figma 组件到代码片段的 Code Connect 映射。 |
| `figma:figma-create-new-file` | 在创建新 Figma 文件前执行必要的前置工作流。 |
| `figma:figma-design-to-code` | 获取设计上下文并将 Figma 设计转换为代码。 |
| `figma:figma-generate-design` | 把应用页面或布局生成到 Figma 设计稿中。 |
| `figma:figma-generate-diagram` | 在 Figma/FigJam 中生成流程图、架构图等图表。 |
| `figma:figma-generate-library` | 从代码库创建或更新 Figma 设计系统和组件库。 |
| `figma:figma-implement-motion` | 将 Figma 动效和动画规格实现为生产代码。 |
| `figma:figma-swiftui` | 在 SwiftUI 与 Figma 之间双向转换设计和代码。 |
| `figma:figma-use` | 执行通用 Figma 读取、编辑和设计操作的基础工作流。 |
| `figma:figma-use-figjam` | 在 FigJam 场景中执行白板和协作图操作。 |
| `figma:figma-use-motion` | 在 Figma 中创建关键帧、缓动和时间线动画。 |
| `figma:figma-use-slides` | 在 Figma Slides 中创建和编辑演示文稿。 |

### GitHub 插件 Skill（4）

| Skill | 作用 |
|---|---|
| `github:gh-address-comments` | 读取并处理 PR 中未解决的评审意见和修改请求。 |
| `github:gh-fix-ci` | 定位和修复 GitHub Actions 检查失败。 |
| `github:github` | 对仓库、Issue、PR 和 GitHub 工作流进行综合分诊。 |
| `github:yeet` | 完成分支、提交、推送和创建 PR 的发布流程。 |

### Codex 主运行时 Skill（6）

| Skill | 插件 | 作用 |
|---|---|---|
| `documents:documents` | Documents | 创建、编辑、批注并验证 Word/Docx 文档。 |
| `pdf:pdf` | PDF | 读取、创建、渲染和验证 PDF 文件。 |
| `presentations:Presentations` | Presentations | 创建、编辑和验证 PowerPoint 或演示文稿。 |
| `spreadsheets:Spreadsheets` | Spreadsheets | 创建、分析和验证 XLSX、CSV 等电子表格。 |
| `spreadsheets:excel-live-control` | Spreadsheets | 控制已打开并连接的 Microsoft Excel 工作簿。 |
| `template-creator:template-creator` | Template Creator | 从参考内容创建可复用的个人文档、表格或幻灯片模板。 |

更偏安装来源和运行状态的清单见 [`catalog/active-skills.md`](catalog/active-skills.md) 与 [`catalog/runtime-only-skills.md`](catalog/runtime-only-skills.md)。

## 安装

```bash
gh repo clone CHENG-LIANG1/codex-skill-library
cd codex-skill-library
./scripts/install.sh
```

也可以指定目标目录：

```bash
CODEX_SKILL_TARGET=/path/to/codex/skills \
AGENT_SKILL_TARGET=/path/to/agent/skills \
./scripts/install.sh
```

安装完成后，新开一个 Codex 任务，让 Skill 清单重新载入。

Impeccable 4.8.0 的恢复安装同样使用上面的脚本。安装后可运行 `$impeccable audit` 检查界面，或 `$impeccable polish` 做细节打磨。首次使用启动器会按校验清单下载对应平台的检测引擎，需要联网；本仓库不保存引擎二进制，也不自动启用 hooks。来源、版本和恢复命令见 [`codex-skills/impeccable/UPSTREAM.md`](codex-skills/impeccable/UPSTREAM.md)。

## 更新方式

仓库是一个可审查的快照，不会自动跟踪上游。更新前应先检查上游变更与许可证，再替换对应目录并更新 `THIRD_PARTY_NOTICES.md`。

Codex 系统 Skill 和插件 Skill 不应通过这个仓库更新：前者随 Codex 更新，后者由 Codex 的插件管理器更新。

## 许可证

本仓库自行编写的文档和脚本采用 MIT License。`codex-skills/` 与 `agent-skills/` 中的第三方内容仍遵循各自上游许可证；详见 `THIRD_PARTY_NOTICES.md` 和各 Skill 目录内的许可证文件。
