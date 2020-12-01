class HobbiesController < ApplicationController
  before_action :authenticate_user!,except: [:index]
  def index
    @hobbies = Hobby.all
  end

  def show
    @hobby = Hobby.find(params[:id])
  end

  def new
    @hobby = Hobby.new
  end

  def create
    @hobby = Hobby.new(hobby_params)
    @hobby.user_id = current_user.id
    if @hobby.save
      redirect_to hobby_path(@hobby), notice: "投稿しました。"
    else
      render :new
    end
  end


  def edit
    @hobby = Hobby.find(params[:id])
    if @hobby.user != current_user
        redirect_to hobbies_path, alert: "不正なアクセスです。"
    end
  end

  def update
    @hobby = Hobby.find(params[:id])
    if @hobby.update(hobby_params)
      redirect_to hobby_path(@hobby), notice: "更新しました。"
    else
      render :edit
    end
  end

  private
  def hobby_params
    params.require(:hobby).permit(:title, :body, :image, :comment)
  end
end
