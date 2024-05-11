<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Trang bài viết với ảnh</title>
  <style>
    .container {
      display: flex;
    }

    .image-container {
      flex-basis: 50%;
    }

  .image {
  width: 100%;
  height: 700px;
}

    .content-container {
      flex-grow: 1;
    }

    .content {
      padding: 20px;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="image-container">
      <!-- <img src="assets/img/banhgaocay.jpg" alt="Ảnh" class="image"> -->
    </div>
    <div class="content-container">
      <div class="content">
        <h1><p style="font-weight: bold; color:purple ;">Cảm Ơn Bạn Đã Mua Đơn Hàng!</p></h1>
        <h2>Sản Phầm : Kim Bắp Chiên </h2>
        <h2>Giá : 35.000</h2>
        <br>
        <button id="orderButton" onclick="handleOrderConfirmation()" type="button" style="padding: 30px 50px;">Đặt Hàng Ngay</button>
        <div id="orderConfirmationMessage" style="display: none;">
          <p>Đơn hàng của bạn đã được xử lý thành công. Bạn sẽ được chuyển về trang chủ trong 5 giây.</p>
          <script>
            function handleOrderConfirmation() {
              // Simulate order processing (replace with actual logic)
              console.log("Processing order...");

              // Display confirmation message
              document.getElementById("orderConfirmationMessage").style.display = "block";

              // Redirect after 5 seconds (5000 milliseconds)
              setTimeout(function() {
                window.location.href = "index.jsp";
              }, 5000);
            }
          </script>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
