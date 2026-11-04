# Third-party notices and provenance

本仓库保存第三方 Skill 的快照。原作者保留各自版权；根目录的 MIT License 只覆盖本仓库自行编写的文档与脚本。

| 仓库内容 | 上游 | 上游路径 | 许可证 | 原始安装方式 |
|---|---|---|---|---|
| 16 个 OpenAI curated Skill | `openai/skills` | `skills/.curated/<skill-name>` | 各目录内 `LICENSE.txt` | `skill-installer` 从 GitHub 安装 |
| `find-skills` | `vercel-labs/skills` | `skills/find-skills` | MIT | `skill-installer --repo vercel-labs/skills --path skills/find-skills` |
| `frontend-design` | `anthropics/skills` | `skills/frontend-design` | Apache-2.0，见目录内 `LICENSE.txt` | `skill-installer --repo anthropics/skills --path skills/frontend-design --method git` |
| `impeccable` 4.8.0 | `pbakaus/impeccable` | `.agents/skills/impeccable` | Apache-2.0，见目录内 `LICENSE`；保留上游 `NOTICE.md` | `skill-installer --repo pbakaus/impeccable --ref 5af4319c4e7a7ee3e5e2b9fe899bcfb21c6190cb --path .agents/skills/impeccable` |
| `react-joyride` | `gilbarbara/react-joyride` | `skills/react-joyride` | MIT | `skill-installer --repo gilbarbara/react-joyride --path skills/react-joyride --method git` |
| `ux-heuristics` | `wondelai/skills` | `ux-heuristics` | MIT | `skill-installer --repo wondelai/skills --path ux-heuristics` |
| `visual-design-foundations` | `wshobson/agents` | `plugins/ui-design/skills/visual-design-foundations` | MIT | `skill-installer --repo wshobson/agents --path plugins/ui-design/skills/visual-design-foundations` |
| 26 个 Lark Skill | `larksuite/cli` | `skills/<skill-name>` | MIT | Skills CLI 安装；来源记录见原环境 `.agents/.skill-lock.json` |

`skill-installer` 指：

```bash
python3 ~/.codex/skills/.system/skill-installer/scripts/install-skill-from-github.py
```

上游链接：

- https://github.com/openai/skills
- https://github.com/vercel-labs/skills
- https://github.com/anthropics/skills
- https://github.com/pbakaus/impeccable
- https://github.com/gilbarbara/react-joyride
- https://github.com/wondelai/skills
- https://github.com/wshobson/agents
- https://github.com/larksuite/cli

MIT 许可证副本：

- `licenses/vercel-labs-skills-MIT.txt`
- `licenses/gilbarbara-react-joyride-MIT.txt`
- `licenses/wondelai-skills-MIT.txt`
- `licenses/wshobson-agents-MIT.txt`
- `licenses/larksuite-cli-MIT.txt`
