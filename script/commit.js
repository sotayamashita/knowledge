const { spawn } = require('child_process')

spawn('git', ['add', '.'])
spawn('git', ['commit', '-m', new Date()])
spawn('git', ['push'])
