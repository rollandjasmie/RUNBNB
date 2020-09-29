class AddArrive2ToDepartarrives < ActiveRecord::Migration[6.0]
  def change
    add_column :departarrives, :arrive2, :string
    add_column :departarrives, :depart2, :string
  end
end
