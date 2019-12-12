class WeightlogSerializer < ActiveModel::Serializer
  attributes :id, :weight, :date, :editable
  belongs_to :pet

  def editable
    # TODO: changed from user to pet, see if OK
    scope == object.pet
  end
end
