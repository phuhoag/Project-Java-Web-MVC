<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shop elise</title>
    <link rel="stylesheet" href="assets/detail/detail.css">
    <link rel="shortcut icon" href="assets/img/logo_color%20(1).png" type="image/x-icon">
    <!--css-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;1,500;1,700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body>
    <nav class = "navbar navbar-expand-lg navbar-light bg-white py-4 fixed-top">
        <div class = "container">
            <a class = "navbar-brand d-flex justify-content-between align-items-center order-lg-0" href = "home">
                <img src = "assets/img/logo_color%20(1).png" alt = "logo">
              
            </a>
            
            
            <div class = "order-lg-2 nav-btns   " style="transform: translateX(50px);">

                        <input type="text " placeholder="   Tìm sản phẩn..." class="position-relative rounded-5 form-control-sm  " style="width: 200px; height: 35px; border: 1px solid transparent; background-color: rgba(207, 211, 203, .2);">
                
                <button type = "button" class = "btn position-relative" style="font-size: 20px;">
                   
                    <i class="bi bi-heart"></i>
                
                </button>

               
                <a href="../login/login.html" class="io" ><button type="button" class = "btn position-relative" style="font-size: 20px;" >
                    <i class="bi bi-person-circle"></i>
                        
                    </button></a>

                    <a href="./cart.jsp" class="user">
                        <button type="button" class="btn position-relative" style="font-size: 20px;">
                            <i class="bi bi-cart"></i>

                        </button>
                    </a>
                    
                  
            </div>

            <button class = "navbar-toggler border-0" type = "button" data-bs-toggle = "collapse" data-bs-target = "#navMenu">
                <span class = "navbar-toggler-icon"></span>
            </button>

            <div class = "collapse navbar-collapse order-lg-1  mb-20px" id = "navMenu">
                <ul class = "navbar-nav mx-auto text-center">
                    <li class = "nav-item px-2 py-2">
                        <a class = "nav-link text-uppercase text-dark " href = "#header">Trang Chủ</a>
                    </li>
                    <li class = "nav-item px-2 py-2">
                        <a class = "nav-link text-uppercase text-dark" href = "#collection">Bộ Sưu Tập</a>
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
    
 
   

    <div class="container  " style="margin-top: 9rem;">
        <div class="row">
           
            <div class="col-md-6 ">
                <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                      <div class="carousel-item active">
                        <img src="assets/img/anh1.jpg" class="d-block w-100" alt="...">
                      </div>
                      <div class="carousel-item">
                        <img src="assets/img/anh2.jpg" class="d-block w-100" alt="...">
                      </div>
                      <div class="carousel-item">
                        <img src="assets/img/anh3.jpg" class="d-block w-100" alt="...">
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
                
            </div>

          
            <div class="col-md-6">
                <h2 >ĐẦM TƠ TRẮNG CUỐN HOA XÒE</h2>
                <p>2.498.000 VND</p>
                <p class="sku" style="color: black;">SKU: FS2401228DIWOBK</p >

                
                <div class="my-3">
                    <label for="size" class="form-label">Kích cỡ</label>
                    <div>
                        <button class="btn btn-outline-secondary mx-1">S</button>
                        <button class="btn btn-outline-secondary mx-1">M</button>
                        <button class="btn btn-outline-secondary mx-1">L</button>
                        <button class="btn btn-outline-secondary mx-1">XL</button>
                    </div>
                </div>

                
          <c:choose>
              <c:when test="${product != null}">
                  <form action="add-to-cart" method="post">
                      <input type="hidden" name="id" value="${product.id}" />
                      <input type="hidden" name="name" value="${product.name}" />
                      <input type="hidden" name="price" value="${product.price}" />
                      <input type="hidden" name="imageUrl" value="assets/img/${product.image}" />

                      <div class="my-3">
                          <label for="quantity" class="form-label">Số lượng</label>
                          <div class="input-group w-50">
                              <button type="button" class="btn btn-outline-secondary" onclick="changeQuantity(-1)">-</button>
                              <input type="number" id="quantity" name="quantity" class="form-control text-center" value="1" min="1" required>
                              <button type="button" class="btn btn-outline-secondary" onclick="changeQuantity(1)">+</button>
                          </div>
                      </div>

                      <div class="my-4">
                          <button type="submit" class="btn btn-custom me-3">Thêm vào giỏ</button>
                      </div>
                  </form>
              </c:when>
              <c:otherwise>

              </c:otherwise>
          </c:choose>






                <div class="mt-4">
                    <h5>Đặc điểm nổi bật:</h5>
                    <ul>
                        <li>80% Polyamide, 20% Spandex</li>
                        <li>Kiểu dệt Knit - Jacquard</li>
                        <li>Công nghệ Exdry, thoáng mát và nhanh khô</li>
                        <li>Công nghệ Seamless không đường may</li>
                        <li>Người mẫu: 181cm - 76kg, mặc áo 2XL</li>
                        <li>Hỗ trợ sản xuất tại Việt Nam</li>
                    </ul>
                </div>
    
               
                <div class="mt-4">
                    <p><strong>Đổi trả:</strong> 60 ngày đổi trả với bất kỳ lý do gì</p>
                    <p><strong>Hotline:</strong> 1900-xxxx-72 (8:30 - 22:00)</p>
                </div>
                
                
            </div>
        </div>
    </div>

    <section id = "special" class = "py-5">
        <div class = "container-fluid">
            <div class = "title text-center py-5">
                <h3 class = "position-relative d-inline-block text-uppercase"> Sản Phẩm Liên Quan </h3>
            </div>

            <div class = "special-list row g-0">
                <div class = "col-md-6 col-lg-4 col-xl-3 p-2">
                    <div class = "special-img position-relative overflow-hidden">
                        <img src = "assets/img/lq1.jpg" class = "w-100">
                        <span class = "position-absolute d-flex align-items-center justify-content-center text-primary fs-4">
                            
                        </span>
                    </div>
                    <div class = "text-center">
                        <p class = "text-capitalize mt-3 mb-1">QUẦN LOE ĐEN PHỦ VẠT CHÉO</p>
                        <span class = "fw-bold d-block">1.398.000 VND</span>
                       
                    </div>
                </div>

                <div class = "col-md-6 col-lg-4 col-xl-3 p-2">
                    <div class = "special-img position-relative overflow-hidden">
                        <img src = "assets/img/lq2.jpg" class = "w-100">
                        <span class = "position-absolute d-flex align-items-center justify-content-center text-primary fs-4">
                           
                        </span>
                    </div>
                    <div class = "text-center">
                        <p class = "text-capitalize mt-3 mb-1">JUPE BÚT CHÌ ĐEN PHỦ TẦNG</p>
                        <span class = "fw-bold d-block">1.498.000 VND</span>
                        
                    </div>
                </div>

                <div class = "col-md-6 col-lg-4 col-xl-3 p-2">
                    <div class = "special-img position-relative overflow-hidden">
                        <img src = "assets/img/lq3.jpg" class = "w-100">
                        <span class = "position-absolute d-flex align-items-center justify-content-center text-primary fs-4">
                          
                        </span>
                    </div>
                    <div class = "text-center">
                        <p class = "text-capitalize mt-3 mb-1">ÁO THUN TRẮNG THÊU HOA XANH</p>
                        <span class = "fw-bold d-block">698.000 VND</span>
                      
                    </div>
                </div>

                <div class = "col-md-6 col-lg-4 col-xl-3 p-2">
                    <div class = "special-img position-relative overflow-hidden">
                        <img src = "assets/img/lq4.jpg" class = "w-100">
                        <span class = "position-absolute d-flex align-items-center justify-content-center text-primary fs-4">
                           
                        </span>
                    </div>
                    <div class = "text-center">
                        <p class = "text-capitalize mt-3 mb-1">QUẦN SUÔNG XANH DA TRỜI XẾP </p>
                        <span class = "fw-bold d-block">1.198.000 VND</span>
                        
                    </div>
                </div>
            </div>
        </div>
    </section>


    <div class="container mt-5">
        <h2 class="text-center mb-4 " >Đánh giá từ khách hàng</h2>
        <div class="row">
            <div class="col-md-4 ">
                <div class="card mb-4">
                    <img src="assets/img/dg6.jpg" class="card-img-top" alt="">
                    <div class="card-body">
                        <h5 class="card-title">Trần Thị Minh Anh</h5>
                        <div class="rating mb-2">
                            <span class="text-warning">&#9733;</span>
                            <span class="text-warning">&#9733;</span>
                            <span class="text-warning">&#9733;</span>
                            <span class="text-secondary">&#9733;</span>
                            <span class="text-secondary">&#9733;</span>
                        </div>
                        <p class="card-text">Chất lượng sản phẩm ổn, nhưng thời gian giao hàng hơi lâu.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 ">
                <div class="card mb-4">
                    <img src="assets/img/dg2.jpg" class="card-img-top" alt="Trần Thị B">
                    <div class="card-body">
                        <h5 class="card-title">Trần Hà Bảo Ngọc</h5>
                        <div class="rating mb-2">
                            <span class="text-warning">&#9733;</span>
                            <span class="text-warning">&#9733;</span>
                            <span class="text-warning">&#9733;</span>
                            <span class="text-secondary">&#9733;</span>
                            <span class="text-secondary">&#9733;</span>
                        </div>
                        <p class="card-text">Chất lượng sản phẩm ổn, nhưng thời gian giao hàng hơi lâu.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4  ">
                <div class="card mb-4">
                    <img src="assets/img/dg3.jpg" class="card-img-top" alt="Lê Văn C">
                    <div class="card-body">
                        <h5 class="card-title">Lê Thị Mai</h5>
                        <div class="rating mb-2">
                            <span class="text-warning">&#9733;</span>
                            <span class="text-warning">&#9733;</span>
                            <span class="text-warning">&#9733;</span>
                            <span class="text-warning">&#9733;</span>
                            <span class="text-warning">&#9733;</span>
                        </div>
                        <p class="card-text">Dịch vụ tuyệt vời và sản phẩm hoàn hảo! Tôi sẽ quay lại.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>







   <div class="container">

    <div class="row thong-tin-ct d-flex ps-0 mt-3"> 
        <a href="#dg-kh" class="col-md-11 text-dark" data-bs-toggle="collapse" aria-expanded="false" aria-controls="sizeGuide"><h2 class="col-md-8 mt-3 text-dark"><h2 class=" mt-3 text-dark text-decoration-none">Đánh giá từ Khách Hàng</h2></a>
        <h2 class="col-md-1 mt-3 text-end mb-0 pt-2 pe-1 text-secondary fw-bold">
            <svg xmlns="http://www.w3.org/2000/svg" width="34" height="34" fill="currentColor" class="bi bi-chevron-down" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708"/>
            </svg>
        </h2>
    </div>
    <div class="collapse mt-3" id="dg-kh">
        <img src="assets/img/5sss.PNG" alt="" class="img-fluid">
        <h4>Khách hàng phản hồi </h4>
        <h6 class="small text-secondary">(1 - 5 trong 475 lượt đánh giá)</h6>
        <div class="row khach-hang-dg mt-4 ">
            <div class="col-md-1 ps-5 pt-1">
                <img src="assets/img/user.png" alt="" class="img-fluid rounded-circle">
            </div>
            <div class="col-md-10 ">
                <h6 class="mb-0">Phucoder@gmail.com</h6>
                <h6 class="text-secondary">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                      </svg>    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                      </svg>    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                      </svg>    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                      </svg>    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-half" viewBox="0 0 16 16">
                        <path d="M5.354 5.119 7.538.792A.52.52 0 0 1 8 .5c.183 0 .366.097.465.292l2.184 4.327 4.898.696A.54.54 0 0 1 16 6.32a.55.55 0 0 1-.17.445l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256a.5.5 0 0 1-.146.05c-.342.06-.668-.254-.6-.642l.83-4.73L.173 6.765a.55.55 0 0 1-.172-.403.6.6 0 0 1 .085-.302.51.51 0 0 1 .37-.245zM8 12.027a.5.5 0 0 1 .232.056l3.686 1.894-.694-3.957a.56.56 0 0 1 .162-.505l2.907-2.77-4.052-.576a.53.53 0 0 1-.393-.288L8.001 2.223 8 2.226z"/>
                      </svg> 
                </h6>
                <h6 class="small text-secondary">2024-06-11 9:30am | phân loại hàng: Hường,M,SL2</h6>
                <h6 class="small text-secondary pb-2">Tôi hoàn toàn thích chiếc áo hoodie này. Nó mềm mại như bơ ở bên trong và mịn như nhung ở bên ngoài. Chất lượng tuyệt vời và đường cắt rất tôn dáng. Nó đánh lạc hướng sự chú ý khỏi bụng tôi và làm cho đôi chân tôi trông thon thả hơn. Tôi không thể yêu cầu gì hơn nữa. Rất đáng tiền</h6>
            </div>
            
        </div>
        <div class="row khach-hang-dg  mt-4">
            <div class="col-md-1 ps-5 pt-1">
                <img src="assets/img/user.png" alt="" class="img-fluid rounded-circle">
            </div>
            <div class="col-md-10 ">
                <h6 class="mb-0">Phucoder@gmail.com</h6>
                <h6 class="text-secondary">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                      </svg>    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                      </svg>    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                      </svg>    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                      </svg>    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-half" viewBox="0 0 16 16">
                        <path d="M5.354 5.119 7.538.792A.52.52 0 0 1 8 .5c.183 0 .366.097.465.292l2.184 4.327 4.898.696A.54.54 0 0 1 16 6.32a.55.55 0 0 1-.17.445l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256a.5.5 0 0 1-.146.05c-.342.06-.668-.254-.6-.642l.83-4.73L.173 6.765a.55.55 0 0 1-.172-.403.6.6 0 0 1 .085-.302.51.51 0 0 1 .37-.245zM8 12.027a.5.5 0 0 1 .232.056l3.686 1.894-.694-3.957a.56.56 0 0 1 .162-.505l2.907-2.77-4.052-.576a.53.53 0 0 1-.393-.288L8.001 2.223 8 2.226z"/>
                      </svg> 
                </h6>
                <h6 class="small text-secondary">2024-06-11 9:30am | phân loại hàng: Hường,M,SL2</h6>
                <h6 class="small text-secondary pb-2">Tôi hoàn toàn thích chiếc áo hoodie này. Nó mềm mại như bơ ở bên trong và mịn như nhung ở bên ngoài. Chất lượng tuyệt vời và đường cắt rất tôn dáng. Nó đánh lạc hướng sự chú ý khỏi bụng tôi và làm cho đôi chân tôi trông thon thả hơn. Tôi không thể yêu cầu gì hơn nữa. Rất đáng tiền</h6>
            </div>
            
        </div>
        
        
        <div class="row khach-hang-dg  mt-4">
            <div class="col-md-1 ps-5 pt-1">
                <img src="assets/img/user.png" alt="" class="img-fluid rounded-circle">
            </div>
            <div class="col-md-10 ">
                <h6 class="mb-0">Phucoder@gmail.com</h6>
                <h6 class="text-secondary">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                      </svg>    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                      </svg>    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                      </svg>    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                      </svg>    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-half" viewBox="0 0 16 16">
                        <path d="M5.354 5.119 7.538.792A.52.52 0 0 1 8 .5c.183 0 .366.097.465.292l2.184 4.327 4.898.696A.54.54 0 0 1 16 6.32a.55.55 0 0 1-.17.445l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256a.5.5 0 0 1-.146.05c-.342.06-.668-.254-.6-.642l.83-4.73L.173 6.765a.55.55 0 0 1-.172-.403.6.6 0 0 1 .085-.302.51.51 0 0 1 .37-.245zM8 12.027a.5.5 0 0 1 .232.056l3.686 1.894-.694-3.957a.56.56 0 0 1 .162-.505l2.907-2.77-4.052-.576a.53.53 0 0 1-.393-.288L8.001 2.223 8 2.226z"/>
                      </svg> 
                </h6>
                <h6 class="small text-secondary">2024-06-11 9:30am | phân loại hàng: Hường,M,SL2</h6>
                <h6 class="small text-secondary pb-2">Tôi hoàn toàn thích chiếc áo hoodie này. Nó mềm mại như bơ ở bên trong và mịn như nhung ở bên ngoài. Chất lượng tuyệt vời và đường cắt rất tôn dáng. Nó đánh lạc hướng sự chú ý khỏi bụng tôi và làm cho đôi chân tôi trông thon thả hơn. Tôi không thể yêu cầu gì hơn nữa. Rất đáng tiền</h6>
            </div>
            
        </div>
        <div class="text-center">
            <div class="bg-light p-2 m-3 fw-bold btn ">Tải thêm lượt đánh giá</div>
        </div>
    </div> 



   </div>
   



    <footer class = "bg-white py-5 ">
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
    </footer >
    <div class="  text-center bg-white text-dark">
        <p>Bản Quyền Thuộc Về Công Ty TNHH Phú Coder</p>
    </div>
    
    

<script>
    function changeQuantity(change) {
        const quantityInput = document.getElementById("quantity");
        let current = parseInt(quantityInput.value);
        if (!isNaN(current)) {
            let newValue = current + change;
            if (newValue < 1) newValue = 1;
            if (newValue > 99) newValue = 99;
            quantityInput.value = newValue;
        } else {
            quantityInput.value = 1;
        }
    }
</script>
   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="../detail/detail.html"></script>
</body>
</html>