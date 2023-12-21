class CreateKtMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :kt_messages do |t|
      t.references :kt_user, null: false, foreign_key: true
      t.references :kt_booking, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
