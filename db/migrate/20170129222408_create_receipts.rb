class CreateReceipts < ActiveRecord::Migration[5.0]
  def change
    create_table :receipts do |t|
      t.text :item_name
      t.numeric :price
      t.text :image_url

      t.timestamps
    end
  end
end
