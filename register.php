<?php

// Start session
session_start();

// Database connection
$conn = new mysqli("localhost", "root", "", "register");

// Check connections
if ($conn->connect_error) {
    die('Connection failed: ' . $conn->connect_error);
}


echo 'Connected to database successfully.';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $email = $_POST["email"];
    $password = $_POST["pass"];

    // Front-end validation

    $checkQuery = "SELECT * FROM registration WHERE email='$email'";
    $result = $conn->query($checkQuery);

    if (!$result) {
        die('Error in query: ' . $conn->error);
    }

    if ($result->num_rows > 0) {
        // User with the same email already exists, notify the user
        echo '<script>alert("User with the same email already exists. Please use a different email.");</script>';
        header("Location: register.html");
        exit();
    } else {
        // Insert user data into the database
        $hashedPassword = password_hash($password, PASSWORD_DEFAULT);
        $sql = "INSERT INTO registration (email, name, password) VALUES ('$email', '$username', '$hashedPassword')";

        if ($conn->query($sql) === TRUE) {
            // Registration successful, set session variables
            $_SESSION['user_email'] = $email;
            $_SESSION['user_name'] = $username;
            echo '<script>alert("Registration successful!");</script>';
            header("Location: login.html");
            exit();
        } else {
            echo '<script>console.log("Error: ' . $sql . '<br>' . $conn->error . '");</script>';
        }
    }
}

// Close the database connection
$conn->close();
?>