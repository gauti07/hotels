class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :city
      t.integer :rating
      t.string :description

      t.timestamps
    end
  end
end
