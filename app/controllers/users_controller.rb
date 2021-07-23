class UsersController<ApplicationController
def index
  @users = User.all
end

def new
  @user = User.new
end

def create
    @user = User.new(name: params[:user][:name], address: params[:user][:address])
    if @user.save
      redirect_to users_path
    else
      render 'new'
    end
 end

 def show
   @users = User.find(params[:id])
 end

def edit
  @user = User.find(params[:id])
end

def update
  @user = User.find(params[:id])
  if @user.update(name: params[:user][:name], address: params[:user][:address])
    redirect_to users_path
  else
    render 'edit'
  end
end

def destroy
  @user = User.find(params[:id])
  @user.destroy
  redirect_to users_path
end


end
