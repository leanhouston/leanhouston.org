module MapHelper

  def address_link(link_text = nil, address)
    link_text ||= address
    "<a href='#{map_url(address)}' target='_blank'>#{link_text}</a>"
  end


  def resource_address_link(location_name = nil, address)
    partial(:resource_address_link, locals: {
      has_name:       location_name != nil,
      location_name:  location_name,
      address:        address,
      map_url:        map_url(address)
    })
  end


private

  def map_url(address)
    "https://www.google.com/maps?q=#{address}"
  end

end
