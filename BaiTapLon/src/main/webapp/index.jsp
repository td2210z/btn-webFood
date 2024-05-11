<%@page import="model.KhachHang"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bài Tập Lớn</title>
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="assets/css/project.css">
</head>
<body>


<header class="header">
  <!-- header -->
    <a href="#" class="logo"> <i class="fas fa-shopping-basket"></i> Đồ Ăn Nhanh </a>
    <nav class="navbar">
     
        <a href="#home">Trang Chủ</a>
        <a href="#features">Dịch Vụ</a>
        <a href="#products">Sản Phẩm</a>
        <a href="#categories">Thể Loại</a>
        <a href="#review">Đánh Giá</a>
        <a href="#blogs">blogs</a>
    </nav>
    <div class="icons">
        <div class="fas fa-bars" id="menu-btn"></div>
        <div class="fas fa-search" id="search-btn"></div>
        <div class="fas fa-shopping-cart" id="cart-btn"></div>
        <div class="fas fa-user" id="login-btn"></div>
    </div>




    <!-- thanh tìm kiếm -->
    <form action="" class="search-form">
        <input type="search" id="search-box" placeholder="Tìm Kiếm Ngay">
        <label for="search-box" class="fas fa-search"></label>
    </form>


    <!-- hiển thị sản phẩm mua -->
 <div class="shopping-cart">
 <a href="GioHang.jsp" class="btn">Sản Phẩm Của Chúng Tôi</a>
        <!-- <div class="box">
            <i class="fas fa-trash"></i>
            <img src="assets/img/a1.jpg" alt="">
            <div class="content">
                <h3>Mì Kim Chi Bò</h3>
                <span class="price">138.000Đ</span>
                <span class="quantity">sl: 1</span>
            </div>
        </div>
        <div class="box">
            <i class="fas fa-trash"></i>
            <img src="assets/img/a2.jpg" alt="">
            <div class="content">
                <h3>Mì Tương Đen</h3>
                
                <span class="price">38.000Đ</span>
                <span class="quantity">sl: 1</span>
            </div>
        </div> 

       
        <div class="box">
            <i class="fas fa-trash"></i>
            <img src="assets/img/a2.jpg" alt="">
            <div class="content">
                <h3>Mì Gạo Cay</h3>
                <span class="price">25.000Đ</span>
                <span class="quantity">Sl: 1</span>
            </div>
        </div> 
        <div class="total"> Tổng : 201.000Đ </div>
        <a href="#" class="btn">Tổng Tiền</a> -->
    </div>
     <!-- thanh sp mua : end -->


     <!-- form đăng nhặp -->
  <form action="" class="login-form">
    

    
    
        
        <a href="dangki.jsp" class="btn">Đăng Kí</a>
        <a href="GioHang.jsp" class="btn">Đơn Hàng Của Tôi</a>
        <a href="GioHang.jsp" class="btn">Thông Báo</a>
        <a href="doimatkhau.jsp" class="btn">Đổi Mật Khẩu </a>
        <a href="thaydoithongtin.jsp" class="btn">Thay Đổi Thông Tin </a>
       
        
   
</form>
 
 <form class="d-flex" role="search">
					<!-- <input class="form-control me-2" type="search"
						placeholder="Nội dung tìm kiếm" aria-label="Search">
 -->					<!-- <button class="btn btn-outline-success" type="submit">Tìm</button> -->
					<%
						Object obj = session.getAttribute("khachHang");
						KhachHang khachHang = null;
						if (obj!=null)
							khachHang = (KhachHang)obj;
						
						if(khachHang==null){
					%>
						<a class="btn btn-primary" style="white-space: nowrap;" href="dangnhap.jsp">
							Đăng nhập
						</a>
					<%} else { %>
						<div class="row text-center" style="margin-left: 0.25em">
							<div class="row">Xin Chào : <br><b><%=khachHang.getTenDangNhap() %></b></div>
							<div class="row"><a style="white-space: nowrap;" href="dang-xuat">
								Đăng xuất
							</a>
							</div>
						</div>
					<% } %>
				</form>
</header>

<!-- content -->
<section class="home" id="home">
  <div class="mySlides fade">
    <div class="numbertext">1 / 3</div>
    <img src="assets/img/ct1.jpg" style="width:1100px">
    <div class="text">Nội Dung 1</div>
  </div>
 <div class="mySlides fade">
    <div class="numbertext">2 / 3</div>
    <img src="assets/img/ct2.jpg" style="width:1100px">
    <div class="text">Nội Dung 2</div>
  </div>
 <div class="mySlides fade">
    <div class="numbertext">3 / 3</div>
    <img src="assets/img/ct3.jpg" style="width:1100px">
    <div class="text">Nội Dung 3</div>


