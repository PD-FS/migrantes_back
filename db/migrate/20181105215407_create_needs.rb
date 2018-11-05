class CreateNeeds < ActiveRecord::Migration[5.1]
  def change
    create_table :needs do |t|
      t.string :Description
      t.integer :request_element
      t.integer :given_element
      t.boolean :is_complete
      t.references :donation_category_id, foreign_key: true
      t.references :enterprise_id, foreign_key: true

      t.timestamps
    end
  end
end
