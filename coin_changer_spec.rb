
require 'rspec/given'

require_relative 'coin_changer'

RSpec::Given.use_natural_assertions

describe CoinChanger do
	Given(:change) {CoinChanger.new}
	Then {change.convert(1).should == "P"}
	Then {change.convert(2).should == "PP"}
	Then {change.convert(5).should == "N"}
	Then {change.convert(6).should == "NP"}
	Then {change.convert(10).should == "D"}
	Then {change.convert(16).should == "DNP"}
	Then {change.convert(20).should == "DD"}
	Then {change.convert(25).should == "Q"}
	Then {change.convert(56).should == "QQNP"}
	Then {change.convert(85).should == "QQQD"}
	Then {change.convert(99).should == "QQQDDPPPP"}
	
end