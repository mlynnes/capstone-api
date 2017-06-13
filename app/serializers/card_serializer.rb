class CardSerializer < ActiveModel::Serializer
  attributes :id, :website, :email, :password
end
