class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :editable
  belongs_to :user
  has_many :weightlogs
  
  def editable
    scope == object.user
  end
end
