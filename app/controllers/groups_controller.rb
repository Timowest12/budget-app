# helper class
class GroupsController < ApplicationController
  def index
    @groups = Group.where(user_id: current_user.id)
  end

  def show
    @user = User.where(user_id: current_user.id)
    @group = Group.find(params[:id])
    @group_spendings = @group.spendings.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = current_user.groups.create(group_params)
    if @group.save
      flash[:notice] = 'Category Created!'
      redirect_to root_path
    else
      render :new

    end
  end

  def destroy; end

  def group_params
    params.require(:group).permit(:Name, :Icon)
  end
end
