class ListSerializer < ActiveModel::Serializer
  attributes :id, :title, :private, :created_at, :user_id
  belongs_to :user
  has_many :items

  def title
    object.title
  end

  def created_at
    object.created_at.strftime('%b %e, %l:%M %p')
  end

end
