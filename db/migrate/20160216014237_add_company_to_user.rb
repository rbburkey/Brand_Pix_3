class AddCompanyToUser < ActiveRecord::Migration
  def change
    add_column :users, :company, :boolean, default: false
  end
end
