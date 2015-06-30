
 
class TipCalculator
  attr_accessor :bill, :tip_percent, :num_people
 
  def grand_total
    @bill + (@bill * (@tip_percent/100.0))
  end
 
  def bill_split
    grand_total / @num_people
  end
end
 
def test
  tip_calc = TipCalculator.new
  tip_calc.bill = 100
  p tip_calc.bill ==  100
 
  tip_calc.tip_percent = 20
  p tip_calc.tip_percent == 20
 
  tip_calc.num_people = 4
  p tip_calc.num_people == 4
  
  p tip_calc.grand_total == (100 * (1 + 0.2))
 
  p tip_calc.bill_split == (120/4)
 
  puts "The bill split is $#{tip_calc.bill_split}"
end
 
test
