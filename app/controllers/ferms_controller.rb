class FermsController < ApplicationController
  
  def index
  end
  
  def kinetics
    @kinetics = [1,2,3,4,5,6,7,8,9,0]
  end
  
  def detail
    dates = (Time.now.to_date..Time.now.to_date + 10).to_a
    output = dates.collect { |d| d.strftime("%m/%d") } 
    @temp_values = [46,48,52,58,66,68,68,68,66,60]
    days_array = [0,10,20,30,40,50,60,70,80,90]
    @brix_array = [26,27.5,26,22,18,14,9,5,2,0]
    new_temp_array = @temp_values.collect { |n| n * 1.0 }
    new_brix_array = @brix_array.collect { |n| n * 3.2 }
    data_array = Array.new.push(days_array).push(new_brix_array).push(days_array).push(new_temp_array)
    @chart = Gchart.line_xy(:size => '500x300',
                            :bg => 'ffffff',
                            :data => data_array.push(new_temp_array),
                            :line_colors => ['0000ffbb','ff0000bb'],
                            :line_weight => [[4,4,0],[4,4,0]],
                            :legend => '&deg;Brix|Temp &deg;F',
                            :axis_with_labels => 'x,y,r',
                            :axis_labels =>["#{output.join('|')}",'|0|4|8|12|16|20|24|28|32','|55|60|65|70|75|80|85|90'],
                            :custom => 'chg=10'
                            )
  end

  def new
  end

  def edit
  end

end
