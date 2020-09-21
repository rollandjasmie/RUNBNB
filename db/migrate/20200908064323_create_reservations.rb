class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.string :start_date
      t.string :end_date
      t.belongs_to :logement
      t.timestamps
    end
  end
end
