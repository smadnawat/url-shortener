class TrackUrl < ApplicationRecord
	validates_presence_of :redirect_url
	validates_format_of :redirect_url, with: /https?:\/\/[\S]+/, message: "Invalid URL, Must contain http."

	scope :valid, -> {where("date(created_at) > ?", 1.month.ago)}

	def is_active?
		(created_at + 30.days) > Time.now
	end
end
