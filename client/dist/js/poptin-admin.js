jQuery(document).ready(function ($) {
    jQuery(".where-is-my-id-inside-lb").bind('click',function(e){
        $('#oopsiewrongid').modal('hide');
        $('#whereIsMyId').modal();
    });

    function show_loader() {
        $(".poptin-overlay").fadeIn(500);
    }

    function hide_loader() {
        $(".poptin-overlay").fadeOut(500);
    }

    jQuery(".pp_signup_btn").on('click', function (e) {
        e.preventDefault();
        var email = $("#email").val();
        if (!isEmail(email)) {
            e.preventDefault();
            $("#oopsiewrongemailid").modal('show');
            return false;
        } else {
            show_loader();
            jQuery.ajax({
                url: 'https://app.popt.in/api/marketplace/register',
                dataType: "JSON",
                method: "POST",
                data: jQuery("#registration_form").serialize(),
                success: function (data) {
                    jQuery.ajax({
                        url: '/admin/poptin/setConfig',
                        dataType: "JSON",
                        method: "POST",
                        data: {
                            user_id: data.user_id,
                            client_id: data.client_id,
                            token: data.token
                        },
                        async: false,
                        success: function (data) {
                            //
                        }
                    });

                    if (data.success == true) {
                        jQuery(".ppaccountmanager").fadeOut(300);
                        jQuery(".poptinLogged").fadeIn(300);
                        jQuery(".poptinLoggedBg").fadeIn(300);
                    } else {
                        if(data.message === "Registration failed. User already registered.") {
                            jQuery("#lookfamiliar").modal();
                        } else if(data.message = "The email has already been taken.") {
                            jQuery("#lookfamiliar").modal();
                        } else {
                            swal("Error", data.message, "error");
                        }
                    }
                    hide_loader();
                }
            });
        }
    });

    $(document).on('click','.deactivate-poptin-confirm-yes',function(){
        show_loader();
        $.ajax({
            'url': '/admin/poptin/deleteConfig',
            'type': 'POST',
            success: function (data) {
                data = JSON.parse(data);
                console.log(data.success);
                if (data.success) {
                    $('#makingsure').modal('hide');
                    $('#byebyeModal').modal('show');
                    $(".poptinLogged").hide();
                    $(".poptinLoggedBg").hide();
                    $(".ppaccountmanager").fadeIn('slow');
                    $(".popotinLogin").show();
                    $(".popotinRegister").hide();
                    hide_loader();
                }
            }
        });
    });

    jQuery(".pplogout").click(function (e) {
        e.preventDefault();
        jQuery('#makingsure').modal('show');
    });

    $(".ppLogin").click(function (e) {
        e.preventDefault();
        $(".popotinLogin").fadeIn('slow');
        $(".popotinRegister").hide();
    });

    $(".ppRegister").click(function (e) {
        e.preventDefault();
        $(".popotinRegister").fadeIn('slow');
        $(".popotinLogin").hide();
    });

    $('.ppFormLogin').on('submit', function (e) {
        e.preventDefault();
        var id = $('.ppFormLogin input[type="text"]').val();
        if (id.length != 13) {
            e.preventDefault();
            $("#oopsiewrongid").modal('show');
            return false;
        } else {
            $.ajax({
                'url': '/admin/poptin/setConfig',
                'type': 'POST',
                'data': {
                    'client_id': id
                },
                dataType: 'json',
                success: function (data) {
                    if (data.success == true) {
                        jQuery(".poptinLogged").fadeIn('slow');
                        jQuery(".poptinLoggedBg").fadeIn('slow');
                        jQuery(".ppaccountmanager").hide();
                        jQuery(".popotinLogin").hide();
                        jQuery(".popotinRegister").hide();
                    }
                }
            });
        }
    });


});


function isEmail(email) {
    var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    return regex.test(email);
}