</section>

<!-- Nút tròn điều khiển slideshow-->
<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span>
  <span class="dot" onclick="currentSlide(2)"></span>
  <span class="dot" onclick="currentSlide(3)"></span>
</div>


<section class="features" id="features">
    <h1 class="heading"> Dịch <span>Vụ</span> </h1>
    <div class="box-container">
        <div class="box">
            <img src="assets/img/doanngonn.jpg" alt="">
            <h3>Combo Đồ Ăn Ngon</h3>
            <a href="ReadMore.jsp" class="btn">Xem Thêm</a>
        </div>
        <div class="box">
            <img src="assets/img/giaohang.jpg" alt="">
            <h3>Giao Hàng Trực Tuyến</h3>
            <a href="ReadMore.jsp" class="btn">Xem Thêm</a>
        </div>
        <div class="box">
            <img src="assets/img/thanhtoan.jpg" alt="">
            <h3>Thanh Toán Online</h3>
            <a href="ReadMore.jsp" class="btn">Xem Thêm</a>
        </div>
    </div>
</section>

<!-- sản phẩm -->
<section class="products" id="products">
    <h1 class="heading"> Món Ăn <span>Bán Chạy</span> </h1>
    <div class="swiper product-slider">
        <div class="swiper-wrapper">
            <div class="swiper-slide box">
                <img src="assets/img/banhgaocay.jpg" alt="">
                <h3>Bánh Gạo Cay</h3>
                <div class="price"> 25.000Đ </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="GioHang.jsp" class="btn">Đặt Ngay</a>
            </div>
            <div class="swiper-slide box">
                <img src="assets/img/canhkimchi.jpg" alt="">
                <h3>Canh Kim Chi</h3>
                <div class="price"> 65.000Đ </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="GioHang.jsp" class="btn">Đặt Ngay</a>
            </div>
            <div class="swiper-slide box">
                <img src="assets/img/comcuonchien.jpg" alt="">
                <h3>Cơm Cuộn Chiên</h3>
                <div class="price"> 35.000Đ </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="GioHang.jsp" class="btn">Đặt Ngay</a>
            </div>
            <div class="swiper-slide box">
                <img src="assets/img/gacay.jpg" alt="">
                <h3>Gà Cay Sốt Thái</h3>
                <div class="price">75.000Đ </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="GioHang.jsp" class="btn">Đặt Ngay</a>
            </div>
            <div class="swiper-slide box">
              <img src="assets/img/comtronhaisan.jpg" alt="">
              <h3>Cơm Trộn Hải Sản</h3>
              <div class="price"> 35.000Đ </div>
              <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
              </div>
              <a href="GioHang.jsp" class="btn">Đặt Ngay</a>
          </div>
        </div>
        
    </div>
    <div class="swiper product-slider">
        <div class="swiper-wrapper">
            <div class="swiper-slide box">
                <img src="assets/img/comgavienchiengion.jpg" alt="">
                <h3>Cơm Gà Viên Chiên Giòn</h3>
                <div class="price"> 60.000Đ </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="GioHang.jsp" class="btn">Đặt Ngay</a>
            </div>
            <div class="swiper-slide box">
                <img src="assets/img/comkimchibo.jpg" alt="">
                <h3>Cơm Kim Chi Bò</h3>
                <div class="price"> 65.000Đ </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="GioHang.jsp" class="btn">Đặt Ngay</a>
            </div>
            <div class="swiper-slide box">
                <img src="assets/img/comtron.jpg" alt="">
                <h3>Cơm Trộn</h3>
                <div class="price"> 40.000Đ </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="GioHang.jsp" class="btn">Đặt Ngay</a>
            </div>
            <div class="swiper-slide box">
                <img src="assets/img/comtronganam.jpg" alt="">
                <h3>Cơm Trộn Gà Nấm</h3>
                <div class="price"> 65.000Đ </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="GioHang.jsp" class="btn">Đặt Ngay</a>
            </div>
        </div>
    </div>
</section>
<!-- phàn sản phẩm : end -->



