Rails.application.routes.draw do
get("/square/new", {:controller => "application", :action => "blank_square_form"})
get("/square/results", {:controller => "application", :action => "calculate_square"})
#get("/square_root/new", {:controller => "application", :action => ""})
#get("/payment/new", {:controller => "application", :action => ""})
#get("/random/new", {:controller => "application", :action => ""})
end
