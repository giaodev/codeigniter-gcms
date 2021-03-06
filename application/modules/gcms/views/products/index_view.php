<div class="col-md-10 index_view">

    <div class="panel panel-default">
        <div class="panel-heading">
            <h1 class="panel-title"><?php echo $title; ?></h1>
        </div>
        <div class="panel-body">
            <?php if (isset($success)): ?>
                <div class="alert alert-success" role="alert"><?php echo $success; ?></div>
            <?php endif; ?>
            <?php if (isset($error)): ?>
                <div class="alert alert-warning" role="alert"><?php echo $error; ?></div>
            <?php endif; ?>
            <div class="text-right">
                <p><?php echo $count_all; ?> mục</p>
            </div>
            <form action="<?php echo base_url() . "gcms/products/delete_all"; ?>" method="post">
                <div class="table-responsive">
                    <table class="table table-striped
                    ">
                    <tr>
                        <th><label class="checkbox_form"><input type="checkbox" id="checkAll"/><span class="checkmark"></span></label></th>
                        <th>STT</th>
                        <th>Hình ảnh</th>
                        <th>Tên</th>
                        <th>Giá</th>
                        <th>Chuyên mục</th>
                        <th>Ngày tạo</th>
                        <th>Trạng Thái</th>
                        <th>Thao tác</th>
                    </tr>
                    <?php
                    if ($data):
                        $stt = 0;
                        foreach ($data as $value):
                            $stt++;
                            $price = str_replace(',', '.', number_format($value['product_price']));
                            $promotion = "";
                            if ($value['product_promotion'] != 0) {
                                $price_product = "<del>" . $price . "</del>" . " / <b>" . str_replace(',', '.', number_format($value['product_promotion'])) . "</b>";
                            } else {
                                $price_product = $price;
                            }
                            if ($value['product_type'] == 1) {
                                $product_type = "Bán chạy";
                            } else if ($value['product_type'] == 2) {
                                $product_type = "Nổi bật";
                            } else if ($value['product_type'] == 3) {
                                $product_type = "Xem nhiều";
                            } else {
                                $product_type = "Bình thường";
                            }
                            if ($value['product_type2'] == 1) {
                                $product_type2 = "Còn hàng";
                            } else if ($value['product_type2'] == 2) {
                                $product_type2 = "Chờ hàng";
                            } else {
                                $product_type2 = "Hết hàng";
                            }
                            $date_create = date_create($value['datetime']);
                            $date = date_format($date_create, "d/m/Y ");
                            ?>
                            <tr>
                                <?php
                                if ($value['product_id'] != 1) {
                                    ?>
                                    <td><label class="checkbox_form"><input type="checkbox" name="cb[]" value="<?php echo $value['product_id']; ?>"/>
                                            <span class="checkmark"></span></label>
                                    </td>
                                    <?php
                                } else {
                                    echo "<th>#</th>";
                                }
                                ?>
                                <td><?php echo $stt; ?></td>
                                <td><img src="<?php echo $value['product_image']; ?>" /></td>
                                <td>
                                    <a href="<?php echo base_url() . "gcms/products/edit/" . $value['product_id']; ?>" title="<?php echo $value['product_title']; ?>"><?php echo $value['product_name']; ?></a>
                                </td>
                                <td><?php echo $price_product ?></td>
                                <td>
                                <?php
                                $categories = $this->Mcategories->showCategoriesByProduct($value['product_id']);
                                foreach($categories as $cate){
                                    echo $cate['cate_name'].", ";
                                }
                                ?>
                                </td>
                                <td><?php echo $date; ?></td>
                                <td><?php echo ($value['product_active'] == 1) ? '<a href="javscript:void(0)" class="btn btn-info"><i class="fas fa-check-circle"></i> Kích hoạt</a>' : '<a href="javascript:void(0)" class="btn btn-danger"><i class="fas fa-times-circle"></i> Vô hiệu</a>';
                                    ?></td>
                                <td>
                                    <a class="btn btn-primary" href="<?php echo base_url() . "gcms/products/edit/" . $value['product_id']; ?>"><i
                                                class="fas fa-edit"></i></a>
                                    <a class="btn btn-primary" href="<?php echo base_url() . "gcms/products/delete/" . $value['product_id']; ?>"
                                       onclick="return ConfirmDelete()"><i
                                                class="fas fa-trash-alt"></i></a></td>
                            </tr>

                        <?php
                        endforeach;
                    endif;
                    ?>
                    </table>
                </div>
                <div class="row">
                    <div class="col-md-10 col-md-push-2 text-right">
                        <button class="btn btn-primary" onclick="return ConfirmDelete()"><i
                                    class="fas fa-trash-alt"></i>
                        </button>
                    </div>
            </form>
            <div class="col-md-2 col-md-pull-10 text-left row_option">
                <select class="form-control" id="limit">
                    <option value="10" <?php echo ($this->session->userdata("limit") == 10) ? 'selected' : '' ?>>10
                    </option>
                    <option value="20" <?php echo ($this->session->userdata("limit") == 20) ? 'selected' : '' ?>>20
                    </option>
                    <option value="30" <?php echo ($this->session->userdata("limit") == 30) ? 'selected' : '' ?>>30
                    </option>
                    <option value="50" <?php echo ($this->session->userdata("limit") == 50) ? 'selected' : '' ?>>50
                    </option>
                    <option value="100" <?php echo ($this->session->userdata("limit") == 100) ? 'selected' : '' ?>>100
                    </option>
                </select>
            </div>
            <div class="text-center">
                <?php echo $this->pagination->create_links(); ?>
            </div>
        </div>
    </div>
