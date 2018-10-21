<div id="dialog-form" title="Send some tokens">
    <p class="validateTips">All form fields are required.</p>

    <form>
        <fieldset>
            <label for="username">Username</label>
            <input type="text" name="username" id="name" class="text ui-widget-content ui-corner-all">
            <label for="eth">Eth-address</label>
            <input type="text" name="eth" id="ethaddress" class="text ui-widget-content ui-corner-all" readonly>
            <label for="amount">Amount</label>
            <input type="text" name="amount" id="amount" class="text ui-widget-content ui-corner-all">

            <!-- Allow form submission with keyboard without duplicating the dialog button -->
            <input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
        </fieldset>
    </form>
</div>

<script>

</script>


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



        var dialog, form,
            name = $( "#name" ),
            ethaddress = $( "#ethaddress" ),
            amount = $( "#amount" ),
            allFields = $( [] ).add( name ).add( ethaddress ).add( amount ),

        dialog = $( "#dialog-form" ).dialog({
            autoOpen: false,
            height: 'auto',
            width: 400,
            modal: true,
            buttons: {
                "Confirm transaction": function() {
                    transfer( senderWallet, senderPkey, $('#ethaddress').val(), $('#amount').val());
                    dialog.dialog( "close" );
                },
                Cancel: function() {
                    dialog.dialog( "close" );
                }
            },
            close: function() {
                form[ 0 ].reset();
                allFields.removeClass( "ui-state-error" );
            }
        });

        form = dialog.find( "form" )

        $(".js-table-act tr .btn-success").on("click",function () {
            dialog.dialog( "open" );

             senderWallet = $(this).closest('.js-table-act tr').find('td.ethaddr').text();
             senderPkey = $(this).closest('.js-table-act tr').find('td.ethpkey').text();

            $( "#name" ).autocomplete({
                source: users
            });

            $( "#name" ).on( "change", function( event, ui ) {

                someval = $("#name").val();
                $("#ethaddress").val( getUserEthAddr(someval) );

            } );


        });



    } );
</script>


