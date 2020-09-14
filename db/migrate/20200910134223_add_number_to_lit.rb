class AddNumberToLit < ActiveRecord::Migration[6.0]
  def change
    add_column :lits, :number, :integer
  end
end
