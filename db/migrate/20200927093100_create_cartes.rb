class CreateCartes < ActiveRecord::Migration[6.0]
  def change
    create_table :cartes do |t|
      t.float :longitude
      t.float :latitude


      t.belongs_to :logement, index: true
      t.timestamps
    end
  end
end
