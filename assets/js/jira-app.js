
var isnertUserTableTo = $('.tile');
var insertPkeysTo = $('#projectKeys');

function generateUserTable(selectNode, inputResponse) {

    $('.usertable-title').remove();
    $('.js-usertable').remove();

    var inputArray = JSON.parse(inputResponse);
    var emptyUserTable = '<h3 class="tile-title usertable-title">User Table</h3><table class="table table-bordered js-usertable"><thead><tr><th>#</th><th>Username</th><th>Full Name</th><th>User Avatar</th><th>Key</th><th>E-mail</th></tr></thead><tbody></tbody></table>';

    selectNode.prepend( emptyUserTable );

    for (var i = 0; i < inputArray.length; i++) {
        var data = '<tr>' + '<td>' + (i + 1) + '</td>'
            + '<td>' + inputArray[i].name + '</td>'
            + '<td>' + inputArray[i].displayName + '</td>'
            + '<td><img class="utable-avatar" src="' + inputArray[i].avatarUrls["32x32"] + '"></td>'
            + '<td>' + inputArray[i].key + '</td>'
            + '<td>' + inputArray[i].emailAddress + '</td>'
            + '</tr>';
        selectNode.find("tbody").append(data);
    }

}

function appendOptions(selectNode, inputResponse) {
    var inputArray = JSON.parse(inputResponse);
    for (var i = 0; i < inputArray.length; i++) {
        var data = '<option>' + inputArray[i].key + '</option>';
        selectNode.append(data);
    }

}


function showUserTable() {
    $.ajax({
        url: base_url + 'index.php/jirarest',
        method: 'POST',
        dataType: 'text',
        data: {
            key: 'getUserList'
        }, success: function (response) {
            generateUserTable(isnertUserTableTo, response);
        }
    });

}

function showProjectTable() {
    $.ajax({
        url: base_url + 'index.php/jirarest',
        method: 'POST',
        dataType: 'text',
        data: {
            key: 'getProjectList'
        }, success: function (response) {
            generateProjectList(isnertUserTableTo, response);
        }
    });

}

function generateProjectList(selectNode, inputResponse) {

    $('.js-projecttable-title').remove();
    $('.js-projecttable').remove();

    var inputArray = JSON.parse(inputResponse);
    var emptyUserTable = '<h3 class="tile-title js-projecttable-title">Project Table</h3><table class="table table-bordered js-projecttable"><thead><tr><th>#</th><th>Project Name</th><th>Project Avatar</th><th>Key</th><th>Type</th></tr></thead><tbody></tbody></table>';

    selectNode.prepend( emptyUserTable );

    for (var i = 0; i < inputArray.length; i++) {
        var data = '<tr>' + '<td>' + (i + 1) + '</td>'
            + '<td>' + inputArray[i].name + '</td>'
            + '<td><img class="utable-avatar" src="' + inputArray[i].avatarUrls["32x32"] + '"></td>'
            + '<td>' + inputArray[i].key + '</td>'
            + '<td>' + inputArray[i].projectTypeKey + '</td>'
            + '</tr>';
        selectNode.find("tbody").append(data);
    }

}


function generateProjectReleaseLog(selectNode, inputResponse) {

    $('.js-projecttable-title').remove();
    $('.js-projecttable').remove();

    var inputArray = JSON.parse(inputResponse);
    var emptyUserTable = '<h3 class="tile-title js-projecttable-title">Project Releases Table</h3><table class="table table-bordered js-projecttable"><thead><tr><th>#</th><th>Description</th><th>Release Name</th><th>Archived</th><th>Released</th><th>Start Date</th><th>Release date</th><th>User Start date</th><th>Release Start date</th></tr></thead><tbody></tbody></table>';

    selectNode.prepend( emptyUserTable );


    for (var i = 0; i < inputArray.length; i++) {
        var data = '<tr>' + '<td>' + (i + 1) + '</td>'
            + '<td>' + inputArray[i].description + '</td>'
            + '<td>' + inputArray[i].name + '</td>'
            + '<td>' + inputArray[i].archived + '</td>'
            + '<td>' + inputArray[i].released + '</td>'
            + '<td>' + inputArray[i].startDate + '</td>'
            + '<td>' + inputArray[i].releaseDate + '</td>'
            + '<td>' + inputArray[i].userStartDate + '</td>'
            + '<td>' + inputArray[i].userReleaseDate + '</td>'
            + '</tr>';
        selectNode.find("tbody").append(data);
    }

}


function getProjectReleaseLog() {
    $.ajax({
        url: base_url + 'index.php/jirarest',
        method: 'POST',
        dataType: 'text',
        data: {
            key: 'getProjectReleaseLog',
            projectKey: insertPkeysTo.val()

        }, success: function (response) {
            generateProjectReleaseLog(isnertUserTableTo, response);
        }
    });

}

function showProjectList() {
    $.ajax({
        url: base_url + 'index.php/jirarest',
        method: 'POST',
        dataType: 'text',
        data: {
            key: 'getProjectList'
        }, success: function (response) {
            appendOptions(insertPkeysTo, response);
        }
    });

}
showProjectList();





$('.js-click-btn').on("click", function () {
    showUserTable();
    $( this ).text("Refresh Table");
});

$('.js-click-projectlist').on("click", function () {
    showProjectTable();
    $( this ).text("Refresh Table");
});

$('.js-click-projecthistory').on("click", function () {
    getProjectReleaseLog();
    $( this ).text("Refresh Table");
});