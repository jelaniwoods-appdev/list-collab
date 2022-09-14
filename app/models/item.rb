# frozen_string_literal: true

# == Schema Information
#
# Table name: items
#
#  id          :uuid             not null, primary key
#  description :text
#  image       :string
#  name        :string
#  position    :integer
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
  acts_as_list scope: :list
  # auto_increment :position, scope: [:list_id]

  def youtube_embed
    yt_id = url.split('?v=').last
    <<~HTML
      <iframe width="560" height="315" src="https://www.youtube.com/embed/#{yt_id}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    HTML
  end
end
