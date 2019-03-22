class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at, :completed
  belongs_to :list


  def name
    object.name
  end

  def created_at
    object.created_at.strftime('%b %e, %l:%M %p')
  end

  def completed
    object.completed
  end

end
