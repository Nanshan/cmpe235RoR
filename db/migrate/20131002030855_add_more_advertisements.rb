class AddMoreAdvertisements < ActiveRecord::Migration
  def change
    Advertisement.create(name: "Heat", url: "http://www.nba.com/heat/")
    Advertisement.create(name: "Warriors", url: "http://www.nba.com/warriors/")
  end
end
