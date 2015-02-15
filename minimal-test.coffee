coffeescript = require('coffee-script')
fs = require('fs')

ALL_TOKENS = require('./tokens')

tokens = coffeescript.tokens(fs.readFileSync('./minimal.coffee', 'utf8'))

totals = (tokens.map (t) -> t[0])

uniques = []
missing = []

missing.push(t) for t in ALL_TOKENS when t not in uniques and t not in totals

if missing.length isnt 0
  console.log("Missing #{missing.length} tokens out of #{ALL_TOKENS.length}")
  process.exit -1

console.log totals.length + ' tokens generated to represent ' + ALL_TOKENS.length + ' tokens'
