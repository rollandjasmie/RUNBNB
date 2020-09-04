class CreateReglelogs < ActiveRecord::Migration[6.0]
  def change
    create_table :reglelogs do |t|
    	t.belongs_to :logement
    	t.belongs_to :regle
      t.timestamps
    end
  end
end
