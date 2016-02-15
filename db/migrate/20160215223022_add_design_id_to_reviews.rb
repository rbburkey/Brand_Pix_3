class AddDesignIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :design_id, :integer
  end
end
