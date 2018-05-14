class Product < ActiveRecord::Base
	 validates :full_name, presence: true
=begin
	 before_save do | product|
	 	Site.create(first_name:"helloo")
	 	User.create(name:"helloo")
	 	product.full_name = product.full_name + "  Helloo world" 
	 end 

	 before_validation do 
         Site.create(first_name:"helloo")
	 	 User.create(name:"helloo")
	 end
    after_validation do
         Site.create(first_name:"helloo")
	 	 User.create(name:"helloo")
    end
    # before_save do 

    # end
    around_save do
        Site.create(first_name:"helloo")
	 	User.create(name:"helloo")
    end
    before_create do
        puts "before create callbacks"
    end
    around_create do
        puts "around create callbacks"
    end
    after_create do
        puts "after create callbacks"
    end
    after_save do
        puts "after save callbacks"
    end      
    after_commit do
        puts "after commit callbacks"
    end
    after_rollback do
        puts "after rollback callbacks"
    end
=end

end
