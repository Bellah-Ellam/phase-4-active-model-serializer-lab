class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :author, :tags

  def author
    {
      name: object.author.name
    }
  end

  def tags
    object.tags.map(&:name)
  end
end
