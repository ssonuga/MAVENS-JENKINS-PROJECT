<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="DevOps Learning Project Registration">
    <meta name="keywords" content="DevOps, Learning, Registration, Class">
    <meta name="author" content="DevOps Learning">
    <title>DevOps Learning Project - Registration</title>

    <!-- Link to external CSS (Consider creating a style.css file) -->
    <link rel="stylesheet" href="styles/style.css">
    <!-- Bootstrap for Responsive Design -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

    <div class="container text-center mt-5">
        <h1 class="text-danger">CONGRATULATIONS ON YOUR DEVOPS LEARNING PROJECT!</h1>
        <img src="https://thedeveopsleaerning.s3.amazonaws.com/Screen+Shot+2022-02-08+at+10.15.02+PM.png" alt="DevOps Learning Image" class="img-fluid my-4">
        <hr>
        <p><a href="https://the-devops-learning.teachable.com" class="btn btn-primary">Visit the School's Website</a></p>
    </div>

    <div class="container mt-5">
        <h2 class="text-danger text-center">New User? Register for the Upcoming DevOps Learning Class</h2>
        <p class="text-center">Please fill in this form to create an account.</p>
        <hr>
        <!-- Registration Form -->
        <form action="action_page.php" method="POST" class="row g-3 needs-validation" novalidate>
            <div class="col-md-6 offset-md-3">
                <label for="Name" class="form-label">Full Name</label>
                <input type="text" class="form-control" id="Name" name="Name" placeholder="Enter Full Name" required>
                <div class="invalid-feedback">
                    Please provide your full name.
                </div>

                <label for="mobile" class="form-label mt-3">Mobile Number</label>
                <input type="tel" class="form-control" id="mobile" name="mobile" placeholder="Enter Mobile Number" pattern="[0-9]{10}" required>
                <div class="invalid-feedback">
                    Please provide a valid 10-digit mobile number.
                </div>

                <label for="email" class="form-label mt-3">Email Address</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Enter Email Address" required>
                <div class="invalid-feedback">
                    Please provide a valid email.
                </div>

                <label for="psw" class="form-label mt-3">Password</label>
                <input type="password" class="form-control" id="psw" name="psw" placeholder="Enter Password" minlength="6" required>
                <div class="invalid-feedback">
                    Please provide a password with at least 6 characters.
                </div>

                <label for="psw-repeat" class="form-label mt-3">Repeat Password</label>
                <input type="password" class="form-control" id="psw-repeat" name="psw-repeat" placeholder="Repeat Password" minlength="6" required>
                <div class="invalid-feedback">
                    Please repeat your password.
                </div>

                <p class="mt-3">By creating an account you agree to our <a href="https://the-devops-learning.teachable.com/p/privacy">Terms & Privacy</a>.</p>
                <button type="submit" class="btn btn-success w-100 mt-3">Register</button>
            </div>
        </form>

        <div class="text-center mt-4">
            <p>Already have an account? <a href="https://sso.teachable.com/secure/1216846/identity/login/password">Sign in</a>.</p>
        </div>

        <div class="text-center mt-5">
            <p>Send me an email at <a href="mailto:thedevopslearning@gmail.com">thedevopslearning@gmail.com</a>.</p>
            <h3 class="text-danger">Thank you, Happy Learning!</h3>
        </div>
    </div>

    <!-- Bootstrap JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Form validation script -->
    <script>
        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (function () {
            'use strict'
            var forms = document.querySelectorAll('.needs-validation')
            Array.prototype.slice.call(forms)
                .forEach(function (form) {
                    form.addEventListener('submit', function (event) {
                        if (!form.checkValidity()) {
                            event.preventDefault()
                            event.stopPropagation()
                        }
                        form.classList.add('was-validated')
                    }, false)
                })
        })()
    </script>
</body>
</html>
