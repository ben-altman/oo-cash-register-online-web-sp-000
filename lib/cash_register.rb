#add items of varying quantities and prices
#calculate discounts
#keep track of what is added to it
#void the last transatctoin

class CashRegister

  attr_accessor :total, :discount, :last_item

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_item = @items[@items.count - 1]
  end

  def add_item(item, cost, number = 1)
    self.total += (cost * number)
    number.times {@items << item}
  end

  def apply_discount
    if @discount != 0
      take_off = self.total * (self.discount / 100.0)
      self.total = (self.total - take_off).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @items.pop
  end

end
