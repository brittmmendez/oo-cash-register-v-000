
class CashRegister
attr_accessor :total, :discount
@@all_items=[]

  def initialize(discount=0)
    @discount=discount.to_f
    @total=0
  end

  def total
    @total
  end

  def add_item(title,price,quantity=1)
    cost=price*quantity
    @total=(cost+@total)
    
    
    counter=0
    while counter <quantity
    @@all_items<<title
    counter+=1
  end
  end

  def apply_discount
    if @discount==0
      "There is no discount to apply."
    else
      @total=@total-(@total*(@discount/100))
      "After the discount, the total comes to $#{@total.to_i}."
      end
  end
  
  def items
  @@all_items
  end
    


end
