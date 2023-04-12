class ApplicationController < ActionController::Base
  def blank_square_form
  
    render({:template => "calculation_templates/square_form.html.erb"})
  end 
  
  def calculate_square
  
    @num = params.fetch("user").to_f
    @square_of_num = @num ** 2

    render({:template => "calculation_templates/square_results.html.erb"})
  end 

  def blank_square_root
    
    render({:template => "calculation_templates/square_root.html.erb"})
  end 

  def calculate_square_root
    @num = params.fetch("user").to_f
    @results = Math.sqrt(@num)
    render({:template => "calculation_templates/square_root_results.html.erb"})
  end 

  def payment
  
    render({:template => "calculation_templates/payment_new.html.erb"})
  end 

  def payment_results
    #formula: payment = p * r * (1 + r)^n / ((1 +r)^n-1)
    
    @num_apr = params.fetch("apr").to_f.round(4)
    @period_apr = (@num_apr/100)/12
    @num_years = params.fetch("years_num").to_i
    @num_prin = params.fetch("pv_num").to_f

    @montlhy_pay = (@period_apr * @num_prin)/(1-(1 + @period_apr) ** (-12 * @num_years))
    render({:template => "calculation_templates/payment_results.html.erb"})
  end 

  
end
