#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
CODEX_SKILL_TARGET="${CODEX_SKILL_TARGET:-${CODEX_HOME:-$HOME/.codex}/skills}"
AGENT_SKILL_TARGET="${AGENT_SKILL_TARGET:-$HOME/.agents/skills}"

install_group() {
  local source_dir="$1"
  local target_dir="$2"
  local installed=0
  local skipped=0

  mkdir -p "$target_dir"

  for skill_dir in "$source_dir"/*; do
    [[ -d "$skill_dir" && -f "$skill_dir/SKILL.md" ]] || continue
    local skill_name
    skill_name="$(basename "$skill_dir")"

    if [[ -e "$target_dir/$skill_name" ]]; then
      printf 'skip     %s (already exists)\n' "$skill_name"
      skipped=$((skipped + 1))
      continue
    fi

    cp -R "$skill_dir" "$target_dir/$skill_name"
    printf 'install  %s -> %s\n' "$skill_name" "$target_dir/$skill_name"
    installed=$((installed + 1))
  done

  printf 'summary  %s installed, %s skipped in %s\n' "$installed" "$skipped" "$target_dir"
}

install_group "$REPO_DIR/codex-skills" "$CODEX_SKILL_TARGET"
install_group "$REPO_DIR/agent-skills" "$AGENT_SKILL_TARGET"

printf 'Done. Open a new Codex task to reload the Skill catalog.\n'
