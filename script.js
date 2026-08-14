document.addEventListener('DOMContentLoaded', () => {
    const loginForm = document.getElementById('login-form');
    const errorMessage = document.getElementById('login-error');

    loginForm.addEventListener('submit', (e) => {
        e.preventDefault();
        
        const username = document.getElementById('username').value;
        const password = document.getElementById('password').value;
        
        // Simple mock authentication for demonstration
        if (username === 'admin' && password === 'admin123') {
            // Success animation
            const btn = loginForm.querySelector('.btn-primary');
            btn.innerHTML = 'Signing in...';
            btn.style.opacity = '0.8';
            
            setTimeout(() => {
                // Here we would typically redirect to a dashboard HTML page
                // window.location.href = 'dashboard.html';
                alert('Successfully logged in! (Dashboard view to be implemented)');
                btn.innerHTML = 'Sign In';
                btn.style.opacity = '1';
                errorMessage.classList.remove('visible');
            }, 1000);
        } else {
            // Show error
            errorMessage.classList.add('visible');
            // Shake effect on form
            loginForm.parentElement.animate([
                { transform: 'translateX(0)' },
                { transform: 'translateX(-10px)' },
                { transform: 'translateX(10px)' },
                { transform: 'translateX(-10px)' },
                { transform: 'translateX(10px)' },
                { transform: 'translateX(0)' }
            ], {
                duration: 400,
                easing: 'ease-in-out'
            });
        }
    });
});
