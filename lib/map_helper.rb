module MapHelper

  def address_link(link_text = nil, address)
    link_text ||= address
    # While we could use the following:
    #   "[#{address}](#{map_url(address)})"
    # it is more desirable to have a target=_blank, which pure markdown
    # cannot provide.
    "<a href='#{map_url(address)}' target='_blank'>#{link_text}</a>"
  end


private

  def map_url(address)
    "https://www.google.com/maps?q=#{address}"
  end

end
