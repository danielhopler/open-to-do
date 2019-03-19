class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :lists

  def username
    object.username
  end



end
