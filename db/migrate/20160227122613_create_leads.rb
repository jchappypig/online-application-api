class CreateLeads < ActiveRecord::Migration[5.0]
  def change
    create_table :leads do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :mobile
      t.string :phone
      t.string :gender
      t.string :interests

      t.timestamps
    end
  end
end
