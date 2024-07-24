document.addEventListener('DOMContentLoaded', function () {
	console.log('Feeds UI loaded');
	const filterOpenButton = document.getElementById(
		'feedsUI__user_filterButton'
	);
	const filterDiv = document.getElementById('feedsUI__user_filter');
	const userFilterForm = document.getElementById('feedsUI__user_filterForm');
	const fields = userFilterForm.querySelectorAll('input');

	filterOpenButton.addEventListener('click', function () {
		filterDiv.classList.toggle('active');
		const isExpanded = filterDiv.classList.contains('active');
		filterOpenButton.setAttribute('aria-expanded', isExpanded);
		if (isExpanded) {
			// Focus on the name input when opening
			const firstInput = filterDiv.querySelector('#feedsUI__user_name');
			if (firstInput) {
				firstInput.focus();
			}
		}
	});

	fields.forEach((field) => {
		field.addEventListener('input', regenerateAjaxCall);
	});

	function regenerateAjaxCall() {
		const name = document.querySelector('#feedsUI__user_name').value;
		const interest = document.querySelector('#feedsUI__user_interest').value;
		const apartment = document.querySelector('#feedsUI__user_apartment').value;
		console.log(name);
		console.log(interest);
		console.log(apartment);
		const params = new URLSearchParams({
			name: name,
			interest: interest,
			apartment: apartment,
		});
		Rails.ajax({
			url: '/feeds_ui/filter_users?' + params.toString(),
			type: 'GET'
		});
	}
});
