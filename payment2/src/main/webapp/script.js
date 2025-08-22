/**
 * 
 */

document.addEventListener('DOMContentLoaded', function() {
    const form = document.querySelector('form');
    
    form.addEventListener('submit', function(event) {
        // Get form fields
        const fullName = document.querySelector('input[name="fullname"]').value;
        const email = document.querySelector('input[name="email"]').value;
        const cardName = document.querySelector('input[name="cardname"]').value;
        const cardNumber = document.querySelector('input[name="cardnumber"]').value;

        // Define regular expressions
        const namePattern = /^[A-Za-z\s]+$/;
        const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
        const numberPattern = /^[0-9]+$/;

        // Validate full name (only letters and spaces allowed)
        if (!namePattern.test(fullName)) {
            alert('The full name should contain only letters and spaces.');
            event.preventDefault(); 
        }

        // Validate email
        if (!emailPattern.test(email)) {
            alert('Please enter a valid email address.');
            event.preventDefault();  
        }

        // Validate card name (no numbers allowed)
        if (!namePattern.test(cardName)) {
            alert('The name on the card should contain only letters and spaces.');
            event.preventDefault();  
        }

        // Validate card number (only numbers allowed)
        if (!numberPattern.test(cardNumber)) {
            alert('The card number should contain only numbers.');
            event.preventDefault();
        }
    });
});

const images = [
    'd.jpeg', 
    'y.webp',
    'n.webp',
    'u.jpg',
	'p.jpg',
	'kk.jpg',
	'o.jpg'
];

let currentIndex = 0;
const intervalTime = 3000; 

function changeBackground() {
    document.body.style.backgroundImage = `url('${images[currentIndex]}')`;
    currentIndex = (currentIndex + 1) % images.length; 
	
}


setInterval(changeBackground, intervalTime);

// Initial background load
changeBackground();


