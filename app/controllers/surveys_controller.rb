class SurveysController < ApplicationController

  def index
   @surveys = current_user.surveys
  end

  def new
    @survey = Survey.new
  end

  def create
    # session[:current_user_id]
    # current_user
    survey = Survey.create(params[:survey].merge(:author => current_user))
    redirect_to user_path(current_user)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
