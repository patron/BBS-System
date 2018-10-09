<section class="material-half-bg">
    <div class="cover"></div>
</section>
<section class="login-content">
    <div class="logo">
        <h1>Jira Bonus System</h1>
    </div>
    <div class="login-box">
        <?php echo form_open('','class="login-form form-submit" id="myform"'); ?>

            <input type="hidden" name="newethwallet">
            <input type="hidden" name="ethprivatekey">
            <h3 class="login-head"><i class="fa fa-lg fa-fw fa-user"></i>SIGN IN OR REGISTER</h3>
        <?php $error = $this->session->flashdata("error"); ?>
        <div class="alert alert-<?php echo $error != NULL && $error != "Bbsuser is registered. Now you can login!" ? 'warning' : 'info' ?> alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <?php echo $error ? $error : 'Enter your username and password' ?>
        </div>
        <?php $error = form_error("username", "<p class='invalid-feedback'>", '</p>'); ?>
            <div class="form-group">
                <label class="control-label">USERNAME</label>
                <input class="form-control <?php echo $error ? 'is-invalid' : '' ?>" type="text" name="username" placeholder="Username">
                <?php echo $error; ?>
            </div>
        <?php $error = form_error("password", "<p class='invalid-feedback'>", '</p>'); ?>
            <div class="form-group">
                <label class="control-label">PASSWORD</label>
                <input class="form-control <?php echo $error ? 'is-invalid' : '' ?>" type="password" name="password" placeholder="Password">
                <?php echo $error; ?>
            </div>
            <div class="form-group btn-container">
                <button type="submit" class="btn btn-primary btn-block"><i class="fa fa-sign-in fa-lg fa-fw"></i>SIGN IN</button>
            </div>

        <?php echo form_close(); ?>
    </div>
</section>