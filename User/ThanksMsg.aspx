<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThanksMsg.aspx.cs" Inherits="DairyMania.User.ThanksMsg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>D'M Factory</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
    <!-- Include SweetAlert2 CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
    <!-- Include SweetAlert2 JS -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link href="../Css/alertmsg.css" rel="stylesheet" />
    <style>
        .my-title-class {
            font-size: 24px;
            color: #333;
            font-family: 'Arial', sans-serif;
        }
        .my-popup-class {
            border-radius: 10px;
            border: 2px solid #4CAF50;
        }
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0,0,0,0.4);
        }

        .modal-content {
            background-color: #fefefe;
            margin: 15% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            max-width: 400px;
            border-radius: 10px;
            text-align: center;
        }

        .close-button {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close-button:hover,
        .close-button:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

        #closeModal {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        #closeModal:hover {
            background-color: #45a049;
        }
    </style>
    <script type="text/javascript">
        window.onload = function() {
            // Display the modal when the page loads
            var modal = document.getElementById('customAlert');
            modal.style.display = 'block';

            // Get the <span> element that closes the modal
            var span = document.getElementsByClassName('close-button')[0];

            // Get the OK button element
            var btn = document.getElementById('closeModal');

            // When the user clicks on <span> (x), close the modal
            span.onclick = function() {
                modal.style.display = 'none';
                window.location.href = 'UHome.aspx';
            }

            // When the user clicks on OK button, close the modal
            btn.onclick = function() {
                modal.style.display = 'none';
                window.location.href = 'UHome.aspx';
            }

            // When the user clicks anywhere outside of the modal, close it
            window.onclick = function(event) {
                if (event.target == modal) {
                    modal.style.display = 'none';
                    window.location.href = 'UHome.aspx';
                }
            }
        }
    </script>
</head>
<body>

<header>
    <div class="container header-container">
        <img src="../Image/Logo.png" alt="DM Logo" class="logo" />
        <h1>Dairy Mania</h1>
        <nav>
            <ul>
                <li><a href="UHome.aspx">Home</a></li>
                <li><a href="UProduct.aspx">Products</a></li>
                <li><a href="UStore.aspx">Store</a></li>
                <li><a href="AboutUs.aspx">About Us</a></li>
                <li><a href="ContactUs.aspx">Contact Us</a></li>
                <li><a href="../Master/Login.aspx">Log In</a></li>
            </ul>
        </nav>
    </div>
</header>

<!-- Modal HTML -->
<div id="customAlert" class="modal">
    <div class="modal-content">
        <span class="close-button">&times;</span>
        <h2>Thank You!</h2>
        <p>Your order has been successfully placed.</p>
        <button id="closeModal">OK</button>
    </div>
</div>

<footer>
    <div class="container">
        &copy; 2024 D'M Factory. All rights reserved.
        <ul>
            <li><a href="UTerm.aspx">Terms and Conditions</a></li>
<li><a href="UPolicy.aspx">Privacy Policy</a></li>
<li><a href="UContactus.aspx">Conatact Us</a></li>
        </ul>
    </div>
</footer>

</body>
</html>