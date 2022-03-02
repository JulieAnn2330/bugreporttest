class Bug < ApplicationRecord
    belongs_to :user
    has_one_attached :image, :dependent => :destroy
    acts_as_votable 
   
    
end
