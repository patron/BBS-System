<main class="app-content">

<div class="app-title">
    <div>
        <h1><i class="fa fa-dashboard"></i> User Wallet Page</h1>
        <p>See your tokens</p>
    </div>
    <ul class="app-breadcrumb breadcrumb">
        <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
        <li class="breadcrumb-item"><a href="#">User Wallet Page</a></li>
    </ul>
</div>
<div class="row">
    <div class="col-md-12">
                <div class="tile">
                    <h3 class="tile-title">Bordered Table</h3>
                    <div class="table-responsive">
                    <table class="table table-hover js-table-act">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Username</th>
                            <th>E-mail</th>
                            <th>Ethaddr</th>
                            <th>Actions (use cursor to do action &darr;)</th>
                        </tr>
                        </thead>
                        <tbody>

                        <?php foreach ($result as $key => $value): ?>
                        <tr>
                            <td><?php echo $value['id']; ?></td>
                            <td><?php echo $value['username']; ?></td>
                            <td><?php echo $value['email']; ?></td>
                            <td><?php echo $value['ethaddr']; ?></td>
                            <td>
                                <div class="btn-group">
                                <button class="btn btn-danger" type="button">Burn</button>
                                <button class="btn btn-success" type="button">Send</button>
                                <button class="btn btn-info" type="button">Balance</button>
                                </div>
                            </td>
                        </tr>
                        <?php endforeach;?>

                        </tbody>
                    </table>
                    </div>
                </div>


            </div>
        </div>
</main>