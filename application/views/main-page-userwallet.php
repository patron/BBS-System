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
            <div class="tile-body">
                <h2 class="mb-3 line-head" id="typography">User Wallet</h2>
                <?php foreach ($result as $key => $value): ?>
                <div class="col-8">
                    <b>E-mail:</b> <?php echo $value['email']; ?><br>
                    <b>Eth-address:</b><span id="ethaddr"><?php echo $value['ethaddr']; ?></span><br>
                    <b>Ammount:</b><span id="ethamount"></span><br>
                </div>
                <?php endforeach;?>
                <div class="tile-footer">
                    <button class="btn btn-primary js-click-balance" type="submit">Get User Balance</button>
                </div>
            </div>
        </div>
    </div>
</div>
</main>