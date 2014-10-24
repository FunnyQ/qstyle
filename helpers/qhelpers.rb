module Qhelpers


  # set links for navi, adding .active class to current item
  def nav_link(link_text, url, options = {})
    options[:class] ||= ""
    options[:class] << " active" if url == current_page.url
    link_to(link_text, url, options)
  end

  # set page title
  def page_title
    # default title here
    title = "Q.Style Template"

    if data.page.title
      title = data.page.title
    end

    title
  end

  # set page description
  def page_description
    # default description here
    description = "A middleman template"

    if data.page.description
      description = data.page.description
    end

    description
  end

end
