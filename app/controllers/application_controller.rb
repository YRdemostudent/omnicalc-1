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
    
  apr = params.fetch("user_apr").to_f/100.0/12.0
  @formattedapr=format("%.4f%%",apr*12*100)
  @years = params.fetch("user_years").to_i
  monthly= @years * 12
  principal = params.fetch("user_pv").to_f
  userpayments = (principal * apr * (1.0 + apr)**  monthly) / ((1.0 + apr) **  monthly - 1.0)
  
  @formattedpayment= userpayments.to_s(:currency)
  @formattedprincipal = principal.to_s(:currency)

    
    render({:template => "calculation_templates/payment_results.html.erb"})
  end 

  def random_new
  
    render({:template => "calculation_templates/random_new.html.erb"})
  end 
  
  def random_result
    @lower = params.fetch("user_min").to_f
    @upper = params.fetch("user_max").to_f
    @result = rand(@lower..@upper)
  render({:template => "calculation_templates/random_results.html.erb"})
  end 
end
