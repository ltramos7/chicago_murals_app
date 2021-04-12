class Aesthetes < ActiveRecord::Migration[6.1]
  def change
    create_table :aesthetes do |t|
      t.string :first_name
      t.string :last_name
      t.timestamps null: false
    end
  end
end
