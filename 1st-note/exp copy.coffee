



a = (b) => b
console.log a 'a'





// - - - - - - - -
e = (f) -> f
console.log e ('g')



console.log 'a', 'b'

cube = (num) -> Math.pow num, 3


odd = (num) -> num % 2 is 1





odd = (num) ->
    unless typeof num is 'number'
        throw "#{num} is not a number"
    unless num is Math.round num
        throw "#{num} is not an integer"
    unless num > 0
        throw "#{num} is not positive"
    num % 2 is 1




