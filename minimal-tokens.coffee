# Search through CoffeeScript
coffeescript = require('coffee-script')
fs = require('fs')
glob = require('glob')
exec = require('child_process').exec

uniques = []
tokens = []

parseIt = ->
  glob './coffeescript/**/*.coffee', {}, (err, files) ->
    for f in files when not /strings\.coffee$/i.test(f)
      toks = coffeescript.tokens fs.readFileSync(f, 'utf8')
      tokens = tokens.concat toks

    for t in tokens when t[0] not in uniques
      uniques.push t[0]

    console.log "Writing results to token.json"
    fs.writeFileSync 'tokens.json', JSON.stringify(uniques.sort(), null, 2), 'utf8'

if fs.existsSync './coffeescript'
  parseIt()
else
  gitCmd = 'git clone --depth=1 git@github.com:jashkenas/coffeescript.git'
  console.log "Cloning: #{gitCmd}"
  exec gitCmd, (err, stdout, stderr) ->
    unless err
      parseIt()

