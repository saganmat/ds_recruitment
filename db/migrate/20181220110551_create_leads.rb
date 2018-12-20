class CreateLeads < ActiveRecord::Migration[5.2]
  def change
    create_table :leads do |t|
      t.json :raw_data
      t.string :uid
      t.string :address
      t.string :timestamps

      t.timestamps
    end
  end
end
