class CreateLitautres < ActiveRecord::Migration[6.0]
  def change
    create_table :litautres do |t|
      t.integer :nombreautre

      t.belongs_to :autre
      t.belongs_to :autrelit	
      t.timestamps
    end
  end
end
