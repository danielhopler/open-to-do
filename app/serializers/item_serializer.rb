class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name
  belongs_to :list


  def name
    object.name
  end
end
