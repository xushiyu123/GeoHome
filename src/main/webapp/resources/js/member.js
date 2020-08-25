$('#members div ul li').click(function () {
    var name = $(this).text();
    window.location.href = "/member?name=" + name;
});