class CreateSaloncanapes < ActiveRecord::Migration[6.0]
  def change
    create_table :saloncanapes do |t|
    	t.integer :nombresalon
    	t.belongs_to :salon
    	t.belongs_to :canape
      t.timestamps
    end
  end
end