</div>
</div>
<div class="col-md-2">
    <div class="panel panel-default">
        <div class="panel-heading">Bảng điều khiển</div>
        <div class="panel-body setting_right">
            <div class="add_item">
                <a href="<?php echo base_url() . "gcms/products/add"; ?>" class="btn btn-primary"><i
                            class="fas fa-plus-circle"></i> Thêm mới</a>
            </div>
            <div class="search">
                <form action="<?php echo base_url() . "gcms/products/search" ?>" method="get" id="searchForm">

                    <input type="search" class="form-control" name="keyword" placeholder="Tìm kiếm.."/>
                    <button class=" btn btn-primary"><i class="fas fa-search"></i> Tìm kiếm</button>
                </form>
            </div>
            <div class="filter">
                <form action="<?php echo base_url() . "gcms/products/filter"; ?>" method="get" role="form">
                    <label class="control-label">Lọc theo danh mục</label>
                    <select class="form-control" name="category">
                        <option disabled selected value>Chọn danh mục</option>
                        <?php
                        callMenu($category);
                        ?>
                    </select>
                    <label class="control-label">Thứ tự hiển thị</label>
                    <select class="form-control" name="orderby">
                        <option disabled selected value>Chọn thứ tự</option>
                        <option value="desc">Mới nhất</option>
                        <option value="asc">Cũ nhất</option>
                    </select>
                    <label class="control-label">Loại sản phẩm</label>
                    <select class="form-control" name="type">
                        <option disabled selected value>Chọn loại sản phẩm</option>
                        <option value="1">Bán chạy</option>
                        <option value="2">Nổi bật</option>
                        <option value="2">Xem nhiều</option>
                    </select>
                    <label class="control-label">Kiểu sản phẩm</label>
                    <select class="form-control" name="type2">
                        <option disabled selected value>Chọn kiểu sản phẩm</option>
                        <option value="1">Còn hàng</option>
                        <option value="2">Chờ hàng</option>
                        <option value="3">Hết hàng</option>
                    </select>
                    <label class="control-label">Theo trạng thái</label>
                    <select class="form-control" name="active">
                        <option disabled selected value>Chọn trạng thái</option>
                        <option value="1">Đã kích hoạt</option>
                        <option value="2">Chưa kích hoạt</option>
                    </select>
                    <button class="btn btn-primary"><i class="fab fa-searchengin"></i> Lọc danh sách</button>
                </form>
            </div>
        </div>
    </div>
</div>

