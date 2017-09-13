var mosca = require('../');

module.exports = {
	id: process.env.ID || 'mymosca',
	backend: {
		type: 'redis',
		port: 6379,
		host: 'redis',
		return_buffers: true
	},
	persistence: {
		factory: mosca.persistence.Redis,
		port: 6379,
		host: process.env.REDIS || 'redis'
	}

};
