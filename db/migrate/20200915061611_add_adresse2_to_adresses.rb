class AddAdresse2ToAdresses < ActiveRecord::Migration[6.0]
  def change
    add_column :adresses, :adresse2, :string
  end
end
