class AddColumnWarikanCalc < ActiveRecord::Migration[5.0]
  def change
    add_column :warikanmodels, :totalAmount, :integer
    add_column :warikanmodels, :maleHeadcount1, :integer
    add_column :warikanmodels, :maleHeadcount2, :integer
    add_column :warikanmodels, :maleHeadcount3, :integer
    add_column :warikanmodels, :femaleHeadcount1, :integer
    add_column :warikanmodels, :femaleHeadcount2, :integer
    add_column :warikanmodels, :femaleHeadcount3, :integer
    add_column :warikanmodels, :totalHeadcount, :integer
    add_column :warikanmodels, :subtotalHeadcount1, :integer
    add_column :warikanmodels, :subtotalHeadcount2, :integer
    add_column :warikanmodels, :subtotalHeadcount3, :integer
    add_column :warikanmodels, :subtotalAmount1, :integer
    add_column :warikanmodels, :subtotalAmount2, :integer
    add_column :warikanmodels, :subtotalAmount3, :integer
    add_column :warikanmodels, :maleAmount1, :integer
    add_column :warikanmodels, :maleAmount2, :integer
    add_column :warikanmodels, :maleAmount3, :integer
    add_column :warikanmodels, :femaleAmount1, :integer
    add_column :warikanmodels, :femaleAmount2, :integer
    add_column :warikanmodels, :femaleAmount3, :integer
  end
end
