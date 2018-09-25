<!-- Sidebar menu-->
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">
    <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="<?php echo $_SESSION['userAvatar48'] ?>" alt="User Image">
        <div>
            <p class="app-sidebar__user-name"><?php echo $_SESSION['displayName']; ?></p>
            <p class="app-sidebar__user-designation"><?php echo $this->session->userdata("role"); ?></p>
        </div>
    </div>
    <ul class="app-menu">
<li><a class="app-menu__item active" href="<?php echo base_url(); ?>index.php/dashboard">
        <i class="app-menu__icon fa fa-dashboard"></i>
        <span class="app-menu__label dashboard">Dashboard</span>
    </a></li>
<?php

if ($this->session->userdata("role") == "Admin") {
    echo '<li class="treeview is-expanded"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">Admin Menu</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item" href="' . base_url() . 'index.php/admin/userlist"><i class="icon fa fa-circle-o"></i>User List</a></li>
            <li><a class="treeview-item" href="' . base_url() . 'index.php/admin/allprojects"><i class="icon fa fa-circle-o"></i>All Projects</a></li>
            <li><a class="treeview-item" href="' . base_url() . 'index.php/admin/projecthistory"><i class="icon fa fa-circle-o"></i>Project History</a></li>
            <li><a class="treeview-item" href="' . base_url() . 'index.php/admin/bonussettings"><i class="icon fa fa-circle-o"></i>Bonus Settings</a></li>
            <li><a class="treeview-item" href="' . base_url() . 'index.php/admin/bcmanaging"><i class="icon fa fa-circle-o"></i>Bonuses Managing</a></li>
          </ul>
        </li>';
}
elseif ($this->session->userdata("role") == "User"){
    echo '<li class="treeview is-expanded"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">User Menu</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item" href="' . base_url() . 'index.php/user/mytransactions"><i class="icon fa fa-circle-o"></i>My Transactions</a></li>
            <li><a class="treeview-item" href="' . base_url() . 'index.php/user/userwallet"><i class="icon fa fa-circle-o"></i>User Wallet</a></li>
          </ul>
        </li>';
}

?>

</ul>
</aside>
