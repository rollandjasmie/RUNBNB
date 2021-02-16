class CreateAutrelits < ActiveRecord::Migration[6.0]
  def change
    create_table :autrelits do |t|
      t.string :title

      t.belongs_to :autre ,index: true
      t.timestamps
    end
  end
end
