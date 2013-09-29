class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :type
      t.string :user_phone_id
      t.text :user_location
      t.string :sender
      t.string :receiver
      t.text :message
      t.text :map_location

      t.timestamps
    end
  end
end
