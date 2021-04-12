class RestaurantsController < ApplicationController

  before_action :find_restaurant, only: [:show, :edit, :update, :destroy]
  # before_action :find_restaurant, except: [:index, :new, :create ]


  #skip_before_action :verify_authenticity_token
  def index
    # render html: 'hello'  #render ({html: 'hello'})
    # @restaurants = Restaurant.all.order(id: :asc) #desc 反向排序 asc 正向排序，預設正向排序
    # @restaurants = Restaurant.all.order(id: :desc) #desc 反向排序 asc 正向排序
    # @restaurants = Restaurant.all
    # @restaurants = Restaurant.order 跟all一樣結果 
    # @restaurants = Restaurant.all.order(title: :asc) #desc 反向排序 asc 正向排序 按照title排序
    # @restaurants = Restaurant.where(title: 'aaa') 找 title 'aaa' 的資料
    # @restaurants = Restaurant.where("title like '%aa%'") 找 title 相似'aa' 的資料
    # 摸糊搜尋
      # rails c => 
    # @restaurants = Restaurant.where(deleted_at: nil)
    @restaurants = Restaurant.available

    # @restaurant = Restaurant.cheap
    # @restaurant = Restaurant.where('price > 500').where(deleted_at: nil).where(許可證: true)

    # @restaurants = Restaurant.where(deleted_at false)
  end

  def show
    # 開啟檔案
    # begin   #可能會發生錯誤訊息的地方用(begin rescue end)包起來！
    # Exception 例外
    # Error 錯誤
    # render html params
      # @restaurant = Restaurant.find(params[:id]) # 只能找 id   #激烈的
    # @restaurant = Restaurant.find_by(id: params[:id]) #
    # rescue
      # redirect_to restaurants_path
    # else 
      # 關檔
    end
    
  end

  def new
    @restaurant = Restaurant.new
  end

  # def list
  def create
    # render html: params[:restaurant][:title]
    # 寫入資料庫
    # redirect -> 列表頁
    # render html: "title is #{params[:title]}"
    # strong prameter
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      flash[:notice] = "候選人新增成功！"
      redirect_to restaurants_path
    else
      render :new #借 new.html.erb
    end
  end

  def edit
    # @restaurant = Restaurant.find(params[:id]) # 只能找 id   #激烈的
    # render :edit 
    # /views/Restauratns/edit.html.erb
    #只要沒有特別說要/render誰/(指定誰)，就會用同名的views edit.html.erb
    # 慣定優於設定
  end

  def updates
    # @restaurant = Restaurant.find(params[:id]) # 只能找 id   #激烈的
    if @restauratn.update(restaurant_params)
      redirect_to restaurant_path(@restaurant)
      # redirect_to @restaurant
    else
      render :edit
    end
  end

  def destroy
    # @restaurant = Restaurant.find(params[:id]) # 只能找 id   #激烈的
    # @restaurant.destroy
    @restaurant.destroy
    # @restaurant.destroy(deleted_at false)
    redirect_to restaurants_path
  end



  private
    def find_restaurant
      @restaurant = Restaurant.find(params[:id]) # 只能找 id   #激烈的
    end

    def restaurant_params
      params.require(:restaurant).permit(:Title, :Tel, :address, :Email, :description)
    end
  end