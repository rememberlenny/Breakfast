class MeetingsController < ApplicationController
  def index
    @users = User.all
    early  = []
    middle = []
    late   = []

    @users.each do |user|
      if user.tod_morning_early == 1
        @early << user
      end
      if user.tod_morning_middle == 1
        @middle << user
      end
      if user.tod_morning_late == 1
        @late << user
      end
    end
  end

  def show
  end
end
