<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="phu.dev.dao.ProductDAO" %>
<%@ page import="phu.dev.model.Product" %>
<%@ page import="phu.dev.ConnectMysql.DBConnection" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.Connection" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>







<%
    String keyword = request.getParameter("keyword");
    List<Product> products = null;

    try {
        Connection conn = DBConnection.getConnection();
        ProductDAO dao = new ProductDAO(conn);
        if (keyword != null && !keyword.trim().isEmpty()) {
            products = dao.searchByKeyword(keyword);
        } else {
            products = dao.findAll();
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>














<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Shop elise</title>
    
   <link rel="shortcut icon" href="assets/img/logo_color%20(1).png" type="image/x-icon">
    <!--css-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;1,500;1,700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">


<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/category.css">


</head>
<body>
    <nav class = "navbar navbar-expand-lg navbar-light bg-white py-4 fixed-top">
        <div class = "container">
            <a class = "navbar-brand d-flex justify-content-between align-items-center order-lg-0" href = "home">
                <img src = "assets/img/logo_color%20(1).png" alt = "logo">
              
            </a>
            
            
            <div class = "order-lg-2 nav-btns   " style="transform: translateX(50px);">

                
                     
      <form action="home" method="get" id="searchForm" style="display:inline;">
          <input
              type="text"
              name="keyword"
              id="searchInput"
              placeholder="Tìm sản phẩm..."
              class="position-relative rounded-5 form-control-sm mt-3 mt-md-0"
              style="width: 200px; height: 35px; border: 1px solid transparent; background-color: rgba(207, 211, 203, .2);"
              value="<%= request.getParameter("keyword") != null ? request.getParameter("keyword") : "" %>"
          />
      </form>



                    
                
                
               
                <button type = "button" class = "btn position-relative" style="font-size: 20px;">
                   
                   <a href="products" style="color: black;"> <i class="fa-solid fa-screwdriver-wrench"></i></a>
                   
                </button>

               
               <a href="LoginServlet" class="text-reset" >
                <button type="button" class = "btn position-relative " style="font-size: 20px;">

                <i class="bi bi-person-circle"></i>
                


                </button>
                </a>
                
               <a href="add-to-cart?action=view" class="user">
                   <button type="button" class="btn position-relative" style="font-size: 20px;">
                       <i class="bi bi-cart"></i>
                   </button>
               </a>



            </div>

            <button class = "navbar-toggler border-0" type = "button" data-bs-toggle = "collapse" data-bs-target = "#navMenu">
                <span class = "navbar-toggler-icon"></span>
            </button>

            <div class = "collapse navbar-collapse order-lg-1  mb-20px" id = "navMenu" >
                <ul class = "navbar-nav mx-auto text-center">
                    <li class = "nav-item px-2 py-2">
                        <a class = "nav-link text-uppercase text-dark " href = "#header">Trang Chủ</a>
                    </li>

                   <li class = "nav-item px-2 py-2">
                   <a class = "nav-link text-uppercase text-dark " href = "#category">Bộ Sưu Tập</a>
                    </li>


                    <li class = "nav-item px-2 py-2">
                        <a class = "nav-link text-uppercase text-dark" href = "#special">Đặc Biệt</a>
                    </li>
                    <li class = "nav-item px-2 py-2">
                        <a class = "nav-link text-uppercase text-dark" href = "#blogs">Tin Tức</a>
                    </li>
                    <li class = "nav-item px-2 py-2">
                        <a class = "nav-link text-uppercase text-dark" href = "#about">Về Chúng Tôi </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
   
    <header  id="header "  class = "vh-60  carousel slide  "  data-bs-ride = "carousel" style = "padding-top: 95px " >
        <div id="" class="carousel slide" data-bs-ride="carousel"></div>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="assets/img/car11.jpg" class="d-block w-100" alt="anh1">
              </div>
              <div class="carousel-item">
                <img src="assets/img/car1.jpg" class="d-block w-100" alt="anh2">
              </div>
              <div class="carousel-item">
                <img src="assets/img/cv-50-0808.jpg" class="d-block w-100" alt="anh3">
              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>
          
    </header>


<section class="product-category">
  <h2 class="text-center">DANH MỤC SẢN PHẨM</h2>
  <div class="category-container" style="display: flex; flex-wrap: wrap; gap: 20px; justify-content: center;">
    <div class="category-item">
     <a href="category?prefix=ÁO"><img src="assets/img/ao.png" alt="Áo" /></a>

      <p>Áo</p>
    </div>
    <div class="category-item">
      <a href="category?id=2&name=Áo Khoác"><img src="assets/img/ao-khoac.png" alt="Áo Khoác" /></a>
      <p>Áo Khoác</p>
    </div>
    <div class="category-item">
    <a href="category?prefix=VÁY"><img src="assets/img/vay.png" alt="Váy" /></a>
      <p>Váy</p>
    </div>
    <div class="category-item">
      <a href="category?prefix=Chân Váy"><img src="assets/img/chan-vay.png" alt="Chân Váy" /></a>
      <p>Chân Váy</p>
    </div>
    <div class="category-item">
      <a href="category?prefix=Quần"><img src="assets/img/quan.png" alt="Quần" /></a>
      <p>Quần</p>
    </div>
    <div class="category-item">
      <a href="category?prefix=ĐẦM"><img src="assets/img/dam-1.png" alt="Đầm" /></a>
      <p>Đầm</p>
    </div>
    <div class="category-item">
      <a href="category?prefix=Đồ Bộ"><img src="assets/img/do-bo-1.png" alt="Đồ Bộ" /></a>
      <p>Đồ Bộ</p>
    </div>
    <div class="category-item">
      <a href="category?prefix=Set Đồ"><img src="assets/img/set-do.png" alt="Set Đồ" /></a>
      <p>Set Đồ</p>
    </div>
  </div>
</section>






  
   <section id="collection" class="py-5">
       <div class="container-fluid">
           <div class="title text-center">
               <h2 class="position-relative d-inline-block">NEW ARRIVAL</h2>
           </div>

           <div class="row g-0">
               <div class="collection-list mt-4 row gx-0 gy-3">
                  <c:forEach var="p" items="${products}">
                      <div class="col-md-6 col-lg-4 col-xl-3 p-2 new">
                          <div class="collection-img position-relative overflow-hidden">
                              <a href="detail?productId=${p.id}">
                                  <img src="assets/img/${p.image}" class="w-100" alt="${p.name}">
                              </a>
                          </div>
                          <div class="text-center">
                              <p class="text-capitalize my-1">${p.name}</p>
                              <span class="fw-bold">${p.price} VND</span>
                          </div>
                      </div>
                  </c:forEach>

               </div>
           </div>
       </div>
   </section>


   
   
    
    
    

   
    <section id="special" class="py-5">
        <div class="container-fluid">
          <div class="title text-center py-5">
            <h2 class="position-relative d-inline-block text-uppercase">special</h2>
          </div>

          <div class="special-list row g-0">
            <!-- Sản phẩm 1 -->
            <div class="col-md-6 col-lg-4 col-xl-3 p-2">
              <div class="special-img position-relative overflow-hidden">
                <a href="./special.jsp"><img src="assets/img/spe1.jpg" class="w-100"></a>
              </div>
              <div class="text-center special-product" data-id="sp1">
                <p class="product-name text-capitalize mt-3 mb-1">
                  QUẦN LOE ĐEN PHỦ VẠT CHÉO
                </p>
                <span class="product-price fw-bold d-block">1.398.000 VND</span>

              </div>
            </div>

            <!-- Sản phẩm 2 -->
            <div class="col-md-6 col-lg-4 col-xl-3 p-2">
              <div class="special-img position-relative overflow-hidden">
                <img src="assets/img/spe2.jpg" class="w-100">
              </div>
              <div class="text-center special-product" data-id="sp2">
                <p class="product-name text-capitalize mt-3 mb-1">
                  JUPE BÚT CHÌ ĐEN PHỦ TẦNG
                </p>
                <span class="product-price fw-bold d-block">1.498.000 VND</span>

              </div>
            </div>

            <!-- Sản phẩm 3 -->
            <div class="col-md-6 col-lg-4 col-xl-3 p-2">
              <div class="special-img position-relative overflow-hidden">
                <img src="assets/img/spe3.jpg" class="w-100">
              </div>
              <div class="text-center special-product" data-id="sp3">
                <p class="product-name text-capitalize mt-3 mb-1">
                  ÁO THUN TRẮNG THÊU HOA XANH
                </p>
                <span class="product-price fw-bold d-block">698.000 VND</span>

              </div>
            </div>

            <!-- Sản phẩm 4 -->
            <div class="col-md-6 col-lg-4 col-xl-3 p-2">
              <div class="special-img position-relative overflow-hidden">
                <img src="assets/img/spe4.jpg" class="w-100">
              </div>
              <div class="text-center special-product" data-id="sp4">
                <p class="product-name text-capitalize mt-3 mb-1">
                  QUẦN SUÔNG XANH DA TRỜI XẾP
                </p>
                <span class="product-price fw-bold d-block">1.198.000 VND</span>

              </div>
            </div>
          </div>
        </div>
      </section>

    
   
    
    
    

   
     <section id = "offers" class = "py-5 ">
        <div class = "container-fluid">
            <div class = "row d-flex align-items-center justify-content-center ">
                <div class = "offers-content ms-5">
                    <span class = "text-white">Giảm giá tới 40%</span>
                    <h2 class = "mt-2 mb-4 text-white">Ưu đãi giảm giá lớn!</h2>
                    <a href = "#" class = "btn">Mua Ngay</a>
                </div>
            </div>
        </div>
    </section> 
   
    <section id = "blogs" class = "py-5">
        <div class = "container">
            <div class = "title text-center py-5">
                <h2 class = "position-relative d-inline-block">Tin Tức Mới</h2>
            </div>

            <div class = "row g-3">
                <div class = "card border-0 col-md-6 col-lg-4 bg-transparent my-3">
                    <img src = "assets/img/mix-vay-dam-may.jpg" alt = "">
                    <div class = "card-body px-0">
                        <h4 class = "card-title">10 kiểu phối váy đám mây 'ăn gian tuổi'</h4>
                        <p class = "card-text mt-3 text-muted">Váy đám mây kết hợp áo polo và giày loafer là một trong nhữ
                            Váy đám mây nằm trong nhóm xu hướng hot năm nay. Kiểu váy tạo độ bồng bềnh bằng kỹ thuật xếp nếp ở gấu váy được cho là phù hợp nhiều lứa tuổi. Theo WWW, nhiều người yêu thích thiết kế vì trông dễ thương và tạo cảm giác trẻ. nhận định mốt này gắn liền sự quyến rũ, quyền lực, thanh lịch, văn hóa nhạc rock n roll.
                        </p>
                        <p class = "card-text">
                            <small class = "text-muted">
                                <span class = "text-centern text-uppercase ">Author:vnexpress  </span >
                            </small>
                        </p>
                        <a href = "#" class = "btn">Đọc Thêm</a>
                    </div>
                </div>

                <div class = "card border-0 col-md-6 col-lg-4 bg-transparent my-3 ">
                    <img src="assets/img/ronaldo.jpg" alt="">
                    <div class = "card-body px-0">
                        <h4 class = "card-title">Bạn gái Cristiano Ronaldo gợi cảm ở Venice</h4>
                        <p class = "card-text mt-3 text-muted">Người đẹp là khách mời của buổi công chiếu Queer, hôm 3/9 tại Liên hoan phim Venice lần thứ 81. Cô diện váy tôn ngực của Oscar de la Renta, kết hợp vòng cổ kim cương hình bông hoa.30 tuổi, gây chú ý sau thông tin đã bí mật kết hôn với Cristiano Ronaldo. Hồi tháng 8, trong hai video trên mạng xã hội, cầu thủ gọi cô là vợ. Theo kênh TV Guia (Bồ Đào Nha), cả hai có hợp đồng. 
                        </p>
                        <p class = "card-text">
                            <small class = "text-muted">
                                <span class = " text-center text-uppercase">Author:vnexpress </span>
                            </small>
                        </p>
                        <a href = "blog" class = "btn">Đọc Thêm</a>
                    </div>
                </div>

                <div class = "card border-0 col-md-6 col-lg-4 bg-transparent my-3">
                    <img src = "assets/img/xu-huong-hoa-tiet-da-bao.jpg" alt = "">
                    <div class = "card-body px-0">
                        <h4 class = "card-title">Thời Trang Họa tiết da báo hot trở lại 2024</h4>
                        <p class = "card-text mt-3 text-muted">Xuất hiện trên sàn diễn Thu Đông của Marni, Alaïa, Dior, họa tiết da báo trở thành mốt hot nửa cuối năm nay.
                            Giống quần jeans rộng thùng thình hay váy liền thân, họa tiết da báo là một trong những xu hướng thay đổi liên tục theo từng thời kỳ. Kể từ khi bắt đầu trở nên phổ biến vào những năm 1920, họa tiết đốm mô phỏng da báo, da hổ đã được xem là kinh điển, biểu tượng


                        </p>
                        <p class = "card-text">
                            <small class = "text-muted">
                                <span class = "text-center text-uppercase">Author:vnexpress </span>
                            </small>
                        </p>
                        <a href = "#" class = "btn">Đọc Thêm</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
   
    <section id = "about" class = "py-5 mb-5">
        <div class = "container">
            <div class = "row gy-lg-5 align-items-center">
                <div class = "col-lg-6 order-lg-1 text-center text-lg-start">
                    <div class = "title pt-3 pb-5">
                       <h2 class="position-relative d-inline-block ms-4 text-al ">Về chúng tôi</h2>
                    </div>
                    <p class = "lead  fw-bold  fs-5 lh-base " style="color: black;">CÔNG TY THỜI TRANG QUỐC TẾ DANH GIÁ</p>
                    <p>ELES, được thành lập từ năm 2006, là nhà phân phối độc quyền nhãn hàng thời trang cao cấp Lacoste tại Việt Nam, Cambodia, Myanmar và nhãn hàng giày Clarks tại Việt Nam. Trải qua hơn 15 năm hoạt động, công ty Danh Giá luôn không ngừng cố gắng hoàn thiện về chất lượng sản phẩm và dịch vụ để mang lại những trải nghiệm tốt nhất cho khách hàng.</p>
                </div>
                <div class = "col-lg-6 order-lg-0">
                    <div class="ratio ratio-16x9 ">
                        <video class="w-100" autoplay muted loop>
                            <source src="assets/video/📷saigon%20sunday%20-%20fashion%20film%20.mp4" type="video/mp4">
                        </video>
                 </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    
    <div class="container  mb-5   ">
        <div class="row">
          <div class="col-md-6">
            <img src="assets/img/el.jpg" alt="Image 1" class="equal-images">
          </div>
          <div class="col-md-6">
            <img src="assets/img/map.PNG" alt="Image 2" class="equal-images">
          </div>
        </div>
      </div>

    



   
    
   
    <section id = "newsletter" class = "py-5">
        <div class = "container">
            <div class = "d-flex flex-column align-items-center justify-content-center">
                <div class = "title text-center pt-3 pb-5">
                    <h2 class = "position-relative d-inline-block ms-4">Đăng Kí Để Nhận Thông Tin Mới Nhất</h2>
                </div>

                <p class = "text-center text-muted"></p>
                <div class = "input-group mb-3 mt-3">
                    <input type = "text" class = "form-control" placeholder="Đăng kí ngay ...">
                    <button class = "btn btn-primary " type = "submit">Subscribe</button>
                </div>
            </div>
        </div>
    </section>
    
    
    <footer class = "bg-white py-5">
        <div class = "container">
            <div class = "row text-white g-4">
                <div class = "col-md-6 col-lg-3">
                    <img src="assets/img/logo_color%20(1).png" alt="" class="w-50">
                    <p class = "text-white text-muted mt-3">ELISE - THƯƠNG HIỆU ĐỒNG PHỤC ĐẲNG CẤP CHO CÁC TẬP ĐOÀN LỚN</p>
                </div>

                <div class = "col-md-6 col-lg-3">
                    <h5 class = "fw-light text-dark">Links</h5>
                    <ul class = "list-unstyled">
                        <li class = "my-3">
                            <a href = "#" class = "text-white text-decoration-none text-muted">
                                <i class = "fas fa-chevron-right me-1"></i> Trang Chủ
                            </a>
                        </li>
                        <li class = "my-3">
                            <a href = "#" class = "text-white text-decoration-none text-muted">
                                <i class = "fas fa-chevron-right me-1"></i> Bộ Sưu Tập
                            </a>
                        </li>
                        <li class = "my-3">
                            <a href = "#" class = "text-white text-decoration-none text-muted">
                                <i class = "fas fa-chevron-right me-1"></i> Tin Tức 
                            </a>
                        </li>
                        <li class = "my-3">
                            <a href = "#" class = "text-white text-decoration-none text-muted">
                                <i class = "fas fa-chevron-right me-1"></i> Về Chúng Tôi
                            </a>
                        </li>
                    </ul>
                </div>

                <div class = "col-md-6 col-lg-3">
                    <h5 class = "fw-light mb-3 text-dark">Contact Us</h5>
                    <div class = "d-flex justify-content-start align-items-start my-2 text-muted">
                        <span class = "me-3">
                            <i class = "fas fa-map-marked-alt"></i>
                        </span>
                        <span class = "fw-light">
                            201.Trần Phú Thừa Thiên Huế
                        </span>
                    </div>
                    <div class = "d-flex justify-content-start align-items-start my-2 text-muted">
                        <span class = "me-3">
                            <i class = "fas fa-envelope"></i>
                        </span>
                        <span class = "fw-light">
                            11a8hoangkimquyphu@gmail.com
                        </span>
                    </div>
                    <div class = "d-flex justify-content-start align-items-start my-2 text-muted">
                        <span class = "me-3">
                            <i class = "fas fa-phone-alt"></i>
                        </span>
                        <span class = "fw-light">
                            0848606918
                        </span>
                    </div>
                </div>

                <div class = "col-md-6 col-lg-3">
                    <h5 class = "fw-light mb-3 text-dark">Follow Us</h5>
                    <div>
                        <ul class = "list-unstyled d-flex">
                            <li>
                                <a href = "https://www.facebook.com/phu20023/" class = "text-white text-decoration-none text-muted fs-4 me-4">
                                    <i class = "fab fa-facebook-f"></i>
                                </a>
                            </li>
                            <li>
                                <a href = "#" class = "text-white text-decoration-none text-muted fs-4 me-4">
                                    <i class = "fab fa-twitter"></i>
                                </a>
                            </li>
                            <li>
                                <a href = "#" class = "text-white text-decoration-none text-muted fs-4 me-4">
                                    <i class = "fab fa-instagram"></i>
                                </a>
                            </li>
                            <li>
                                <a href = "#" class = "text-white text-decoration-none text-muted fs-4 me-4">
                                    <i class = "fab fa-pinterest"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <div class="  row col-12  text-center bg-white text-dark">
        <p>Bản Quyền Thuộc Về Công Ty TNHH Phú Coder</p>
    </div>
    

   

    
    
    <!--js-->
    
    
   


      










<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

<script>
    document.getElementById("searchInput").addEventListener("keydown", function(event) {
        if (event.key === "Enter") {
            event.preventDefault(); // Ngăn reload mặc định nếu cần
            document.getElementById("searchForm").submit(); // Gửi form khi nhấn Enter
        }
    });
</script>

</body>
</html>