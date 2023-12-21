class CreateKtFavorites < ActiveRecord::Migration[7.1]
  def change
    create_table :kt_favorites do |t|
      t.references :kt_user, null: false, foreign_key: true
      t.references :kt_experience, null: false, foreign_key: true

      t.timestamps
    end
  end
end
