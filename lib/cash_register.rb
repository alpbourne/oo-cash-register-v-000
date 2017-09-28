class CashRegister

  attr_accessor :total, :employee_discount, :items

  def initialize(employee_discount = 0)
    @employee_discount = employee_discount
    @total = 0
    @items= []
  end

  def add_item (title, price, quantity = 1)
    self.total += price * quantity
    @last_transaction = price * quantity
    @items << self.total
    @last = price * quantity
  end

  def apply_discount
  end

end
