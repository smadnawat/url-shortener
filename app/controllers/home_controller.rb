class HomeController < ApplicationController
	http_basic_authenticate_with name: "admin", password: "password", only: [:stats]

  def index
  end

  def stats
  	@track_urls = TrackUrl.order("created_at desc").paginate(page: params[:page], per_page: 7)
  end

  def short
  	ip = request.remote_ip
  	country = Geocoder.search(ip).first.country
		url = SecureRandom.alphanumeric(5)
  	@track_url = TrackUrl.new(url: url, redirect_url: params[:redirect_url], ip_address: ip, country: country)
  	@track_url.save
  end

  def page_redirect
  	@track_url = TrackUrl.valid.where(url: params[:code]).last
  	if @track_url
  		@track_url.increment!(:clicks)
  		redirect_to @track_url.redirect_url
  	else
  		render :file => "#{Rails.root}/public/404", :layout => false, :status => :not_found
  	end
  end
end
