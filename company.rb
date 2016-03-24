class Company < ActiveRecord::Base

  has_many :departments
  has_many :employees, through: :departments

  def add_department(dept)
    self.departments << dept
  end
end
