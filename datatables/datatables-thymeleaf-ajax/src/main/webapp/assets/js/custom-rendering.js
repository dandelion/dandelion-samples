function mailify(data, type, full) {
	return '<a href="mailto:' + data + '">' + data + '</a>';
}

function toDate(data, type, full) {
	return moment(new Date(data)).format('YYYY/MM/DD');
}

function toCurrency(data, type, full) {
	return "&euro;" + data;
}