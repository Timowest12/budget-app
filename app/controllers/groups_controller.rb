class GroupsController < ApplicationController
  
  def index
    @groups = Group.where(user_id: current_user.id)
  end

  def show
    @groups = Group.find(params[:id])
    @group_spendings = @groups.spendings.all
  end

  def new
  end

  def create
  end

  def destroy
  end
end
