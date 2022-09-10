# frozen_string_literal: true

module Types
  class PostType < Types::BaseObject
    field :title, String
    field :rating, Integer
  end

  class CommentType < Types::BaseObject
    field :id, ID, null: false
    field :post, PostType, null: false
  end
end
