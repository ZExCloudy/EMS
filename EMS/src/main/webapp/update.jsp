<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EMS | Update Employee</title>
<link rel="stylesheet" href="style1.css">
</head>
<body>
<body>
    <section class="container">
      <header>Update Employee</header>
      <form action="update" class="form">

        <div class="input-box">
            <label>Employee Id </label>
            <input type="text" name="name" value="${employee.id }" readonly="readonly" required />
          </div>

        <div class="input-box">
          <label>Full Name</label>
          <input type="text" name="name" value="${employee.name }"  required />
        </div>

        <div class="input-box">
          <label>Email Address</label>
          <input type="email" name="email" value="${employee.email }" required />
        </div>

        <div class="column">
          <div class="input-box">
            <label>Phone Number</label>
            <input type="number" name="phone" value="${employee.phone }" required />
          </div>
          <div class="input-box">
            <label>Birth Date</label>
            <input type="date" name="dob" value="${employee.dob }" required />
          </div>
        </div>
        <div class="gender-box">
          <h3>Gender</h3>
          <div class="gender-option">
            <div class="gender">
              <input type="radio"  name="gender" value="male" value="Active" ${employee.gender=='male'?'checked':''} required>
              <label for="check-male">male</label>
            </div>
            <div class="gender">
              <input type="radio" name="gender" value="female" value="Active" ${employee.gender=='female'?'checked':''} required>
              <label for="check-female">Female</label>
            </div>
            </div>
        </div>
        <div class="input-box address">
          <label>Address</label>
          <input type="text"name="address" value="${employee.address }" required />
        </div>

        <div class="input-box address">
            <label>Designation</label>
            <input type="text" name="designation" value="${employee.designation }" required />
          </div>

        <button>Submit</button>
      </form>
    </section>
</body>
</html>