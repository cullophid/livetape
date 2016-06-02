livescript = require 'livescript'
path = require 'path'
map = (fn, list) --> list.map fn
replace = (a, b, string) --> string.replace a, b
head = (list) -> list[0]
toString = (e) -> e.toString()
assert = require 'assert'
fs = require 'fs'
spawn = require 'child_process' .spawn

spawnTest = (file) ->
  ls = spawn('lsc', [file]);
  ls.stdout.pipe(process.stdout)
  ls.stderr.pipe(process.stderr)

module.exports = (files, options) -->
  console.log files, options.watch
  if options.watch
    console.log 'watching files', files
    files
      .forEach (file) ->
        onChange = -> spawnTest file
        fs.watch file, onChange
        fs.watch (replace '.test.ls', '.ls', file), onChange
  else
    files
      .forEach (file) ->
        require path.join process.cwd(), "./#{file}"
