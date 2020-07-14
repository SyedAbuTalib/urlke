class ChangeLinksToUniq < ActiveRecord::Migration[6.0]
  def change
    change_column :links, :short_link, :string, unique: true
  end
end
