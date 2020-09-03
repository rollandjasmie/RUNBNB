class CreateRegles < ActiveRecord::Migration[6.0]
  def change
    create_table :regles do |t|
    	t.string :date

    	t.belongs_to :logement
      t.timestamps
    end
  end
end
