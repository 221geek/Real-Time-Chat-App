module Api
    class UserSerializer < ActiveModel::Serializer
        attributes :id, :first_name, :last_name, :username, :email, :is_online, :last_seen
    end
end