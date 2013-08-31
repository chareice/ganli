class ChangeDefalutValueOfStatusInDocuments < ActiveRecord::Migration
  def change
  	change_column_default :documents,:status,0
  end
end
