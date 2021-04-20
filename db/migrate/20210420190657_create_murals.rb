class CreateMurals < ActiveRecord::Migration[6.1]
  def change
    create_table :murals do |t|
      t.string :title
      t.string :artist
      t.string :location
      t.timestamps null:false
    end
  end
end
