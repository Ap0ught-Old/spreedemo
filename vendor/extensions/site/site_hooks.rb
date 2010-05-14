class SiteHooks < Spree::ThemeSupport::HookListener
  remove :sidebar 
  insert_after :inside_head do
    "<%= javascript_include_tag 'site' %>"
    "<%= stylesheet_link_tag 'flags' %>"
  end
end
