<div class="flex items-center justify-center min-h-screen bg-gray-100">
    <div class="max-w-sm p-6 bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700 text-center">
        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">Movies feedback</h5>
        <p class="mb-3 font-normal text-gray-800 dark:text-gray-400">
            Please rate your experience below
        </p>

        <div class="flex items-center justify-center mt-4">
            <span class="text-gray-800 dark:text-gray-400">Rate us:</span>
            <br><br><br>
            <div id="starContainer" class="flex space-x-1 rtl:space-x-reverse ml-2">

            </div>
        </div>
        <p class="mb-3 font-normal text-gray-800 dark:text-gray-400">
            Additional feedback
        </p>
        <textarea
                class="w-full p-3 text-sm text-gray-900 bg-gray-100 border border-gray-600 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:text-white dark:placeholder-gray-400 dark:border-gray-600 dark:focus:ring-blue-500 dark:focus:border-blue-500"
                rows="4"
                placeholder="Write your feedback here..."></textarea>

        <br><br>

        <button class="mt-4 inline-flex items-center px-6 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800 gap-x-4">
            Submit feedback
        </button>
    </div>
</div>

<script>
    const starContainer = document.getElementById('starContainer');
    const totalStars = 5;
    let rating = 0;

    // Function to create stars
    function createStars() {
        for (let i = 1; i <= totalStars; i++) {
            const starButton = document.createElement('button');
            starButton.classList.add('text-gray-400', 'hover:text-yellow-400', 'focus:outline-none');
            starButton.innerHTML = `
                <svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" class="w-6 h-6" viewBox="0 0 24 24">
                    <path d="M12 17.27L18.18 21l-1.64-7.03L22 9.24l-7.19-.61L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21z" />
                </svg>
            `;
            starButton.setAttribute('data-value', i); // Set star value
            starButton.addEventListener('click', handleStarClick); // Add click event
            starContainer.appendChild(starButton);
        }
    }

    // Handle star click
    function handleStarClick(event) {
        const clickedValue = parseInt(event.target.closest('button').getAttribute('data-value'));
        rating = clickedValue; // Update rating
        updateStars(rating); // Update star colors
    }

    // Update star colors
    function updateStars(rating) {
        const stars = starContainer.querySelectorAll('button');
        stars.forEach((star, index) => {
            if (index < rating) {
                star.classList.add('text-yellow-400');
                star.classList.remove('text-gray-400');
            } else {
                star.classList.add('text-gray-400');
                star.classList.remove('text-yellow-400');
            }
        });
    }

    // Initialize stars on page load
    createStars();
</script>