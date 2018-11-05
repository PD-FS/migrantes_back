class CreateDonationCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :donation_categories do |t|
      t.string :name
      t.string :icon
      t.references :donation_kind_id, foreign_key: true

      t.timestamps
    end
  end
end