<!-- Giảm Giá Sản Phẩm -->
<section class="categories" id="categories">
    <h1 class="heading"> Combo <span>Đặc Biệt</span> </h1>
    <div class="box-container">
        <div class="box">
            <img src="assets/img/combo1.jpg" alt="">
            <h3>Combo 138k </h3>
            <p>Chỉ với 138k , bạn đã có 1 combo lẩu thái + nước mía </p>
            <a href="#" class="btn">Đặt Ngay </a>
        </div>
        <div class="box">
            <img src="assets/img/combo2.jpg" alt="">
            <h3>Combo 79k</h3>
            <p>1 Set Mì hoàng đế singapo + cà phê cowboy</p>
            <a href="#" class="btn">Đặt Ngay</a>
        </div>
        <div class="box">
            <img src="assets/img/combo3.jpg" alt="">
            <h3>Combo 7 người</h3>
            <p>1 Mẹt gà nhà pao + nước coca</p>
            <a href="#" class="btn">Đặt Ngay</a>
        </div>
        <div class="box">
            <img src="assets/img/combo4.jpg" alt="">
            <h3>Combo Ngũ Vị</h3>
            <p>1 Set 4 người ăn , với các món truyền thống</p>
            <a href="#" class="btn">Đặt Ngay</a>
        </div>
    </div>
</section>

<!-- feedback -->
<section class="blogs" id="blogs">
    <h1 class="heading"> Feed <span>Back</span> </h1>
    <div class="box-container">
        <div class="box">
            <img src="assets/img/fb1.jpg" alt="">
            <div class="content">
                <div class="icons">
                    <a href="ReadMore.jsp"> <i class="fas fa-user"></i> Thiên Bảo </a>
                    
                </div>
                <h3>Đồ Ăn Ngon , Nhân Viên Nhiệt Tình. Rất đáng Để Thử </h3>
                <a href="ReadMore.jsp" class="btn">Read more</a>
            </div>
        </div>
        <div class="box">
            <img src="assets/img/fb2.jpg" alt="">
            <div class="content">
                <div class="icons">
                    <a href="#"> <i class="fas fa-user"></i>Văn Đạt </a>
                    
                </div>
                <h3>Chất lượng đồ ăn tuyệt vời , nhân viên quá nhiệt tình</h3>
                <a href="ReadMore.jsp" class="btn">read more</a>
            </div>
        </div>
        <div class="box">
            <img src="assets/img/fb3.jpg" alt="">
            <div class="content">
                <div class="icons">
                    <a href=""> <i class="fas fa-user"></i> Nguyễn Đình Thắng</a>
                    
                </div>
                <h3>Đồ Ăn Tuyệt Vời , Nhân Viên Phục Vụ Nhiệt Tình Chu Đáo</h3>
                <a href="ReadMore.jsp" class="btn">read more</a>
            </div>
        </div>
    </div>
</section>


<!-- phần <footer></footer> -->
<section class="footer">
    <div class="box-container">
        <div class="box">
            <h3> Liên Hệ <i class="fas fa-shopping-basket"></i> </h3>
            <div class="share">
                <a href="#" class="fab fa-facebook-f"></a>
                <a href="#" class="fab fa-twitter"></a>
                <a href="#" class="fab fa-instagram"></a>
                <a href="#" class="fab fa-linkedin"></a>
            </div>
        </div>
        <div class="box">
            <h3>contact info</h3>
            <a href="#" class="links"> <i class="fas fa-phone"></i> +84 111111111 </a>
            <a href="#" class="links"> <i class="fas fa-phone"></i> +84 222222222</a>
            <a href="#" class="links"> <i class="fas fa-envelope"></i> BanDoAn.com </a>
            <a href="#" class="links"> <i class="fas fa-map-marker-alt"></i> Hà Nội </a>
        </div>
        <div class="box">
          
            <h3>quick links</h3>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> Trang Chủ </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> Dịch Vụ </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> Sản Phẩm  </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> Thể Loại </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> Đánh Giá </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> blogs </a>
        </div>
        <div class="box">
            <h3>Contact</h3>
            <p>Mọi thắc mắc xin liên hệ</p>
            <input type="email" placeholder="Nhập email của bạn" class="email">
            <input type="submit" value="Cảm Ơn" class="btn">
            <!-- <img src="subscribe.png" class="payment-img" alt=""> -->
        </div>
    </div>
    <div class="credit"> Cảm Ơn Bạn <span> Mua Hàng</span> | Hẹn Gặp Lại </div>
</section>
<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
<script src="assets/index.js"></script>
</body>
</html>