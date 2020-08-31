class AddIndexToAutre < ActiveRecord::Migration[6.0]
  def change
  	add_reference :adresses, :logement, foreign_key: true
  end
end
