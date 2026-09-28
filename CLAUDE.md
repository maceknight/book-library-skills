# book-library-skills

読んだ本の知識を蓄えるClaude Skill群のリポジトリ。Skill本体は `skills/`。
`.claude/skills/` は `skills/` へのリンクなので、このリポジトリで開いたセッションでは6つのSkillがそのまま使える。

## 本の取り込みを頼まれたら

ユーザーがKindleのハイライトや読書メモを貼ったら、`skills/book-core/references/ingestion.md` の手順で取り込む。
終わったら、変更をコミットして push し、claude.ai に入れ直す必要があるSkill（変更のあったSkill）をユーザーに伝える。
`.skill` ファイルが必要なら `./scripts/package.sh` で `dist/` に作る。

## 構成を変えるとき

Skillの分け方・知識の置き場所・サブSkillへの分割基準は `skills/book-core/SKILL.md` にある。構成を変えたら README.md も更新する。
