class CreateChambrequipements < ActiveRecord::Migration[6.0]
  def change
    create_table :chambrequipements do |t|
    	t.belongs_to :chambre
    	t.belongs_to :equipement
      t.timestamps
    end
  end
end
