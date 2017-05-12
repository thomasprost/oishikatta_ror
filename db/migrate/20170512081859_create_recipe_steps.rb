class CreateRecipeSteps < ActiveRecord::Migration[5.0]
  def change
    create_table :recipe_steps do |t|
      t.text :instruction
      t.string :image
      t.integer :order
    end
  end
end
