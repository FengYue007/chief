class Restaurant < ApplicationRecord

  acts_as_paranoid
  
  validates :title, presence: ture

  # default_scope { where(deleted_at: nil) }  
  
  # default_scope { available }
  # scope :available, -> { where(deleted_at: nil)}
  # 適當的塞選，讓它通過。
  # 新增、被刪除都會被加上去
                          # -> lambda,proc 被物件化的
                          # lambda 可以執行的程式碼
                        # lamda proc
  # scope :cheaper_than, -> (x) { where("price < #{x}") }
  # scope :cheap, -> { available.cheaper_than(500)}

  # 做一個功能 Restaurant.deleted -> 所有被刪除的餐廳？
  # Restaurant.deleted
  # def self.deleted_at
  #   unscope(:where).where.not(deleted_at: nil)]
  # end


  # def destroy
  #   update(delete_at: Time.now)
  # end


  # # r1.really_destroy! 真刪除資料？
  # def really_destroy!
  #   super.destroy
  # end

    # scope :deleted, -> { where not(deleted_at: Time.now)}





  # scope 

  # def self.available
  #   where(deleted_at: nil)
  # end

  # def self.all
  #   # where(deleted_at: nil)
  # end




end
