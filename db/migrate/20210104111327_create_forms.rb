class CreateForms < ActiveRecord::Migration[6.0]
  def change
    create_table :forms do |t|
      t.string :genre
      t.string :address_departure
      t.string :address_destination
      t.string :delay
      t.string :reason
      t.references :user, foreign_key: true
      t.boolean :status, default: false

      t.timestamps
    end
  end
end
