class GuessGame

  def initialize( )
    @answer = []
    createAnswer
  end

  def setAnswer( ans, block )
    block(1,2,3)
    @answer = ans
  end
  
  def createAnswer
    @answer = []
    
    while @answer.length < 4
      randNum = (rand * 10).to_i
      next if @answer.any? { |n| n == randNum }
      @answer << randNum
    end 
    
    @answer
   end
  
  def evalGuess( *list )
    re_a = 0
    re_b = 0
    
    answer = @answer.clone
    
    (0..3).each do |x|
      y = 0
      if list[x] == answer[x]
        re_a = re_a + 1
        answer[x] = nil
      else
        while y < 4
          if answer[x] == list[y]
            if answer[y] != list[y]
              re_b = re_b + 1
              answer[x] = nil
            end
          end
          y += 1
        end
      end
    end
    re_a.to_s + 'A' + re_b.to_s + 'B' 
  end

end
