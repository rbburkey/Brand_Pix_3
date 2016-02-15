class CreateDesigns < ActiveRecord::Migration
  def change
    create_table :designs do |t|
      t.string :product_name
      t.string :description

      t.timestamps null: false
    end
  end
end
