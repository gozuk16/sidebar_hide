# TODO

## Redmine 5 / 6 対応

- [x] Redmine 5.1 / 6.0 / 6.1 のプラグインローダー・レイアウト・アセット処理を調査
- [x] `init.rb`: `require_dependency` を廃止し Zeitwerk の自動ロードでフックを登録
- [x] `init.rb`: `requires_redmine version_or_higher: '5.0'` を追加、バージョンを 0.1.0 に更新
- [x] フック: CSS/JS 読み込みを `view_layouts_base_html_head` に移動
- [x] JS: `#content` の幅直書きをやめ、`#main` の `nosidebar` クラス切り替え方式に変更
- [x] CSS: モバイル表示（〜899px）ではボタンを非表示
- [x] Makefile（lint）を作成
- [x] README / CHANGELOG を更新
- [x] コードレビュー（サブエージェント）→ Zeitwerk 方式に統一、未使用 getCookie を削除
- [x] プルリクエスト作成
