document.addEventListener('DOMContentLoaded', function() {
    console.log('Feeds UI loaded');
    const toggleButton = document.getElementById('feedsUI__user_filterButton');
    const filterDiv = document.getElementById('feedsUI__user_filter');

    toggleButton.addEventListener('click', function() {
        filterDiv.classList.toggle('active');
        const isExpanded = filterDiv.classList.contains('active');
        toggleButton.setAttribute('aria-expanded', isExpanded);
    });
});