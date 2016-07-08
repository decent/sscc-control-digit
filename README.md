# sscc-control-digit

This is a lisp version of calculating the control digit for a Serial Shipping Container Code (SSCC). How these are calculated can be found at [http://www.gs1.org/how-calculate-check-digit-manually](http://www.gs1.org/how-calculate-check-digit-manually).

I might very well have misunderstood something but the calculation works for the example mad at the page given above.


## Run the code

For the example given at the page above we have the GTIN-13 serial 629104150021 (without the control digit). To calculate the serial we run the following:

`(control-digit 629104150021)`

Hopefully you should get 3 in return.


## ToDo

A minor todo I guess would be to comment the code some.