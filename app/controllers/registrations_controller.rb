class RegistrationsController < Devise::RegistrationsController

  def profile
    @user = User.find(params[:id])
  end

  def create
    raise
    @date = Time.now
    @date.strftime("%B %d, %Y")
    @weeks_to_live = 2
    @current_week = 1
    @year = Time.now
    @year = @year.strftime("%Y")
    # :birthday = :birthday + @current_week * 7
    (0..@weeks_to_live).each do  |week|
      current_user.weeks << Week.new(mood: 0, significance: 3, journal: "text", week_number: @current_week, year: @year)
    end
  end


private

    def sign_up_params
      params.require(:user).permit(:username, :first_name, :last_name, :birthday, :weeks_to_live, :email, :password, :password_confirmation)
    end

    def account_update_params
      params.require(:user).permit(:username, :first_name, :last_name, :email, :password, :password_confirmation, :current_password)
    end
end
