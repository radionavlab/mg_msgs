# Polynomial message type
# coefficients has to be a vector of length order+1
# coefficients[0] multiplies t^0
# ...
# coefficients[order+1] multiplies t^(order+1)
float32 t0
float32 tf
uint32 order
float32[] coefficients