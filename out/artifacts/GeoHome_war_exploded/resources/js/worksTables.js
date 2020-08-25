//

var works = [{
    "name": "",
    "authors": "",
    "type": "",
    "year": "",
    "file": ""
}];

function drawTables(control, data, tag) {
    if (tag == 1) {
        var tables = listTables(data);
        createTables(control, tables);
    } else {
        createTable(control, data);
    }
}

$(document).ready(function () {
    $.ajax({
        async: false,
        url: context + "/ds/all",
        type: "get",
        data: {},
        success: function (data) {
            works = $.parseJSON(data);
        }
    });
    var tables = listTables(works);
    createTables(".publications", tables);
    $(document).on('click','.file',function(){
        var file = $(this).attr("id");
        window.open("resources/files/" + file);
    });
});

function createTables(div, data) {
    $(div).empty();
    for (var i = 0; i < data.length; i++) {
        var $table = $("<table class='table table-hover'></table>");
        var $title = $("<h2 class='resume-section-heading mb-4'>" + data[i].year + "</h2>");
        var $head = $("<thead><tr></tr></thead>");
        $head.append("<th>#</th>");
        $head.append("<th>Name</th>");
        $head.append("<th>Authors</th>");
        $head.append("<th>Type</th>");
        $head.append("<th>Year</th>");
        $head.append("<th>Files</th>");
        var $body = $("<tbody></tbody>");
        for (var j = 0; j < data[i].list.length; j++) {
            var $row = $("<tr></tr>");
            $row.append("<th>#" + (j + 1) + "</th>");
            $row.append("<td>" + data[i].list[j].name + "</td>");
            $row.append("<td>" + data[i].list[j].authors + "</td>");
            $row.append("<td>" + data[i].list[j].type + "</td>");
            $row.append("<td>" + data[i].list[j].year + "</td>");
            var $col = $("<td></td>");
            var files = data[i].list[j].file.split(",");
            for (var k = 0; k < files.length; k++) {
                if (k == 0)
                    $row.append("<i class='file fa fa-file' title='document' id='" + files[k]  + "' style='display: inline-block; width: 20px; height: 20px; margin: 15px 0 0 5px; color: indianred'></i>");
                else
                    $row.append("<i class='file fa fa-file' title='certificate' id='" + files[k]  + "' style='display: inline-block; width: 20px; height: 20px; margin: 15px 0 0 0px; color: indianred'></i>");
            }
            $row.append($col);
            $body.append($row);
        }
        $table.append($head);
        $table.append($head);
        $table.append($body);
        $title.appendTo(div);
        $table.appendTo(div);
    }
}

function listTables(data) {
    var table = {
        year: "",
        list: new Array()
    };
    var tables = new Array();
    var year = "";
    for (var i = 0; i < data.length; i++) {
        if (i == 0) {
            table.year = data[i].year;
            table.list.push(data[i]);
        }
        else {
            if (year != data[i].year) {
                tables.push(table);
                table = {
                    year: data[i].year,
                    list: new Array()
                };
                table.list.push(data[i]);
            }
            else {
                table.list.push(data[i]);
            }
        }
        year = data[i].year;
    }
    tables.push(table);
    return tables;
}

function createTable(div, data) {
    $(div).empty();
    var $table = $("<table class='table table-hover'></table>");
    var $head = $("<thead><tr></tr></thead>");
    $head.append("<th>#</th>");
    $head.append("<th>Name</th>");
    $head.append("<th>Authors</th>");
    $head.append("<th>Type</th>");
    $head.append("<th>Year</th>");
    $head.append("<th>Files</th>");
    var $body = $("<tbody></tbody>");
    for (var i = 0; i < data.length; i++) {
        var $row = $("<tr></tr>");
        $row.append("<th>#" + (i + 1) + "</th>");
        $row.append("<td>" + data[i].name + "</td>");
        $row.append("<td>" + data[i].authors + "</td>");
        $row.append("<td>" + data[i].type + "</td>");
        $row.append("<td>" + data[i].year + "</td>");
        var $col = $("<td></td>");
        var files = data[i].file.split(",");
        for (var j = 0; j < files.length; j++) {
            if (j == 0)

                $row.append("<i class='file fa fa-file' title='document' id='" + files[j]  + "' style='display: inline-block; width: 20px; height: 20px; margin: 15px 0 0 5px; color: indianred'></i>");
            else
                $row.append("<i class='file fa fa-file' title='certificate' id='" + files[j]  + "' style='display: inline-block; width: 20px; height: 20px; margin: 15px 0 0 0px; color: indianred'></i>");
        }
        $row.append($col);
        $body.append($row);
    }
    $table.append($head);
    $table.append($body);
    $table.appendTo(div);
}