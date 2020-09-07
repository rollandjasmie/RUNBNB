class CreateConditions < ActiveRecord::Migration[6.0]
  def change
    create_table :conditions do |t|
    	t.string :condition

    	t.belongs_to :logement, index: true
      t.timestamps
    end
  end
end
