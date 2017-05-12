class StaticPagesController < ApplicationController
  def home
  	@companies = Company.where("address NOT LIKE '<brak>'")
    @hash = Gmaps4rails.build_markers(@companies) do |company, marker|
      if company.address != nil
        marker.lat company.latitude
        marker.lng company.longitude
        marker.infowindow (
            "<a href='/companies/" + company.id.to_s + "'>" +
            company.name + "</a> - " + company.address
          )
      end
    end
  end
end
