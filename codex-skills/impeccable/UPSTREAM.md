# Impeccable provenance and recovery

- Upstream: https://github.com/pbakaus/impeccable
- Upstream path: `.agents/skills/impeccable`
- Snapshot commit: `5af4319c4e7a7ee3e5e2b9fe899bcfb21c6190cb`
- Skill version: 4.8.0
- Engine version pinned by `scripts/VERSION`: 0.1.18
- Added: 2026-11-05
- License: Apache-2.0; root upstream `LICENSE` and `NOTICE.md` are included alongside the complete skill directory. The MIT license named by the upstream notice is preserved in `licenses/platform-design-skills-MIT.txt`, retrieved from https://github.com/ehmo/platform-design-skills/blob/main/LICENSE on 2026-11-05.
- Local packaging: preserved launcher executable permission and added this provenance file; no hooks, project context, runtime cache, or engine binary is included.

Install the snapshot through this repository's `scripts/install.sh`, or recover the same upstream source with the Codex installer:

```sh
python3 ~/.codex/skills/.system/skill-installer/scripts/install-skill-from-github.py \
  --repo pbakaus/impeccable \
  --ref 5af4319c4e7a7ee3e5e2b9fe899bcfb21c6190cb \
  --path .agents/skills/impeccable
chmod +x ~/.codex/skills/impeccable/scripts/impeccable
~/.codex/skills/impeccable/scripts/impeccable engine-probe
```

The installer skips/aborts for an existing destination; review existing content before updating. The first engine run downloads a platform-specific binary into the user cache and verifies it against the bundled checksums. A skill-only installation does not enable hooks. Use `$impeccable audit` for technical checks and `$impeccable polish` for refinement in a subsequent Codex turn.
