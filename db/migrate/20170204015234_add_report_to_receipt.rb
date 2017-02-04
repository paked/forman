class AddReportToReceipt < ActiveRecord::Migration[5.0]
  def change
    add_reference :receipts, :report, foreign_key: true
  end
end
