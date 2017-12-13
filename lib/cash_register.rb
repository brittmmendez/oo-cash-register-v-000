
class CashRegister
attr_accessor :total, :discount
@@all_items=[]

  def initialize(discount=0)
    @discount=(1-discount)
    @total=0
  end

  def total
    @total
  end

  def add_item(title,price,quantity=1)
    cost=price*quantity
    @total=(cost+@total)
  end

  def apply_discount
    if @discount==1
      puts" There is no discount to apply."
    else
    @total=(@total*@discount)
    puts "After the discount, the total comes to $#{@total}"
  end
  end

end
