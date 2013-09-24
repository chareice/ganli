# == Schema Information
#
# Table name: messages
#
#  id         :integer          not null, primary key
#  sender     :integer
#  receiver   :integer
#  content    :text
#  atachment  :string(255)
#  status     :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Message do
  pending "add some examples to (or delete) #{__FILE__}"
end
