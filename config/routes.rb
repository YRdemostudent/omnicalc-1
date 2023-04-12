Rails.application.routes.draw do
get("/square/new", {:controller => "application", :action => "blank_square_form"})
get("/square/results", {:controller => "application", :action => "calculate_square"})

get("/square_root/new", {:controller => "application", :action => "blank_square_root"})
get("/square_root/results", {:controller => "application", :action => "calculate_square_root"})

get("/payment/new", {:controller => "application", :action => "payment"})
get("/payment/results", {:controller => "application", :action => "payment_results"})

get("/random/new", {:controller => "application", :action => "random_new"})
get("/random/results", {:controller => "application", :action => "random_result"})
end
