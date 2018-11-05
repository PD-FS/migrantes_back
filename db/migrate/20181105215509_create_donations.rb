class CreateDonations < ActiveRecord::Migration[5.1]
  def change
    create_table :donations do |t|
      t.reference :need_id
      t.reference :user_id
      t.integer :donate
      t.date :date_donation

      t.timestamps
    end
  end
end
