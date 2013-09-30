class AddAdvertisements < ActiveRecord::Migration
  def change
    Advertisement.new(name: "Heat", url: "http://www.nba.com/heat/")
    Advertisement.new(name: "Warriors", url: "http://www.nba.com/warriors/")
  end
end
