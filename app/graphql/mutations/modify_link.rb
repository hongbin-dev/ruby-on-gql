module Mutations
  class ModifyLink < BaseMutation
    argument :id, ID, required: true
    argument :description, String, required: true
    argument :url, String, required: true

    type Types::LinkType

    def resolve(id: nil, description: nil, url: nil)
      link = Link.find(id)
      link.update!(description: description, url: url)

      # 필수
      link
    end
  end
end