class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :website
      t.string :facebook
      t.string :twitter
      t.string :google
      t.string :yelp
      t.string :bbb
      t.text :description
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
