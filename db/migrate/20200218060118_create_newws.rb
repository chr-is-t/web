class CreateNewws < ActiveRecord::Migration
  def change
    create_table :newws do |t|
      t.string :name
      t.text :address

      t.timestamps null: false
    end
  end
end
