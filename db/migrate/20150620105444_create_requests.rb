class CreateRequests< ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :business_name
      t.integer :number_of_employees
      t.string :phone
      t.references :user
      t.hstore :details, default: '', null: false

      t.timestamps null: false
    end
  end
end
