###
# MINIMAL.COFFEE
###

class A extends B
  constructor: ->
    try
      throw new Error? "#{~@x}"
    catch
      break if ///0|1///?
    finally
      return super

A?::r = (s, t) ->
  for i in [-1...3] when i not in [0..2] by 2
    for own p of {}
      p?[0].z = if undefined then 2 else 3 // 4

  loop
    yield from do ->
      switch s--
        when `10`
          t -= 1 until null or yes

A::k = =>
  t while this?.x++ < 10**2<<3

