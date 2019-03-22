class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :created_at
  has_many :lists

  def username
    object.username
  end

  def created_at
    object.created_at.strftime('%b %e, %l:%M %p')
  end



end
