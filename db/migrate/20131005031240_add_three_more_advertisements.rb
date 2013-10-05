class AddThreeMoreAdvertisements < ActiveRecord::Migration
  def change
    Advertisement.create(name: "Bulls", url: "http://www.nba.com/bulls/splash-2013-14-ticket-presale")
    Advertisement.create(name: "Thunder", url: "http://www.nbathundershop.com")
    Advertisement.create(name: "Lakers", url: "http://www.nba.com/lakers/")
  end
end
