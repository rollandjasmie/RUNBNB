class CreateRegles < ActiveRecord::Migration[6.0]
  def change
    create_table :regles do |t|
    	t.string :title

      t.timestamps
    end
  end
end
