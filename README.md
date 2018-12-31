Ruby on Rails Test

Build an invoice editor that allows a user add, edit, or remove line items according to the text-based mockup below. Pricing should be updated on-the-fly as line items are added or edited (the page can be reloaded as you perform these operations). Once the user clicks Finished the app should generate a PDF file that the user can see in  the browser and download if he/she chooses to. The PDF should look like the interface more or less.


Item                      	Qty     Price       Total
---------------------    	-----------------------------------
Widget                   	[ 2 ]  [ $10.00 ]  [ $20.00 ] x 
Cog                      	[ 2 ]  [ $15.99 ]  [ $31.98 ] x
[ New Item ]            	[   ]  [        ]  [        ]


                                    --------------------	
                                    Subtotal      $51.98
                                    Tax (5%)       $2.60							
                                    Total         $54.58
                                    --------------------

[Button: Finished]

More requirements:

Write this invoice editor using Ruby on Rails. 
Make sure you write a comprehensible coverage with unit tests.
Use all best practices and patterns that you know.
