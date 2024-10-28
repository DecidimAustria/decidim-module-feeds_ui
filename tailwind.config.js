const mainConfig = require('../digigraetzl/tailwind.config');

module.exports = {
	...mainConfig,
	theme: {
		colors: {
			feeds: {
				ciccia: 'red',
				post: '#1786C2',
				sharecare: '#80CC28',
				host: '#E81067',
				calendar: '#FDB620',
				survey: '#19619A',
				notification: '#9747FF',
				bg: '#FAFAFA',
				formBody: '#F9F8F8',
				sidebar: '#6D6B67',
			},
		},
	},
};
