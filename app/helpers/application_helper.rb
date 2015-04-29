module ApplicationHelper

  # Returns the full title
  def full_title(page_title = '')
    base_title = "2readApp"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title} "
    end
  end
end
