class CreateLits < ActiveRecord::Migration[6.0]
  def change
    create_table :lits do |t|
    	t.string :title

    	t.belongs_to :chambre, index: true    	
      t.timestamps
    end
  end
end
