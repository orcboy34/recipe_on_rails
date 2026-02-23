module ApplicationHelper
  def fa_icon(icon_name, options = {})
    # Default to solid style unless specified
    style = options.delete(:style) || "fa-solid"
    classes = [ style, "fa-#{icon_name}", options.delete(:class) ].compact.join(" ")

    content_tag(:i, nil, options.merge(class: classes))
  end
end
