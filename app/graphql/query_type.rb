class QueryType < GraphQL::Schema::Object
  field :post, PostType, "Find a post by Id" do
    argument :id, ID
  end

  def post(id:)
    Post.find(id)
  end
end
