# frozen_string_literal: true

# == Schema Information
#
# Table name: items
#
#  id          :uuid             not null, primary key
#  description :text
#  image       :string
#  name        :string
#  position    :integer          default(0)
#  url         :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  list_id     :uuid             not null
#
# Indexes
#
#  index_items_on_list_id  (list_id)
#
# Foreign Keys
#
#  fk_rails_...  (list_id => lists.id)
#
class Item < ApplicationRecord
  belongs_to :list
  auto_increment :position, scope: [ :list_id ] 
end
