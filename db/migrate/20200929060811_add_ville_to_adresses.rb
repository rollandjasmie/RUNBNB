class AddVilleToAdresses < ActiveRecord::Migration[6.0]
  def change
    add_column :adresses, :ville1, :string
  end
end
