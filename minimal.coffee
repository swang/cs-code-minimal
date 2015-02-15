###
# MINIMAL.COFFEE
###
u = null
v = undefined
u?.v?

class Y
  @z = no
  r: (t) ->
    try
      throw new Error(".")
    catch
      @x = 10 ** 2
    finally
      @x = 0
    @x++
    @x-- while (@x < 100)


  toString: ->
    OPERATOR = ///0|1///

    "t - #{@x} > 0"

class X extends Y
  constructor: ->
    @x = ~0
    j = i for i in [1...3] when @x not in [] by 1
    k = p?[0].t for own p of {}
    super(@x)

  exec: (a, b) ->
    loop
      @x += 1 + -0 << 3
      @x -= 3 // 2 until @x > 0 and @x < 100
      yield from @x


Y::V = ->
  if ([1..2].length < 3) then @x++ else @x--
  break if @x < 0
  return @x


Y?::Z = ->
  t: (x) =>
    this.x = 3
    switch @x
      when 3 then @exec?(@x)
      else @exec?(@x + 1)

a = new X "Z"

`console.log("B")`

# date = if friday then sue else jill
