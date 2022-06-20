<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home - RiverEdge</title>
<jsp:include page="/components/navbar.jsp"></jsp:include>
</head>
<body>

<div class="cont" >
<img class="w-100 " style="height: 500px; position: cover " alt="no" src="images/cvr1.jpeg">
<div class="centered">
<h1 style="font-size: 60px; font-family: 'Pushster', cursive;" >Welcome To BlueEdge</h1>
<!-- <button style="background-color: white; color: black; font-family: 'Fjalla One', sans-serif; " class="btn " >Book A Room</button>
<button style="background-color: white; color: black; font-family: 'Fjalla One', sans-serif;" class="btn " >My Account</button>
 -->
<button class="btn" style="background-color: white; color: black; font-family: 'Fjalla One', sans-serif;" >Book A Room</button>
</div>
</div>

<br>
<br>

<div>
<div class="container">
  <div class="row">
    <div class="col-6">
        
        <img src="images/hall.jpeg" class="w-100" style="border-radius: 20px" >
        
    </div>
    <div class="col-6">
        
        <h2 style="font-family: 'Fjalla One', sans-serif; " > About Us </h2>
        
        <p>
        A personal tropical sanctuary that is perfect for escaping the city, Shangri-La Colombo overlooks the Indian Ocean in the heart of the business district with direct access to the most extensive international shopping mall in Sri Lanka, Shangri-La’s own One Galle Face Mall. The hotel offers the finest accommodation in Colombo, an exciting new dining and social scene and the largest and extensive hotel conference and event facilities.
<br><br>

- 541 rooms and suites <br><br>
- Unrivalled shopping experience in Sri Lanka’s leading shopping mall <br><br>
- Shangri-La Cares: Our commitment to your well-being in our care <br>
        </p>
        
        <button class="btn" style=" border: static; border-radius: 1px; border-color: #184771; border-width: 4px  " > Learn More </button>
        
    </div>
  </div>
</div>
</div>

<br>
<br>

<div>

<br>
<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img style="height: 600px; object-fit : cover " src="images/c4.jpeg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h3>BANQUET HALL</h3>
        <p>Large Banquet Hall</p>
      </div>
    </div>
    <div class="carousel-item">
      <img style="height: 600px" src="images/c2.jpeg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h3>LUXURY ROOMS</h3>
        <p>Experience Of Super Luxury Rooms</p>
      </div>
    </div>
    <div class="carousel-item">
      <img style="height: 600px" src="images/c3.jpeg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h3>SWIMMING POOL</h3>
        <p>Swimming Pool Experience</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

</div>

<br>
<br>

<div>
<div class="container">
  <div class="row">
    <div class="col-6">
        
        <h2 style="font-family: 'Fjalla One', sans-serif; " > Accomodation </h2>
        
        <p>
        A personal tropical sanctuary that is perfect for escaping the city, Shangri-La Colombo overlooks the Indian Ocean in the heart of the business district with direct access to the most extensive international shopping mall in Sri Lanka, Shangri-La’s own One Galle Face Mall. The hotel offers the finest accommodation in Colombo, an exciting new dining and social scene and the largest and extensive hotel conference and event facilities.
<br><br>

- 541 rooms and suites <br><br>
- Unrivalled shopping experience in Sri Lanka’s leading shopping mall <br><br>
- Shangri-La Cares: Our commitment to your well-being in our care <br>
        </p>
        
<button class="btn" style=" border: static; border-radius: 1px; border-color: #184771; border-width: 4px " > Learn More </button>

        
    </div>
    <div class="col-6">
        
        <img src="images/room.jpeg" class="w-100" style="border-radius: 20px" >
        
    </div>
  </div>
</div>
</div>

<br>
<br>

<jsp:include page="components/footer.jsp"></jsp:include>

</body>
</html>

<style>
.cont {
  position: relative;
  text-align: center;
  color: white;
}

.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
</style>



