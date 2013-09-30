class AddEventAssociationToAdvertisement < ActiveRecord::Migration
  def change
    change_table :events do |t|
      t.belongs_to :advertisement
    end
  end
end
