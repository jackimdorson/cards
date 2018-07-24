class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.integer :card_id
      t.text :title
      t.text :author

      t.timestamps
    end
  end
end
