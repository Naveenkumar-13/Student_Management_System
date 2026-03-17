S<head>
<title>Home Page</title>

<!-- Bootstrap CDN (CSS) -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Indie+Flower&family=Dancing+Script&display=swap" rel="stylesheet">

<!-- Animate.css -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

h2 {
    font-family: Indie Flower, serif;
    font-weight: bold;
    letter-spacing: 10px;
    font-size: 30px;
    border-radius: 20px 0px 20px 0px;
    animation-name: bg-color;
    animation-duration: 20s;
    animation-iteration-count: infinite;
    animation-timing-function: linear;
}

@keyframes bg-color { 
    0% {
        background-color: black;
        color: yellow;
        box-shadow: 0px 0px 15px blue;
    }
    25% {
        background-color: darkred;
        color: white;
        box-shadow: 0px 0px 15px white;
    }
    50% {
        background-color: blueviolet;
        color: bisque;
        box-shadow: 0px 0px 15px deeppink;
    }
    75% {
        background-color: teal;
        color: red;
        box-shadow: 0px 0px 15px yellow;
    }
    100% {
        background-color: black;
        color: yellow;
        box-shadow: 0px 0px 15px blue;
    }
}

.display-6:hover {
    color: white;
    text-shadow: 5px 5px 10px black;
}

.bg-info {
    background: linear-gradient(45deg, teal, pink, darkslategray);
}

input:hover, select:hover {
    box-shadow: 0px 0px 15px darkslategray;
    border: 3px solid blue;
}
</style>
</head>

<body>
    <div class="col-12">
        <h2 class="text-center ms-0">
            <marquee>Welcome to Global Quest Technologies</marquee>
        </h2>
    </div>

    <div class="container-fluid">
        <div class="row">
            <!-- Form Column -->
            <div class="col-md-4 bg-info animate__animated animate__backInRight p-4" style="box-shadow: 0px 0px 15px black;">
                <p class="display-6 fw-bold text-center mb-0" style="font-family: Dancing Script, serif;">Student Registration</p>
                <hr>

                <form action="/01-Project1/SaveRecord" method="post">
                    
                    <!-- Student ID -->
                    <div class="form-floating mb-3 mt-0">
                        <input type="text" placeholder="Student Id" id="sid" name="sid" class="form-control form-control-sm">
                        <label for="sid" class="form-label">Student ID</label>
                    </div>

                    <!-- Student Name -->
                    <div class="form-floating mb-3">
                        <input type="text" placeholder="Student Name" id="fn" name="fn" class="form-control">
                        <label for="fn" class="form-label">Student Name</label>
                    </div>

                    <!-- Gender Selection -->
                    <div class="mb-3">
                        <select name="gender" class="form-select">
                            <option value="">--- Select Gender ---</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                        </select>
                    </div>

                    <!-- City Selection -->
                    <div class="mb-3">
                        <select name="city" class="form-select">
                            <option value="">--- Select City ---</option>
                            <option value="Hyderabad">Hyderabad</option>
                            <option value="Golokam">Golokam</option>
                            <option value="Bangalore">Bangalore</option>
                            <option value="Tirupati">Tirupati</option>
                            <option value="Produttur">Produttur</option>
                            <option value="Pune">Pune</option>
                            <option value="Chennai">Chennai</option>
                            <option value="Kadapa">Kadapa</option>
                            <option value="Vizag">Vizag</option>
                        </select>
                    </div>

                    <!-- Course Selection -->
                    <div class="mb-3">
                        <select name="course" class="form-select" id="course">
                            <option value="">--- Select Course ---</option>
                            <option value="Java Fullstack">Java Fullstack</option>
                            <option value="Python Fullstack">Python Fullstack</option>
                            <option value="Testing">Testing</option>
                            <option value="MySQL">MySQL</option>
                            <option value="Front-end Technologies">Front-end Technologies</option>
                            <option value="Data Science">Data Science</option>
                            <option value="Data Analytics">Data Analytics</option>
                        </select>
                    </div>

                    <!-- Amount to be Paid -->
                    <div class="form-floating mb-3">
                        <input type="text" placeholder="Amount to be paid" id="amount" name="amount" class="form-control" value="0">
                        <label for="amount" class="form-label">Amount to be paid</label>
                    </div>

                    <!-- Submit Button -->
                    <div class="mt-4 d-grid gap-2">
                        <input type="submit" value="REGISTER" class="btn btn-outline-dark fst-italic fs-5 fw-bold" style="letter-spacing: 4px;">
                    </div>
                </form>
            </div>

            <!-- Image Column -->
            <div class="col-md-8">
                <img src="https://static.vecteezy.com/system/resources/previews/002/418/866/large_2x/office-workplace-with-laptop-free-photo.jpg" alt="Office Image not available" height="540px" width="100%">
            </div>
        </div>
    </div>

    <!-- JavaScript: Set Amount Based on Course -->
    <script>
        let courseBox = document.querySelector('#course');
        let amountBox = document.querySelector('#amount');

        let amountToBePaid = () => {
            if (courseBox.value === "Java Fullstack") {
                amountBox.value = 35000;
            } else if (courseBox.value === "Python Fullstack") {
                amountBox.value = 32000;
            } else if (courseBox.value === "Testing") {
                amountBox.value = 17000;
            } else if (courseBox.value === "Front-end Technologies") {
                amountBox.value = 22000;
            } else if (courseBox.value === "MySQL") {
                amountBox.value = 12000;
            } else if (courseBox.value === "Data Science") {
                amountBox.value = 48000;
            } else if (courseBox.value === "Data Analytics") {
                amountBox.value = 23000;
            } else {
                amountBox.value = 0;
            }
        }
        
        courseBox.addEventListener("change", function() {
            amountToBePaid();
        });
    </script>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
