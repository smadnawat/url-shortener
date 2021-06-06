class CreateTrackUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :track_urls do |t|
      t.string :url
      t.text :redirect_url
      t.integer :clicks
      t.string :ip_address
      t.string :country

      t.timestamps
    end
  end
end
