<!-- Data table plugin-->
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/plugins/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/plugins/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#sampleTable').DataTable({
                order: [[ 1, "asc" ]],
                "columnDefs": [
                    { "orderable": false, "targets": [0] }
                ]
            });
        });
</script>