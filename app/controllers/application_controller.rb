class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  private
  def not_found
    # redirect_to restaurants_path
    render file: '#{Rails.root}/public/404.html', 
           status: 404
  end

  # 通用code 別的專案也可以放這段
end
