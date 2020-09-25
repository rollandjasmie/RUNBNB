class CreateLitChambres < ActiveRecord::Migration[6.0]
  def change
    create_table :lit_chambres do |t|
      t.integer :number
	  t.belongs_to :lit
	  t.belongs_to :chambre	
      t.timestamps
    end
  end
end
