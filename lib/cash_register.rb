class CashRegister

  attr_accessor :total, :discount, :item, :transactions

  def initialize(discount = nil, total = 0)
     @total = total
     @discount = discount
     @item = []
     @transactions = []
   end
<<<<<<< HEAD

=======
   
  ITEMS = []
  TRANSACTIONS = []
>>>>>>> 55b2fd71c6e62f6421c37928e3b6e60fbee957a8

 def add_item(title, price, quantity = 1)
   total_quantity = price * quantity
   self.total += total_quantity
   for i in 1..quantity
<<<<<<< HEAD
     @item << title
   end
    @transactions << total_quantity
=======
     ITEMS << title
   end
    TRANSACTIONS << total_quantity
>>>>>>> 55b2fd71c6e62f6421c37928e3b6e60fbee957a8
 end


 def apply_discount
   self.total = self.total - (self.discount.to_f / 100 * self.total).to_i
   if self.total <= 0
     "There is no discount to apply."
   else
      "After the discount, the total comes to $#{self.total}."
   end
 end

 def items
<<<<<<< HEAD
   @item
 end

def void_last_transaction
 @total = (@total - @transactions[-1]).round

end
end

new_register = CashRegister.new
      new_register.add_item("eggs", 1.99)
      new_register.add_item("tomato", 1.76, 3)
      p new_register.items

cash_register = CashRegister.new
cash_register.add_item("tomato", 1.76)
p cash_register.void_last_transaction
=======
   ITEMS
 end

def void_last_transaction
 (self.total - TRANSACTIONS[-1]).round
end
end
>>>>>>> 55b2fd71c6e62f6421c37928e3b6e60fbee957a8
