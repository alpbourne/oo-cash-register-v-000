class CashRegister

  attr_accessor :total, :employee_discount, :items, :apply_discount, :discounted_total

  def initialize(employee_discount = 0)
    @employee_discount = employee_discount
    @total = 0
    @items= []
  end

  def items
    @items = items
  end

  def add_item (title, price, quantity = 1)
    self.total += price * quantity
    @last_transaction = price * quantity
    @items << self.total
    @last = price * quantity
  end

  def apply_discount
    @discounted_total = @total - ((@total * @employee_discount/100).to_i)
    if @employee_discount > 0
      "After the discount, the total comes to #{@discounted_total}."
    else
      "There is no discount to apply."
    end
  end

end
