class SidebarHookListener < Redmine::Hook::ViewListener
  render_on :view_layouts_base_html_head, :partial => 'sidebar/html_head'
  render_on :view_layouts_base_content, :partial => 'sidebar/hideButton_partial'
end
