#- - - - - - -
# property

class Base
  constructor: (@p1) ->

b1 = new Base 'p1'
console.log b1.p1

#- - - - - - - - -
# method

class Base
  constructor: (@p1) ->
  m1: -> console.log 'm1'

b1 = new Base 'p1'
b1.m1()

#- - - - - - - - -
# child class

class Base
  constructor: (@p1) ->
  b_m1: -> console.log 'm1'

class Child extends Base
  constructor: (@p1, @c_p1) ->
  c_m1: (arg) -> console.log @p1, @c_p1, arg

c1 = new Child 'x1', 'x2'

# evoking method in child class
c1.c_m1 'y'  ##  x1 x2 y
# evoking method in base class
c1.b_m1()    ##  m1

# - - - - - - - -- -
# over ridding method in Base class

class Base
  constructor: (@p1) ->
  b_m1: -> console.log 'm1'

class Child extends Base
  constructor: (@c_p1) ->
  b_m1: -> console.log 'b_m1'

c1 = new Child 'x1'
c1.b_m1()    ##  b_m1

# - - - - - - - - - -
# calling base method from child class

class Base
  constructor: (@p1) ->
  b_m1: -> console.log 'b_m1'

class Child extends Base
  constructor: (@c_p1) ->
  b_m1: (arg) ->
    if arg is 'super'
      super()
    else
      console.log 'c_m1'

c1 = new Child 'x1'
c1.b_m1()           ##  c_m1
c1.b_m1('super')    ##  b_m1


