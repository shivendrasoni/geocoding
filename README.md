
-------------------------------------------------------------------------
HEADS UP : This is based off rails 3.2 So, many gems upgraded for rails 4 might not play nice. I'll look into it when I can.


Instructions to run :

rake db:migrate

rails server -p <port>

open localhost:<port>/places

I didnot route it to root because that would not have made sense for integration.

IF you are using the app behind a proxy, configure it in config/initializers/geocoder.rb

------------------------
