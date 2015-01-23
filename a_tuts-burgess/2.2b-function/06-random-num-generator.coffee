###
  Funtion to generate random number btw max and min
###
rand = (max = 10, min = 0) ->
  Math.floor(
    Math.random() * ( max - min + 1 )
  ) + min

consoel.log rand()
consoel.log rand 100
consoel.log rand 60, 50
