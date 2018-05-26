class Api::V1::PortfolioSerializer < ActiveModel::Serializer
  #attributes(*Portfolio.attribute_names.map(&:to_sym))
  attributes :id, :title, :subtitle, :body, :main_image, :thumb_image

  has_many :technologies
end
