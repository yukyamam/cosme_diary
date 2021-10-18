class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string     :name,           null: false
      t.integer    :category_id,    null: false
      t.integer    :genre_id,       null: false
      t.integer    :price
      t.date       :purchase_date
      t.date       :opening_date
      t.references :user,           null: false, foreign_key: true
      t.timestamps
    end
  end
end
