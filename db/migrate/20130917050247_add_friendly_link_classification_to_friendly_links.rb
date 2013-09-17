class AddFriendlyLinkClassificationToFriendlyLinks < ActiveRecord::Migration
  def change
    add_column :friendly_links, :friendly_link_classification_id, :integer
  end
end
