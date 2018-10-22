<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/plugins/jquery-ui.min.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script>

    function getUserEthAddr(uname) {

        uinfo = wallets.filter(function (user) {
            return user.username === uname;
        });
        return uinfo[0].ethaddr;
    }

    $( function() {


        <?php echo 'users = ['; ?>
        <?php foreach ($result as $key => $value) {
        echo '"' . $value['username'] . '"' . ',';
    }
        ?>
        <?php echo '];'; ?>



        <?php echo 'wallets = ['; ?>
        <?php foreach ($result as $key => $value) {
        echo "{ username:" . '"' . $value['username'] . '"' . "," . "ethaddr:" . '"' . $value['ethaddr'] . '"' . ', ethpkey:'. '"' . $value['ethpkey'] . '"' . " },\n";
    }
        ?>
        <?php echo '];'; ?>


        senderWallet = $(this).closest('.js-table-act tr').find('td.ethaddr').text();
        senderPkey = $(this).closest('.js-table-act tr').find('td.ethpkey').text();

        $( "#name" ).autocomplete({
            source: users
        });

        $( "#name" ).on( "change", function( event, ui ) {

            someval = $("#name").val();
            $("#sendto").val( getUserEthAddr(someval) );

        } );





    } );
</script>