module ApplicationHelper
  def nav_link_class(path)
    'nav-link' + (' active' if current_page?(path)).to_s
  end

  def nav_lang_class(locale)
    'nav-link nav-lang' + (' active' if I18n.locale == locale).to_s
  end
end
