class AddDescriptionToBears < ActiveRecord::Migration
  def up
	  add_column :bears, :description, :text
  end

  def down
	  remove_column :bears
  end

end
