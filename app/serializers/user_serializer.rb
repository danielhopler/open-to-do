class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password
  has_many :lists

  def name
    object.name
  end

  def email
    object.email
  end

  def password
    object.password
  end

end
