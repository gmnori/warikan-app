class CreateWarikanmodels < ActiveRecord::Migration[5.0]
  def change
    create_table :warikanmodels do |t|
      t.string :title
      t.boolean :done, default: false

      t.timestamps
    end
end
