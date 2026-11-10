# Changelog

## [0.1.0] - 2026-11-10

### Changed
- Redmine 5.x / 6.x に対応（Redmine 5.0 以上が必須）
- `require_dependency` を廃止し、Zeitwerk の自動ロードでフックを登録するように変更（Zeitwerk 環境で LoadError になる問題を修正）
- CSS / JS の読み込みを `view_layouts_base_html_head` フックに移動
- サイドバーの表示切り替えを `#content` の幅直書きから `#main.nosidebar` クラスの切り替えに変更（flex レイアウトの崩れを解消）
- 未使用の `getCookie` を削除
- Cookie を `encodeURIComponent` / `SameSite=Lax` で保存するように変更

### Added
- モバイル表示（幅 899px 以下）ではボタンを非表示
- ボタンのキーボード操作（Enter / Space）に対応
- lint 用の Makefile
