class CashRegister

  attr_accessor :total, :employee_discount
  
  def initialize(employee_discount = 0)
    total = 0
    @total = total
    @employee_discount = employee_discount
    @current_total = []
  end


end
