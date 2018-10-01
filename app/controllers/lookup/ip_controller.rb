class Lookup::IpController < ApplicationController
  GEO_DATA = Rails.root.join("vendor", "GeoLiteCity.dat")
  LOOKUP = GeoIP.new(GEO_DATA)

  def show
    ip = params[:id] || "127.0.0.1"
    render json: LOOKUP.city(ip).to_h, content_type: :json
  end
end
