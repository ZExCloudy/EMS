<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EMS | Add Employee</title>
<link rel="stylesheet" href="style1.css">
</head>
<body>
<section class="container">
      <header>Add Employee</header>
      <form action="add" class="form">
        <div class="input-box">
          <label>Full Name</label>
          <input type="text" name="name" placeholder="Enter full name" required />
        </div>

        <div class="input-box">
          <label>Email Address</label>
          <input type="text" name="email" placeholder="Enter email address" required />
        </div>

        <div class="column">
          <div class="input-box">
            <label>Phone Number</label>
            <input type="number" name="phone" placeholder="Enter phone number" required />
          </div>
          <div class="input-box">
            <label>Birth Date</label>
            <input type="date" name="dob" placeholder="Enter birth date" required />
          </div>
        </div>
        <div class="gender-box">
          <h3>Gender</h3>
          <div class="gender-option">
            <div class="gender">
              <input type="radio" name="gender" value="male"  >
              <label for="check-male">male</label>
            </div>
            <div class="gender">
              <input type="radio" name="gender" value="female">
              <label for="check-female">Female</label>
            </div>
            </div>
        </div>
        <div class="input-box address">
          <label>Address</label>
          <input type="text"name="address" placeholder="Enter address" required />
        </div>

        <div class="input-box designation">
            <label>Designation</label>
            <input type="text" name="designation" placeholder="Enter designation" required />
          </div>

        <button type="submit" class="btn btn-primary btn-block" onclick="alert('Information provided is correct ?');">Submit</button><br>
      </form>
    </section>
</body>
</html>