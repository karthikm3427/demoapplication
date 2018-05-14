class AddRowsToCustomers < ActiveRecord::Migration
  def change
    Customer.create(name:"Priyanka", city:"Hyd")
    Customer.create(name:"Priya", city:"Sec")
    Customer.create(name:"Pallavi", city:"Wgl")
  end
end
