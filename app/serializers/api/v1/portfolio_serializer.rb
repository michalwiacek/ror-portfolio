class Api::V1::PortfolioSerializer < ActiveModel::Serializer
  attributes(*Portfolio.attribute_names.map(&:to_sym))

  has_many :technologies
end