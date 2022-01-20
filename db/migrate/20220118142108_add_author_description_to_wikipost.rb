class AddAuthorDescriptionToWikipost < ActiveRecord::Migration[6.1]
  def change
    add_column :wikiposts, :description, :string
    add_column :wikiposts, :author, :string
  end
end
