module RSampler

  class Multinomial

    attr_reader :accum_prob, :total_num
    
    def initialize(prob)
      @total_num = prob.size
      @accum_prob = prob.inject([0.0]) do |accum_sum, ele| 
        accum_sum + [ accum_sum.last + ele] 
      end
    end

    def self.sampling(prob, sample_num)
      self.new(prob).sampling(sample_num)
    end

    def sampling(sample_num)
      Array.new(sample_num) { rand }.inject([]) do |res, ran| 
        res << @accum_prob.find_index {|ele| ele > ran} - 1
      end
    end

  end

end