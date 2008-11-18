class FermsController < ApplicationController
  require 'gchart'
  
  def index
  end
  
  def kinetics
    @kinetics = [1,2,3,4,5,6,7,8,9,0]
  end
  
  def detail
    @chart = Gchart.line_xy(:size => '500x400',
                            :bg => '999999',
                            :data => [[10,25,38,60,90],[50,60,80,90,99],[10,15,20,35,55],[80,60,40,20,1]],
                            :line_colors => ['ffff00', 'bec0c0'])
  end

  def new
  end

  def edit
  end

end
