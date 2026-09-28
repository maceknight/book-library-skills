# book-library-skills

読んだ本の知識を、Claudeが相談に使える形で蓄えるSkill群。

| Skill | 役割 |
|---|---|
| `book-core` | 共通基盤。相談の振り分け、共通ルール、分野をまたぐ共通原則、取り込み手順 |
| `book-money` | お金・投資（#1〜10、#12、#29、#37、#41） |
| `book-time-habit` | 時間・習慣・行動（#14〜17、#24、#26、#28、#30、#35、#36） |
| `book-work` | 仕事術・マネジメント（#18〜23、#25、#27、#31〜34） |
| `book-psychology` | 心理・行動経済学（#38） |
| `book-life` | 生活・メンタル（#11、#13、#39、#40、#42） |

設計の詳細は `skills/book-core/SKILL.md`。

## 本を取り込む

1. Kindleのメモページ（read.amazon.co.jp/notebook）で、読んだ本のハイライトとメモをコピーする
2. このリポジトリを開いた Claude Code のセッションに貼り、「〇〇（書名）を取り込んで」と頼む
3. Claude が `skills/book-core/references/ingestion.md` の手順で、本のノート・分野のモジュール・共通原則・蔵書一覧を更新してコミットする

## claude.ai に反映する

```bash
./scripts/package.sh   # dist/*.skill ができる
```

変更のあったSkillの `.skill` ファイルを claude.ai の設定（スキル）から入れ直す。

## 知識の置き場所

- 1冊だけの主張 → `skills/<分野>/references/books/<slug>.md`
- 分野の中で複数の本に共通する原則 → `skills/<分野>/references/modules/*.md`
- 2分野以上で使う原則 → `skills/book-core/references/principles/*.md`（分野側にはリンクだけ）
