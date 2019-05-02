class WarikanController < ApplicationController

  def index
  end
  
  def settai1
  end

  def settai2
  end
  
  def onthejob1
  end
  
  def onthejob2
  end

  def friends1
  end

  def friends2
  end

  def settaiCalc1
    @totalAmount= params[:kaikei].to_i
    @totalHeadcount = (params[:syuhin].to_i + params[:ippan].to_i)
    
    if @totalAmount == 0
    redirect_to("/warikan/settai1")
    else
    
    @headcount2 = params[:syuhin].to_i
    
    if (((( @totalAmount / @totalHeadcount * 0.3 ).ceil(-3)).to_i) - (( @totalAmount / @totalHeadcount * 0.3 ).ceil(-2)).to_i) > 500
    @price2 = (( @totalAmount / @totalHeadcount * 0.3 ).ceil(-3)).to_i - 500
    else
    @price2 = (( @totalAmount / @totalHeadcount * 0.3 ).ceil(-3)).to_i
    end
    
    @amount2 = (@price2 * @headcount2).to_i
    
    @headcount3 = params[:ippan].to_i
  
    if (( (@totalAmount - @amount2) / @headcount3 ).ceil(-3) - ( (@totalAmount - @amount2) / @headcount3 ).ceil(-2)) >500
    @price3 = ( (@totalAmount - @amount2) / @headcount3 ).ceil(-3).to_i - 500
    else
    @price3 = ( (@totalAmount - @amount2) / @headcount3 ).ceil(-3).to_i
    end
  
    @amount3 = (@price3 * @headcount3).to_i
  
    @amariAmount = @amount2 + @amount3 - @totalAmount
    
    
    render("/warikan/settai1result")
    end
  end

  def settaiCalc2
    @totalAmount= params[:kaikei].to_i
    # @totalHeadcount = (params[:syuhin_male].to_i + params[:syuhin_female].to_i + params[:ippan_male].to_i + params[:ippan_female].to_i)
    @amariHeadcount = (params[:ippan_male].to_i + params[:ippan_female].to_i)
    @calcHeadcount = (params[:syuhin_male].to_i + ( params[:syuhin_female].to_i * 0.8 ) + params[:ippan_male].to_i + ( params[:ippan_female].to_i * 0.8 )).round(2)
  
    @maleHeadcount2 = params[:syuhin_male].to_i
    
    
    if @totalAmount == 0
    redirect_to("/warikan/settai2")
    else
    
    
    if (((( @totalAmount / @calcHeadcount * 0.3 ).ceil(-3)).to_i) - (( @totalAmount / @calcHeadcount * 0.3 ).ceil(-2)).to_i) > 500
    @malePrice2 = (( @totalAmount / @calcHeadcount * 0.3 ).ceil(-3)).to_i - 500
    else
    @malePrice2 = (( @totalAmount / @calcHeadcount * 0.3 ).ceil(-3)).to_i
    end
    
    @maleAmount2 = (@malePrice2 * @maleHeadcount2).to_i
    
    @femaleHeadcount2 = params[:syuhin_female].to_i
    
    if ((( @totalAmount / @calcHeadcount * 0.2 ).ceil(-3)).to_i - (( @totalAmount / @calcHeadcount * 0.2 ).ceil(-2)).to_i) >500
    @femalePrice2 = (( @totalAmount / @calcHeadcount * 0.2 ).ceil(-3)).to_i - 500
    else
    @femalePrice2 = (( @totalAmount / @calcHeadcount * 0.2 ).ceil(-3)).to_i
    end
    
    @femaleAmount2 = (@femalePrice2 * @femaleHeadcount2).to_i
    
    @maleHeadcount3 = params[:ippan_male].to_i
    
    if (((@totalAmount - @maleAmount2 - @femaleAmount2 ) / @amariHeadcount).ceil(-3).to_i - ((@totalAmount - @maleAmount2 - @femaleAmount2 ) / @amariHeadcount).ceil(-2).to_i) > 500
    @malePrice3 = ((@totalAmount - @maleAmount2 - @femaleAmount2 ) / @amariHeadcount).ceil(-3).to_i - 500
    else
    @malePrice3 = ((@totalAmount - @maleAmount2 - @femaleAmount2 ) / @amariHeadcount).ceil(-3).to_i
    end
    
    @maleAmount3 = (@malePrice3 * @maleHeadcount3).to_i
    
    @femaleHeadcount3 = params[:ippan_female].to_i
    
    if (((@totalAmount - @maleAmount2 - @femaleAmount2 ) / @amariHeadcount).ceil(-3).to_i - ((@totalAmount - @maleAmount2 - @femaleAmount2 ) / @amariHeadcount).ceil(-2).to_i) > 500
    @femalePrice3 = ((@totalAmount - @maleAmount2 - @femaleAmount2 ) / @amariHeadcount * 0.8).ceil(-3).to_i - 500
    else
    @femalePrice3 = ((@totalAmount - @maleAmount2 - @femaleAmount2 ) / @amariHeadcount * 0.8).ceil(-3).to_i
    end
    
    @femaleAmount3 = (@femalePrice3 * @femaleHeadcount3).to_i
    
    @amariAmount = (@maleAmount2 + @femaleAmount2 + @maleAmount3 + @femaleAmount3 - @totalAmount)
  
    render("/warikan/settai2result")
    end
  end

  def onthejobCalc1
    @totalAmount = params[:kaikei].to_i
    @totalHeadcount = (params[:joushi].to_i + params[:chuken].to_i + params[:wakate].to_i).to_i
    
    @headcount1 = params[:joushi].to_i
    
    
    if @totalAmount == 0
    redirect_to("/warikan/onthejob1")
    else
    
    
    if(((@totalAmount / @totalHeadcount * 1.2).ceil(-3).to_i - (@totalAmount / @totalHeadcount * 1.2)).ceil(-2).to_i) > 500 
    @price1 = (@totalAmount / @totalHeadcount * 1.2).ceil(-3).to_i - 500
    else
    @price1 = (@totalAmount / @totalHeadcount * 1.2).ceil(-3).to_i
    end
    
    @amount1 = (@price1 * @headcount1).to_i
    
    @headcount2 = params[:chuken].to_i
    
    if(((@totalAmount / @totalHeadcount * 1.0).ceil(-3).to_i - (@totalAmount / @totalHeadcount * 1.0)).ceil(-2).to_i) > 500 
    @price2 = (@totalAmount / @totalHeadcount * 1.0).ceil(-3).to_i - 500
    else
    @price2 = (@totalAmount / @totalHeadcount * 1.0).ceil(-3).to_i
    end
    
    @amount2 = (@price2 * @headcount2).to_i
    
    @headcount3 = params[:wakate].to_i
    
    if(((@totalAmount / @totalHeadcount * 0.75).ceil(-3).to_i - (@totalAmount / @totalHeadcount * 0.75)).ceil(-2).to_i) > 500 
    @price3 = (@totalAmount / @totalHeadcount * 0.75).ceil(-3).to_i - 500
    else
    @price3 = (@totalAmount / @totalHeadcount * 0.75).ceil(-3).to_i
    end
    
    @amount3 = (@price3 * @headcount3).to_i
    
    @amariAmount = (@amount1 + @amount2 + @amount3 - @totalAmount).to_i
    
    render("/warikan/onthejob1result")
    end
  end

  def onthejobCalc2
    @totalAmount = params[:kaikei].to_i
    @calcHeadcount = (params[:joushi_male].to_i + (params[:joushi_female].to_i * 0.8 ) + params[:chuken_male].to_i + (params[:chuken_female].to_i * 0.8 ) + params[:wakate_male].to_i + (params[:wakate_female].to_i * 0.8 )).round(2)
    
    @maleHeadcount1 = params[:joushi_male].to_i
    
    if @totalAmount == 0
    redirect_to("/warikan/onthejob2")
    else
    
    if(((@totalAmount / @calcHeadcount * 1.2 * 1.1).ceil(-3) - (@totalAmount / @calcHeadcount * 1.2 * 1.1)).ceil(-2) > 500 )
    @malePrice1 = (@totalAmount / @calcHeadcount * 1.2 * 1.1).ceil(-3) - 500
    else
    @malePrice1 = (@totalAmount / @calcHeadcount * 1.2 * 1.1).ceil(-3)
    end
    
    @maleAmount1 = (@maleHeadcount1 * @malePrice1)
    
    @femaleHeadcount1 = params[:joushi_female].to_i
    
    if(((@totalAmount / @calcHeadcount * 1.2 * 0.8).ceil(-3) - (@totalAmount / @calcHeadcount * 1.2 * 0.8)).ceil(-2) > 500 )
    @femalePrice1 = (@totalAmount / @calcHeadcount * 1.2 * 0.8).ceil(-3) - 500
    else
    @femalePrice1 = (@totalAmount / @calcHeadcount * 1.2 * 0.8).ceil(-3)
    end
    
    @femaleAmount1 = (@femaleHeadcount1 * @femalePrice1)
    
    @maleHeadcount2 = params[:chuken_male].to_i
    
    if(((@totalAmount / @calcHeadcount * 1.0 * 1.1).ceil(-3) - (@totalAmount / @calcHeadcount * 1.0 * 1.1)).ceil(-2) > 500 )
    @malePrice2 = (@totalAmount / @calcHeadcount * 1.0 * 1.1).ceil(-3) - 500
    else
    @malePrice2 = (@totalAmount / @calcHeadcount * 1.0 * 1.1).ceil(-3)
    end
    
    @maleAmount2 = (@maleHeadcount2 * @malePrice2)
    
    @femaleHeadcount2 = params[:chuken_female].to_i
    
    if(((@totalAmount / @calcHeadcount * 1.0 * 0.8).ceil(-3) - (@totalAmount / @calcHeadcount * 1.0 * 0.8)).ceil(-2) > 500 )
    @femalePrice2 = (@totalAmount / @calcHeadcount * 1.0 * 0.8).ceil(-3) - 500
    else
    @femalePrice2 = (@totalAmount / @calcHeadcount * 1.0 * 0.8).ceil(-3)
    end
    
    @femaleAmount2 = (@femaleHeadcount2 * @femalePrice2)
    
    @maleHeadcount3 = params[:wakate_male].to_i
    
    if(((@totalAmount / @calcHeadcount * 0.75 * 1.1).ceil(-3) - (@totalAmount / @calcHeadcount * 0.75 * 1.1)).ceil(-2) > 500 )
    @malePrice3 = (@totalAmount / @calcHeadcount * 0.75 * 1.1).ceil(-3) - 500
    else
    @malePrice3 = (@totalAmount / @calcHeadcount * 0.75 * 1.1).ceil(-3)
    end
    
    @maleAmount3 = (@maleHeadcount3 * @malePrice3)
    
    @femaleHeadcount3 = params[:wakate_female].to_i
    
    if(((@totalAmount / @calcHeadcount * 0.75 * 0.8).ceil(-3) - (@totalAmount / @calcHeadcount * 0.75 * 0.8)).ceil(-2) > 500 )
    @femalePrice3 = (@totalAmount / @calcHeadcount * 0.75 * 0.8).ceil(-3) - 500
    else
    @femalePrice3 = (@totalAmount / @calcHeadcount * 0.75 * 0.8).ceil(-3)
    end
    
    @femaleAmount3 = (@femaleHeadcount3 * @femalePrice3)
    
    @amariAmount = (@maleAmount1 + @femaleAmount1 + @maleAmount2 + @femaleAmount2 + @maleAmount3 + @femaleAmount3 - @totalAmount)
    
    render("/warikan/onthejob2result")
    
    end
  end

  def friendsCalc1
    @totalAmount = params[:kaikei].to_i
    @totalHeadcount = params[:ippan].to_i
    
    if @totalAmount == 0
    redirect_to("/warikan/friends1")
    else
    
    if(((@totalAmount / @totalHeadcount).ceil(-3) - (@totalAmount / @totalHeadcount).ceil(-2)) > 500 )
    @price1 = (@totalAmount / @totalHeadcount).ceil(-3) - 500
    else
    @price1 = (@totalAmount / @totalHeadcount).ceil(-3)
    end
    
    @amariAmount = (@totalHeadcount * @price1) - @totalAmount
    
    render("/warikan/friends1result")
    end
  end
  
  def friendsCalc2
    @totalAmount = params[:kaikei].to_i
    @calcHeadcount = ( params[:ippan_male].to_i + ( params[:ippan_female].to_i * 0.8 ))
    
    @maleHeadcount1 = params[:ippan_male].to_i
    
    if @totalAmount == 0
    redirect_to("/warikan/friends2")
    else
    
    if(((@totalAmount / @calcHeadcount).ceil(-3) - (@totalAmount / @calcHeadcount).ceil(-2)) > 500 )
    @malePrice1 = (@totalAmount / @calcHeadcount).ceil(-3) -500
    else
    @malePrice1 = (@totalAmount / @calcHeadcount).ceil(-3)
    end
    
    @maleAmount1 = (@malePrice1 * @maleHeadcount1 )
    
    @femaleHeadcount1 = params[:ippan_female].to_i
    
    if(((@totalAmount / @calcHeadcount * 0.8 ).ceil(-3) - (@totalAmount / @calcHeadcount * 0.8 ).ceil(-2)) > 500 )
    @femalePrice1 = (@totalAmount / @calcHeadcount * 0.8 ).ceil(-3) -500
    else
    @femalePrice1 = (@totalAmount / @calcHeadcount * 0.8 ).ceil(-3)
    end
    
    @femaleAmount1 = (@femalePrice1 * @femaleHeadcount1 )
    
    @amariAmount = (@maleAmount1 + @femaleAmount1 - @totalAmount)
    
    render("/warikan/friends2result")
    end
  end

end
