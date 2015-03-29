class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.column :type, :string

      # common attributes
      t.column :name, :string
      t.column :email, :string

      # attributes for type=Customer
      t.column :balance, :decimal, :precision => 10, :scale => 2

      # attributes for type=Employee
      t.column :reports_to, :integer
      t.column :dept, :integer

      # attributes for type=Manager
      # - none -
    end
  end
end
