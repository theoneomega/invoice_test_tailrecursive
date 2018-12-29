class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.decimal :amount, :precision => 8, :scale => 2
      t.string :uuid, limit: 36
      t.boolean :paid, default: false

      t.timestamps
    end
  end
end
