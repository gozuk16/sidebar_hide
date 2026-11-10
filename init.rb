Redmine::Plugin.register :sidebar_hide do
  name 'Sidebar Hide Plugin'
  author 'Ries Technologies'
  description 'This plugin provides ability to hide sidebar'
  version '0.1.0'
  url 'https://github.com/ries-tech/sidebar_hide'
  author_url 'https://github.com/ries-tech/sidebar_hide'

  requires_redmine version_or_higher: '5.0'
end

# Redmine 5 以降、plugins/*/lib は Zeitwerk の管理下にあり $LOAD_PATH には含まれないため
# require_dependency 'sidebar_hook_listener' は LoadError になる。
# init.rb は to_prepare 内で実行されるため、定数を参照して Zeitwerk に自動ロードさせ、
# Redmine::Hook::ViewListener の継承時にフックを登録させる。
Object.const_get(:SidebarHookListener)
