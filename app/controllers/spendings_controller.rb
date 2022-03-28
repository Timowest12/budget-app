class SpendingsController < ApplicationController
  def new
    @user = User.find(current_user.id)

    @group = Group.find(params[:group_id])
    @spending = Spending.new
  end

  def create
    @group = Group.find(params[:group_id])
    @spendings = @group.spendings.create(name: spending_params[:name], amount: spending_params[:amount],
                                         user_id: current_user.id, group_id: @group.id)
    if @spendings.save
      flash[:notice] = 'Spending Created!'
      redirect_to group_path(@group)
    else
      render :new
    end
  
  end

  def destroy
  end

  def spending_params
    params.require(:spending).permit(:name, :amount)
  end
end
