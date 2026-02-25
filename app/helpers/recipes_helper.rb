module RecipesHelper
  def markdown(text)
    return "" if text.blank?
    # sanitize is important to prevent XSS if users provide the markdown
    markup =  Commonmarker.to_html(text)
    markdown = sanitize(markup).html_safe
    markdown
  end
end
