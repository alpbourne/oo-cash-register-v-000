class CashRegister

  attr_accessor :total, :employee_discount, :current_total

  def initialize(employee_discount = 0)
    @total = 0
    @employee_discount = employee_discount
    @current_total = []
  end

  def add_item (title, price, quantity = 1)


end
