class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.string :style
      t.string :hop
      t.string :yeast
      t.string :malts
      t.string :ibu
      t.string :alcohol
      
      t.timestamps null: false
    end
  end
end
