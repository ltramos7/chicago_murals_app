class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :first_name
      t.string :last_name
      t.string :alias
      t. timestamps null: false
    end
  end
end
