<?php      
    session_start();
    include("DungChung.php");
    include("Connect.php");
    $result = mysqli_query($db, "SELECT COUNT(MaTinTuc) from tintuc");
    $tintuc=mysqli_fetch_array($result);
    $result1 = mysqli_query($db, "SELECT COUNT(MaSP) from sanpham");
    $tintuc1=mysqli_fetch_array($result1);
    $result2 = mysqli_query($db, "SELECT COUNT(MaKH) from khachhang");
    $tintuc2=mysqli_fetch_array($result2);
    $result3 = mysqli_query($db, "SELECT COUNT(MaNV) from nhanvien");
    $tintuc3=mysqli_fetch_array($result3);
?>
<div class="content mt-3">
    <div class="col-sm-12">
        <div class="alert  alert-success alert-dismissible fade show" role="alert">
            <span class="badge badge-pill badge-success">Hi <?php echo $_SESSION['name'] ?> </span> Bạn đã đăng nhập
            thành công
            <!-- Dấu x để tắt bạn đã đăng nhập thành công -->
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    </div>
    <p class="p" style="color:black">Báo Cáo Thống Kê</p>
    <div class="col-sm-6 col-lg-3">
        <div class="card text-white bg-flat-color-1">
            <div class="card-body pb-0">
                <h4 class="mb-0" style="text-align: center;">
                    <i class="pe-7s-cash"></i>
                    <span class="count"><?php echo $tintuc[0] ?> &nbsp Tin Tức</span>
                </h4>
                <p class="text-light" style="text-align: center;margin-top:20px"></p>
            </div>
        </div>
    </div>

    <div class="col-sm-6 col-lg-3">
        <div class="card text-white bg-flat-color-2">
            <div class="card-body pb-0">
                <h4 class="mb-0" style="text-align: center;">
                    <span class="count"><?php echo $tintuc1[0] ?> &nbsp Sản Phẩm</span>
                </h4>
                <p class="text-light" style="text-align: center;margin-top:20px"></p>
            </div>
        </div>
    </div>

    <div class="col-sm-6 col-lg-3">
        <div class="card text-white bg-flat-color-3">
            <div class="card-body pb-0">
                <h4 class="mb-0" style="text-align: center;">
                    <span class="count"><?php echo $tintuc2[0] ?> &nbsp Khách Hàng</span>
                </h4>
                <p class="text-light" style="text-align: center;margin-top:20px"></p>
            </div>
        </div>
    </div>

    <div class="col-sm-6 col-lg-3">
        <div class="card text-white bg-flat-color-4">
            <div class="card-body pb-0">
                <h4 class="mb-0" style="text-align: center;">
                    <span class="count"><?php echo $tintuc3[0] ?> &nbsp Nhân Viên</span>
                </h4>
                <p class="text-light" style="text-align: center;margin-top:20px"></p>
            </div>
        </div>
    </div>

</div>
<p class="p" style="color:black">Danh Sách Các Sản Phẩm Đồ Da Dụng Nhật Cao Cấp Đang Thịnh Hành</p>
<div class="AnhLapTop">
    <div class="anhLapTop">
        <img src="../Image/Dodadung/xoong.jpg" alt="" class="imagelaptop">
        <p style="color:red">[Mới 100%] Bộ Xoong</p>
        <p style="color:blue">(Xoong to-nhỏ, nồi áp suất)</p>
        <p style="color:black">890.000 VND</p>
    </div>
    <div class="anhLapTop2">
        <img src="../Image/Dodadung/chao.jpg" alt="" class="imagelaptop">
        <p style="color:red">[Mới 100%] Bộ chảo</p>
        <p style="color:blue">(Chảo Chống Dính, Chảo Đá)</p>
        <p style="color:black">870.000 VND</p>
    </div>
    <div class="anhLapTop3">
        <img src="../Image/Dodadung/dao.jpg" alt="" class="imagelaptop">
        <p style="color:red">[Mới 100%] Bộ dao</p>
        <p style="color:blue">(Dao Cá, Dao Thái thịt, Dao Thái Rau) </p>
        <p style="color:black">290.000 VND</p>
    </div>
    <div class="anhLapTop4">
        <img src="../Image/Dodadung/keo.jpg" alt="" class="imagelaptop">
        <p style="color:red">[Mới 100%] Bộ Kéo</p>
        <p style="color:blue">(Kéo Cắt Thịt, Kéo Cắt Giấy)</p>
        <p style="color:black">590.000 VND</p>
    </div>
</div>

</div>

</div>