function make_button_active(tab) {
    //Get item siblings
    var siblings = tab.siblings();

    //Remove active class on all buttons
    siblings.each(function(){
        $(this).removeClass('active');
    })

    //Add the clicked button class
    tab.addClass('active');
}


//Attach events to menu
$(function(){


    if (localStorage) {
        var ind = localStorage['tab'];
        make_button_active($('.treeview-menu li').find('a').eq(ind));
    }

$('.dashboard').on("click", function () {

    delete localStorage['tab'];

})


    $(".treeview-menu li").on("click", function () {
        if(localStorage){
            localStorage['tab'] = $(this).index();
        }
        make_button_active($(this));

    });



});

	var treeviewMenu = $('.app-menu');

	// Toggle Sidebar
	$('[data-toggle="sidebar"]').on("click", function(event) {
		event.preventDefault();
		$('.app').toggleClass('sidenav-toggled');
	});

	// Activate sidebar treeview toggle
	$("[data-toggle='treeview']").on("click", function(event) {
		event.preventDefault();
		if(!$(this).parent().hasClass('is-expanded')) {
			treeviewMenu.find("[data-toggle='treeview']").parent().removeClass('is-expanded');
		}
		$(this).parent().toggleClass('is-expanded');
	});

	// Set initial active toggle
	$("[data-toggle='treeview.'].is-expanded").parent().toggleClass('is-expanded');

	//Activate bootstrip tooltips
	$("[data-toggle='tooltip']").tooltip();



$("table.avatared td:nth-of-type(1)").each( function(i) {
    $(this).append("<img width='48px' height='48px' style='border-radius:50%;margin: 0 auto; display: block' src='https://picsum.photos/48/48/?image="+ (++i) +"' />");
});