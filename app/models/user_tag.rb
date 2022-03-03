class UserTag < ApplicationRecord
  belongs_to :user
  belongs_to :tag

  def index
    @user_tags = UserTag.all
  end

end
