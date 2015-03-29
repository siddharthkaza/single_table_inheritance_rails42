class MainController < ApplicationController
  def index
    render :text=>"Hello! This is the ORM Lab. You must have the environment running."
  end
#************************************************************
#        DO NOT RUN THESE METHODS FROM THE BROWSER
#               FOLLOW STEPS IN THE LAB
#************************************************************
  def create_customer
    Customer.create(:name => 'John Doe', :email => "john@doe.com" , :balance => 78.29)
    Customer.create(:name => 'Bert Public' , :email => "b@public.net" , :balance => 12.45)
  end

    def create_manager
      wilma = Manager.create(:name => 'Wilma Flint' , :email => "wilma@here.com" , :dept => 23)
    end

    def create_employee
      barney = Employee.new(:name => 'Barney Rubble' , :email => "barney@here.com" , :dept => 23)

      barney.boss=wilma
      barney.save!
    end
end
