var livetape = require('livescript')
var commander = require('commander')
var livetape = require('../index.ls')
commander
  .version('0.0.1')
  .usage('[options] <pattern>')
  .option('-w, --watch', 'Watch files')
  .parse(process.argv);
livetape(commander.args, commander)
