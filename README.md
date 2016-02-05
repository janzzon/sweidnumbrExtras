# sweidnumbrExtras
Check Swedish personal and organization numbers, wrapper for pkg sweidnumbr

This package is unfortunately kind of obsolete from day 1, since package ```sweidnumbr``` from [rOpenGov](https://github.com/rOpenGov/sweidnumbr) is updated to 1.1.0.  
Argument ```force_logical``` is now added to ```pin_ctrl()``` and ```oin_ctrl()```.   
Use argument ```pin_ctrl(pin, force_logical = TRUE)``` and ```oin_ctrl(oin, force_logical = TRUE)``` 
to get FALSE as returned value if pin|oin is invalid.
