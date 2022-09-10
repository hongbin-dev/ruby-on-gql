module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :create_link, mutation: Mutations::CreateLink
    field :modify_link, mutation: Mutations::ModifyLink
  end
end
