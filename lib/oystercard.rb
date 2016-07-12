class Oystercard
  MAX_LIMIT = 90
  MIN_BALANCE = 1
  attr_reader :balance

  def initialize
     @balance = 0
     @in_journey = false
  end

  def top_up(amount)
  fail "Maximum balance of #{MAX_LIMIT} exceeded" if @balance + amount > MAX_LIMIT
    @balance += amount
  end

  def deduct(amount)
    @balance -= amount
  end

  def in_journey?
    @in_journey
  end

 def touch_in
    fail "Insufficient funds" if balance < MIN_BALANCE
    @in_journey = true
 end

 def touch_out
    @in_journey = false
 end


end
