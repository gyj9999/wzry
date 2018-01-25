$(function() {
	
	$(".xx").click(function() {

        $(".mt_box").removeClass("modelWrap")
        $(".mt_login").removeClass("modelInn")


        $(".mt_register").removeClass("modelInn1")
        $(".mt_login").addClass("my_non")
        $(".mt_register").addClass("my_non")

    })
    $(".tz_re").click(function() {

        $(".mt_register").removeClass("my_non")
        $(".mt_box").addClass("modelWrap")
        $(".mt_register").addClass("modelInn1")
        $(".mt_login").addClass("my_non")

    })

    $(".register").click(function() {
        $(".mt_box").addClass("modelWrap")
        $(".mt_register").addClass("modelInn1")
        $(".mt_register").removeClass("my_non")
    })
    $(".login").click(function() {
        $(".mt_box").addClass("modelWrap")
        $(".mt_login").addClass("modelInn")
        $(".mt_login").removeClass("my_non")

    })
    
})