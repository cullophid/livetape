test = require 'tape'
example2 = require './example2'

test 'test example 2', (t) ->
  t.plan 1
  t.equal example2(), 'example2'
