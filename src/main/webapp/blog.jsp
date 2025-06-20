<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Tin Tức</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;1,500;1,700&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
    />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"
    />
    <link rel="stylesheet" href="assets/blog/blog.css" />
  </head>

  <nav class="navbar navbar-expand-lg navbar-light bg-white py-4 fixed-top">
    <div class="container">
      <a
        class="navbar-brand d-flex justify-content-between align-items-center order-lg-0"
        href="home"
      >
        <img src="assets/img/logo_color%20(1).png" alt="logo" />
      </a>

      <div class="order-lg-2 nav-btns" style="transform: translateX(50px)">
        <input
          type="text "
          placeholder="Tìm sản phẩn..."
          class="position-relative rounded-5 form-control-sm"
          style="
            width: 200px;
            height: 35px;
            border: 1px solid transparent;
            background-color: rgba(207, 211, 203, 0.2);
          "
        />

        <button
          type="button"
          class="btn position-relative"
          style="font-size: 20px"
        >
          <i class="bi bi-heart"></i>
        </button>

        <a href="../login/login.html" class="text-reset">
          <button
            type="button"
            class="btn position-relative"
            style="font-size: 20px"
          >
            <i class="bi bi-person-circle"></i></button
        ></a>

        <button
          type="button"
          class="btn position-relative"
          style="font-size: 20px"
        >
          <i class="bi bi-cart"></i>
        </button>
      </div>

      <button
        class="navbar-toggler border-0"
        type="button"
        data-bs-toggle="collapse"
        data-bs-target="#navMenu"
      >
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse order-lg-1 mb-20px" id="navMenu">
        <ul class="navbar-nav mx-auto text-center">
          <li class="nav-item px-2 py-2">
            <a class="nav-link text-uppercase text-dark" href="#header"
              >Trang Chủ</a
            >
          </li>
          <li class="nav-item px-2 py-2">
            <a class="nav-link text-uppercase text-dark" href="#collection"
              >Bộ Sưu Tập</a
            >
          </li>
          <li class="nav-item px-2 py-2">
            <a class="nav-link text-uppercase text-dark" href="#special"
              >Đặc Biệt</a
            >
          </li>
          <li class="nav-item px-2 py-2">
            <a class="nav-link text-uppercase text-dark" href="#blogs"
              >Tin Tức</a
            >
          </li>
          <li class="nav-item px-2 py-2">
            <a class="nav-link text-uppercase text-dark" href="#about"
              >Về Chúng Tôi
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <body class="bg-white text-dark" style="padding-top: 7rem">
    <div class="container mt-5">
      <div class="row">
        <div class="col-md-8">
          <h2 class="news-title">Bạn gái Cristiano Ronaldo gợi cảm ở Venice</h2>
          <div class="news-time">15:15 08/10/2024</div>
          <div
            style="
              display: flex;
              flex-direction: column;
              align-items: flex-start;
            "
          >
            <img src="assets/img/ronaldo.jpg" alt="" style="width: 100%" />
            <p style="margin: 0">
              Người đẹp là khách mời của buổi công chiếu Queer, hôm 3/9 tại Liên
              hoan phim Venice lần thứ 81. Cô diện váy tôn ngực của Oscar de la
              Renta, kết hợp vòng cổ kim cương hình bông hoa. Georgina
              Rodriguez, 30 tuổi, gây chú ý sau thông tin đã bí mật kết hôn với
              Cristiano Ronaldo. Hồi tháng 8, trong hai video trên mạng xã hội,
              cầu thủ gọi cô là vợ. Theo kênh TV Guia (Bồ Đào Nha), cả hai có
              hợp đồng hôn nhân. Nếu chia tay, siêu sao 39 tuổi có nghĩa vụ trợ
              cấp 110.000 USD mỗi tháng cho Georgina đến hết đời
            </p>
          </div>

          <div
            style="
              display: flex;
              flex-direction: column;
              align-items: flex-start;
            "
          >
            <img
              src="assets/img/Georgina-7112-1725419050.jpg"
              alt=""
              style="width: 100%"
            />
            <p style="margin: 0">
              Người đẹp là khách mời của buổi công chiếu Queer, hôm 3/9 tại Liên
              hoan phim Venice lần thứ 81. Cô diện váy tôn ngực của Oscar de la
              Renta, kết hợp vòng cổ kim cương hình bông hoa. Georgina
              Rodriguez, 30 tuổi, gây chú ý sau thông tin đã bí mật kết hôn với
              Cristiano Ronaldo. Hồi tháng 8, trong hai video trên mạng xã hội,
              cầu thủ gọi cô là vợ. Theo kênh TV Guia (Bồ Đào Nha), cả hai có
              hợp đồng hôn nhân. Nếu chia tay, siêu sao 39 tuổi có nghĩa vụ trợ
              cấp 110.000 USD mỗi tháng cho Georgina đến hết đời
            </p>
          </div>

          <div
            style="
              display: flex;
              flex-direction: column;
              align-items: flex-start;
            "
          >
            <img
              src="assets/img/Daniel-Craig-5152-1725419050.jpg"
              alt=""
              style="width: 100%"
            />
            <p style="margin: 0">
              Người đẹp là khách mời của buổi công chiếu Queer, hôm 3/9 tại Liên
              hoan phim Venice lần thứ 81. Cô diện váy tôn ngực của Oscar de la
              Renta, kết hợp vòng cổ kim cương hình bông hoa. Georgina
              Rodriguez, 30 tuổi, gây chú ý sau thông tin đã bí mật kết hôn với
              Cristiano Ronaldo. Hồi tháng 8, trong hai video trên mạng xã hội,
              cầu thủ gọi cô là vợ. Theo kênh TV Guia (Bồ Đào Nha), cả hai có
              hợp đồng hôn nhân. Nếu chia tay, siêu sao 39 tuổi có nghĩa vụ trợ
              cấp 110.000 USD mỗi tháng cho Georgina đến hết đời
            </p>
          </div>
        </div>

        <!-- Sidebar Section -->
        <div class="col-md-4">
          <div class="sidebar-section">
            <h5>Bạn Thân Phái Đẹp</h5>

            <div class="sidebar-news">
              <img src="assets/img/tt01.jpeg" alt="Director" />
              <p>
                Đạo diễn Phạm Duy Khánh nổi tiếng với cảnh trao vương miện cho
                Hoa hậu.
              </p>
            </div>

            <div class="sidebar-news">
              <img src="assets/img/tt02.jpg" alt="Fashion Week" />
              <p>
                Anh Tú Atus gặp gỡ dàn sao quốc tế tại Paris Fashion Week 2024.
              </p>
            </div>

            <div class="sidebar-news">
              <img src="assets/img/tt03.jpg" alt="Film Making" />
              <p>Phạm Thoại chi 5 tỷ làm phim xuyên không.</p>
            </div>

            <div class="sidebar-news">
              <img src="assets/img/tt04.jpg" alt="Miss Contest" />
              <p>
                Á hậu Đỗ Hà Trang sẵn sàng chinh chiến tại The Miss Globe 2024.
              </p>
            </div>
            <div class="sidebar-news">
              <img src="assets/img/tt05.jpg" alt="Miss Contest" />
              <p>
                Dàn người đẹp Miss Cosmo trao quà cho học sinh khó khăn ở Long
                An
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <footer class="bg-white py-4">
      <div class="container">
        <div class="row text-white g-4">
          <div class="col-md-6 col-lg-3">
            <img src="assets/img/logo_color%20(1).png" alt="" class="w-50" />
            <p class="text-white text-muted mt-3">
              ELISE - THƯƠNG HIỆU ĐỒNG PHỤC ĐẲNG CẤP CHO CÁC TẬP ĐOÀN LỚN
            </p>
          </div>

          <div class="col-md-6 col-lg-3">
            <h5 class="fw-light text-dark">Links</h5>
            <ul class="list-unstyled">
              <li class="my-3">
                <a href="#" class="text-white text-decoration-none text-muted">
                  <i class="fas fa-chevron-right me-1"></i> Trang Chủ
                </a>
              </li>
              <li class="my-3">
                <a href="#" class="text-white text-decoration-none text-muted">
                  <i class="fas fa-chevron-right me-1"></i> Bộ Sưu Tập
                </a>
              </li>
              <li class="my-3">
                <a href="#" class="text-white text-decoration-none text-muted">
                  <i class="fas fa-chevron-right me-1"></i> Tin Tức
                </a>
              </li>
              <li class="my-3">
                <a href="#" class="text-white text-decoration-none text-muted">
                  <i class="fas fa-chevron-right me-1"></i> Về Chúng Tôi
                </a>
              </li>
            </ul>
          </div>

          <div class="col-md-6 col-lg-3">
            <h5 class="fw-light mb-3 text-dark">Contact Us</h5>
            <div
              class="d-flex justify-content-start align-items-start my-2 text-muted"
            >
              <span class="me-3">
                <i class="fas fa-map-marked-alt"></i>
              </span>
              <span class="fw-light"> 201.Trần Phú Thừa Thiên Huế </span>
            </div>
            <div
              class="d-flex justify-content-start align-items-start my-2 text-muted"
            >
              <span class="me-3">
                <i class="fas fa-envelope"></i>
              </span>
              <span class="fw-light"> 11a8hoangkimquyphu@gmail.com </span>
            </div>
            <div
              class="d-flex justify-content-start align-items-start my-2 text-muted"
            >
              <span class="me-3">
                <i class="fas fa-phone-alt"></i>
              </span>
              <span class="fw-light"> 0848606918 </span>
            </div>
          </div>

          <div class="col-md-6 col-lg-3">
            <h5 class="fw-light mb-3 text-dark">Follow Us</h5>
            <div>
              <ul class="list-unstyled d-flex">
                <li>
                  <a
                    href="https://www.facebook.com/phu20023/"
                    class="text-white text-decoration-none text-muted fs-4 me-4"
                  >
                    <i class="fab fa-facebook-f"></i>
                  </a>
                </li>
                <li>
                  <a
                    href="#"
                    class="text-white text-decoration-none text-muted fs-4 me-4"
                  >
                    <i class="fab fa-twitter"></i>
                  </a>
                </li>
                <li>
                  <a
                    href="#"
                    class="text-white text-decoration-none text-muted fs-4 me-4"
                  >
                    <i class="fab fa-instagram"></i>
                  </a>
                </li>
                <li>
                  <a
                    href="#"
                    class="text-white text-decoration-none text-muted fs-4 me-4"
                  >
                    <i class="fab fa-pinterest"></i>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <div class="row col-12 text-center bg-white text-dark">
      <p>Bản Quyền Thuộc Về Công Ty TNHH Phú Coder</p>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
  </body>
</html>
