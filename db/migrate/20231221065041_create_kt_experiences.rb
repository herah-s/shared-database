class CreateKtExperiences < ActiveRecord::Migration[7.1]
  def change
    create_table :kt_experiences do |t|
      t.string :name
      t.text :description
      t.float :price
      t.string :category
      t.string :address
      t.references :host, null: false, foreign_key: true

      t.timestamps
    end
  end
end
