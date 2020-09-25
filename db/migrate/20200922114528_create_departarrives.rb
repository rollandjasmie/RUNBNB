class CreateDepartarrives < ActiveRecord::Migration[6.0]
  def change
    create_table :departarrives do |t|
      t.string :depart
      t.string :arrive

      t.timestamps
    end
  end
end
