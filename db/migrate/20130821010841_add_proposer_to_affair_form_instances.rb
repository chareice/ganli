class AddProposerToAffairFormInstances < ActiveRecord::Migration
  def change
    add_column :affair_form_instances, :proposer, :integer
  end
end
