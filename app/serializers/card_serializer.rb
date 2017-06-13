class CardSerializer < ActiveModel::Serializer
  attributes :id, :user, :website, :email, :password
end
