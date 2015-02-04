#- - - - - - - - -
# different kind of property in child class

class Base
  constructor: (@p1) ->
  _b_p1: 'b_p1'
  @_b_p2: 'b_p2'
  getPrivate_p1: -> @_b_p1

b1 = new Base 'p1'
console.log b1.getPrivate_p1()  # b_p1
console.log Base._b_p2          # b_p2

