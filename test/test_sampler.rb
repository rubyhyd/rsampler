require "test_helper"

class TestMultinomial < Minitest::Test

  def setup
    @prob = [0.1, 0.2, 0.3, 0.4]
    @multinomial = RSampler::Multinomial.new @prob
  end


  def test_accum_prob
    accum_prob = [0.0, 0.1, 0.3, 0.6, 1.0]
    @multinomial.accum_prob.each_with_index do |ele, index|
      assert (ele - accum_prob[index]).abs < 0.0001
    end   
  end

  def test_sampling
    assert @multinomial.sampling(20).size == 20
  end  

  def test_selfsampling
    assert RSampler::Multinomial.sampling(@prob, 20).size == 20
  end

end