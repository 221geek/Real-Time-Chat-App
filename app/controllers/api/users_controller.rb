module Api
    class UsersController < ApiController

        def show
            render json: true
        end

        def create
            @new_user = User.new(user_params)

            if @new_user.save
                render json: @new_user, serializer: UserSerializer, status: :created
            else
                render json: @new_user.errors, status: :forbidden
            end
        end

        private
        def user_params
            params.require(:user).permit(:first_name, :last_name, :email, :password)
        end
    end
end