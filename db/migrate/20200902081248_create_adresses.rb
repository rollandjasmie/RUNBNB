class CreateAdresses < ActiveRecord::Migration[6.0]
  def change
    create_table :adresses do |t|
    	t.string :pays
    	t.string :adresse1, array: true, default: []
    	t.integer :code
    	t.string :ville, array: true, default: []

    	t.belongs_to :logement, index: true
      t.timestamps
    end
  end
end
