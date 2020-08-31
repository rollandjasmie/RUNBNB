class CreateInformation < ActiveRecord::Migration[6.0]
  def change
    create_table :information do |t|
      t.string :chambre1
      t.integer :nombre1
      t.string :chambre2
      t.integer :nombre2
      t.string :salon
      t.integer :nombre3
      t.string :autre
      t.integer :nombre4

      t.belongs_to :logement, index: true
      t.timestamps
    end
  end
end
