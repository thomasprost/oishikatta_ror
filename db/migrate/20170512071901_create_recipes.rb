class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :intro
      t.string :main_image
      t.integer :number_people
      t.integer :minutes
      t.string :link


      t.timestamps
    end
  end
end
