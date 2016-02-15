class AddCompanyIdToDesigns < ActiveRecord::Migration
  def change
    add_column :designs, :company_id, :integer
  end
end
