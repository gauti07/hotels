class CreateTickers < ActiveRecord::Migration
  def change
    create_table :tickers do |t|
      t.text :title
      t.string :content
      t.boolean :published

      t.timestamps
    end
  end
end
