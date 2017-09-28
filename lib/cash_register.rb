class CashRegister

  attr_accessor :total, :employee_discount, :current_total

  def initialize(employee_discount = 0)
    @total = 0
    @employee_discount = employee_discount
    @items= []
  end

  def add_item (title, price, quantity = 1)
    @total += price * quantity
    @last = price * quantity
    quanity.times do
      @items << title
    end
    @items
  end


end
