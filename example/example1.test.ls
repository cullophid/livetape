test = require 'tape'
example1 = require './example1'

test 'test example 1', (t) ->
  t.plan 1
  t.equal example1(), 'example1'
