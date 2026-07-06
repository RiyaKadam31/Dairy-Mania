<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="DairyMania.Admin.AdminDash" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
           <title>D'M Factory</title>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
    <link href="../Css/admin.css" rel="stylesheet" />
   </head>
<body>

    <header>
        <div class="container header-container">
            <img src="../Image/Logo.png" alt="DM Logo" class="logo" />
            <h1>Dairy Mania</h1>
            <nav>
                 <ul>
              <li><a href="Dashboard.aspx">Dashboard</a></li>
              <li><a href="AdminStore.aspx">Store Management</a></li>
              <li><a href="AdminAnimal.aspx">Animal Management</a></li>
              <li><a href="AdminBooking.aspx">Booking Management</a></li>
              <li><a href="AdminCustomer.aspx">Customer Management</a></li>
              <li><a href="../Master/login.aspx">LogOut</a></li>
                     

                 </ul>
            </nav>
        </div>
    </header>
          <main>
  <section id="dashboard">
    <h2>Dashboard</h2>
    <p>The D'M Factory dashboard is a comprehensive tool that optimizes operations and ensures product quality. It includes real-time production tracking, quality control monitoring, and supply chain management to prevent disruptions. Maintenance updates, performance metrics, and workforce management help streamline efficiency. The dashboard also tracks revenue, ensures compliance with regulations, manages inventory, and promotes sustainability through environmental impact indicators. Additionally, weather data aids in planning for potential logistical disruptions. This all-in-one dashboard supports efficient operations, high-quality production, and the overall success of the factory.</p>
  </section>
          <section id="store">
              <h2>Store Management</h2>
              <p>D'M Factory's store management system streamlines inventory control by tracking stock levels, monitoring storage conditions, and managing shipments. It ensures optimal inventory with automated reordering, prevents stock issues, and maintains product quality, enhancing overall operational efficiency.</p>
          </section>
  <section id="animal-management">
    <h2>Animal Management</h2>
    <p>D'M Factory's animal management system monitors health, nutrition, and breeding of livestock. It tracks veterinary treatments, vaccinations, and milk production, while managing feed inventory. This ensures optimal animal care, productivity, and compliance with industry standards.</p>
  </section>
  <section id="booking-management">
    <h2>Booking Management</h2>
    <p>D'M Factory's booking management system handles the scheduling and coordination of orders and deliveries. It tracks customer orders, manages delivery slots, and coordinates with production schedules to ensure timely fulfillment. The system also handles inventory checks and updates, providing real-time status of bookings and deliveries to optimize operations and customer satisfaction.</p>
  </section>
  <section id="customer-management">
    <h2>Customer Management</h2>
   <p>D'M Factory's customer management system focuses on managing relationships and interactions with clients. It tracks customer orders, preferences, and feedback, ensuring personalized service and prompt responses to inquiries. The system also manages customer data, handles support requests, and monitors satisfaction levels to enhance service quality and build long-term relationships.</p>
  </section>
</main>
    <footer>
        <div class="container">
            &copy; 2024 D'M Factory. All rights reserved.
            
        </div>
    </footer>
</body>
</html>
