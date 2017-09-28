class CashRegister

  attr_accessor :total, :employee_discount, :items, :apply_discount, :discounted_total, :last_transaction

  def initialize(employee_discount = 0)
    @employee_discount = employee_discount
    @total = 0
    @items= []
  end

  def items
    @items
  end

  def add_item (title, price, quantity = 1)
    self.total += price * quantity
    @last_transaction = price * quantity
    @items << self.total
  end

  def apply_discount
    if @employee_discount > 0
      total_discount = @total*@employee_discount/100
      @total = @total - total_discount
      "After the discount, the total comes to #{@discounted_total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
