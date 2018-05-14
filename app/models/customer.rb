class Customer < ActiveRecord::Base
	#validates :name, presence: true
	#validates :name, exclusion: { in: %w(priya pallavi),message: "%{value} is reserved." }
    validates :name, inclusion: { in: %w(shravani sahitya sudha), message: "%{value} is reserved." },allow_blank: true
    #validates :name, format: { with: /\A[a-zA-Z]+\z/,message: "only allows letters" }
    #validates :name, length: { in: 6..20 ,message: "length should be >6" }
    #validates :name, uniqueness: { message: "should be unique" } 
end
