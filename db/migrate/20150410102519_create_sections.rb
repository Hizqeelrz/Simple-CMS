class CreateSections < ActiveRecord::Migration

	# "change" runs the command as given when migrating "up",
	# runs the reverse command as given when migrating "down",
	# only works if all commands are reversible.
	# For example:
	# 	add_column can be reversed as removed_column,
	# 	it has all info removed_column needs
	# 	removed_column can't be reversed to add_column
	# 	it doesn't have column definition add_column needs
  def change
    create_table :sections do |t|
    	t.integer "page_id"
    	# same_as: t.references :page //used same as above
    	t.string "name"
    	t.integer "position"
    	t.boolean "visible", :default => false
    	t.string "content_type"
    	t.text "content"
      t.timestamps null: false
    end
    add_index("sections", "page_id")
  end
end
