class MealsController < ApplicationController
  before_action :set_user, only: [:edit, :update]


  # GET /users/:id/edit
  def edit
    # authorize! :update, @user
  end

  # PATCH/PUT /users/:id.:format
  def update
    # authorize! :update, @user
      if @user.update(user_params)
        sign_in(@user == current_user ? @user : current_user, :bypass => true)
        redirect_to meals_url, notice: 'Your profile was successfully updated.'
      else
        render action: 'edit'
      end
  end

  private
    def set_user
      @user = User.find(current_user.id)
    end

    def user_params
      accessible = [ :tod_morning_early, :tod_morning_middle, :tod_morning_late, :dow_monday, :dow_tuesday, :dow_wednesday, :dow_thursday, :dow_friday, :dow_saturday, :dow_sunday ]
      params.require(:user).permit(accessible)
    end

end
