class ApplicationController < ActionController::API
    include ActionController::Cookies
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    before_action :authorize

    def authorize 
        return render json: {error: "You are not logged in"}, status: :unauthorized unless current_user
    end

    def current_user
        User.find_by(id: session[:user_id])
    end

    private

    def render_unprocessable_entity(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
