class BearSerializer < ActiveModel::Serializer
	attributes :id, :bear_type, :description, :favorite_foods
end