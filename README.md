# Codex Skill Library

我的个人 Skill 备份与安装库。仓库公开保存当前环境中可再分发的 Skill，并记录由 Codex 系统或插件提供、但不适合复制进公开仓库的 Skill。

## 当前内容

- `codex-skills/`：21 个安装到 `~/.codex/skills` 的 Skill。
- `agent-skills/`：26 个安装到 `~/.agents/skills` 的飞书/Lark Skill。
- `catalog/active-skills.md`：当前会话可用的全部 80 个 Skill 条目及安装方式。
- `catalog/runtime-only-skills.md`：系统/插件运行时 Skill，以及仅存在于缓存、当前未启用的 Skill。
- `scripts/install.sh`：把仓库中的 47 个可移植 Skill 安装到本机；已有同名目录会跳过，不会覆盖。
- `THIRD_PARTY_NOTICES.md`：上游来源与许可证说明。

80 个“可用条目”中有 5 个重名实现，因此对应 75 个唯一名称。仓库实际备份 47 个可移植目录；其余 33 个由 Codex 系统或插件管理。

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

## 更新方式

仓库是一个可审查的快照，不会自动跟踪上游。更新前应先检查上游变更与许可证，再替换对应目录并更新 `THIRD_PARTY_NOTICES.md`。

Codex 系统 Skill 和插件 Skill 不应通过这个仓库更新：前者随 Codex 更新，后者由 Codex 的插件管理器更新。

## 许可证

本仓库自行编写的文档和脚本采用 MIT License。`codex-skills/` 与 `agent-skills/` 中的第三方内容仍遵循各自上游许可证；详见 `THIRD_PARTY_NOTICES.md` 和各 Skill 目录内的许可证文件。
