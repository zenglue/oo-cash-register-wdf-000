class CashRegister
  attr_accessor :total, :item, :discount, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(item, price, quantity=1)
    quantity.times {@items << item}

    @total += price * quantity
  end

  def apply_discount
    if @discount > 0
      @total -= (@total * @discount/100)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.last_transaction = self.total
    self.total -= self.last_transaction
  end
end
