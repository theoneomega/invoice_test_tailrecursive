class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :unit_price, :precision => 8, :scale => 2
      t.decimal :quantity, :precision => 8, :scale => 2
      t.decimal :total, :precision => 8, :scale => 2
      t.references :invoice, foreign_key: true
      t.timestamps
    end
  end
end
