<?php $this->load->view('template/header') ?>
<div class="container">
    <div class="card">
        <div class="card-body">
            <div class="col-md-8 float-left">
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Ảnh</th>
                        <th scope="col">Tên</th>
                        <th scope="col">Giá</th>
                        <th scope="col">Số lượng</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php
                    $total = 0;
                    foreach ($data as $value) {
                        $total += $value['price'] * $value['qty'];
                        ?>
                        <tr>
                            <td><?php echo $value['id'] ?></td>
                            <td><img src="<?php echo $value['image'] ?>" width="50"></td>
                            <td><?php echo $value['name'] ?></td>
                            <td><?php echo $value['price'] ?></td>
                            <td><?php echo $value['qty'] ?></td>
                        </tr>
                        <?php
                    }
                    ?>
                    </tbody>
                    <tfoot>
                    <tr>
                        <td colspan="5" align="right"><?php echo $total; ?></td>
                    </tr>
                    </tfoot>
                </table>
            </div>
            <div class="col-md-4 float-left">
                <form>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Tên người nhận</label>
                        <input type="text" class="form-control" id="" aria-describedby="" placeholder="Họ tên..">
                        <small id="emailHelp" class="form-text text-muted">Nhập tên người nhận hàng</small>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Địa chỉ</label>
                        <input type="text" class="form-control" id="" aria-describedby="" placeholder="Địa chỉ..">
                        <small id="emailHelp" class="form-text text-muted">Nhập địa chỉ nhận hàng</small>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Số điện thoại</label>
                        <input type="text" class="form-control" id="" aria-describedby="" placeholder="Số điện thoại..">
                        <small id="emailHelp" class="form-text text-muted">Nhập số điện thoại nhận hàng</small>
                    </div>

                    <button type="submit" class="btn btn-primary">Mua hàng</button>
                </form>
            </div>
        </div>
    </div>
</div>
<?php $this->load->view('template/footer') ?>
