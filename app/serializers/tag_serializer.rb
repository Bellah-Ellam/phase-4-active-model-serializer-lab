class TagSerializer < ActiveModel::Serializer
  attributes :name, :posts

  def posts
    object.posts.map { |post| { title: post.title, content: post.content } }
  end
end
