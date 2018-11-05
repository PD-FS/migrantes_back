class CreateDonationKinds < ActiveRecord::Migration[5.1]
  def change
    create_table :donation_kinds do |t|
      t.string :name

      t.timestamps
    end
  end
end
