# frozen_string_literal: true

# == Schema Information
#
# Table name: lists
#
#  id         :uuid             not null, primary key
#  name       :string           not null
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :uuid             not null
#
# Indexes
#
#  index_lists_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class List < ApplicationRecord
  belongs_to :user
  has_many  :items, dependent: :destroy
end
