<div id="pages-controller-cms-content" class="cms-content flexbox-area-grow" data-layout-type="border" data-pjax-fragment="Content">
    <div class="toolbar toolbar--north cms-content-header north vertical-align-items">
        <div class="cms-content-header-info flexbox-area-grow vertical-align-items">
            <% include SilverStripe\\Admin\\CMSBreadcrumbs %>
        </div>
    </div>

    <!-- Main wrapper -->
    <div class="poptin-overlay"></div>

    <div class="wrap">
        <h1></h1>
        <div class="poptinWrap">
        <!-- Logo -->
        <div class="poptinLogo"><img src="$resourceURL('poptin/silverstripe:client/dist/images/poptinlogo.png')"/></div>

        <% if $poptinidcheck %>
            <div class="poptinLogged" style="display:block">
        <% else %>
            <div class="poptinLogged" style="display:none">
        <% end_if %>
            <!-- Here will render after login/create account view -->
            <div class="poptinLoggedBg"
                style="background:url($resourceURL('poptin/silverstripe:client/dist/images/loggedinbg.png')) no-repeat">
                <form id="logmein_form" action="" method="POST">
                    <input type="hidden" name="action" value="poptin_logmein" class="poptin_input"/>
                    <input type="hidden" name="logmein" value="true" class="poptin_input"/>
                    <input type="hidden" name="security" class="poptin_input"
                        value="poptin-fe-register"/>
                </form>
                <h2 class="loggedintitle">You're All Set!</h2>
                <div class="tinyborder"></div>
                <span class="everythinglooks"><strong>Poptin is installed on your website</strong><br>Click on the button below to<br>create and manage your poptins</span>
                <img src="$resourceURL('poptin/silverstripe:client/dist/images/vicon.png')"/>
                <a href="/admin/poptin/redirectToDashboard" target="_blank"
                class="ppcontrolpanel goto_dashboard_button_pp_updatable">Go to Dashboard</a>
                <a href="#logout" class="pplogout">Deactivate Poptin</a>
            </div>

            <div class="clearfix"></div>

        </div>

        <% if $poptinidcheck %>
            <div class="ppaccountmanager" style="display:none">
        <% else %>
            <div class="ppaccountmanager" class="display:block">
        <% end_if %>
            <div class="popotinRegister">
                <!-- Here will render register view -->
                <div class="accountWrapper"
                    style="background:url($resourceURL('poptin/silverstripe:client/dist/images/accountboxsignup.png')) no-repeat">
                    <div class="poptinWrapInner">
                        <div class="topAccountBar sign_up_for_free_wrapper">
                            <span class="ppRegister active">Sign up for free</span>
                            <span class="ppSeparator"></span>
                            <a href="#" class="ppLogin">Already have an account?</a>
                            <div class="clearfix"></div>
                        </div>
                        <form id="registration_form" class="ppFormRegister ppForm" action="" target=""
                            method="POST">

                            <input class="poptin_input" type="text" id="email" name="email" placeholder="Enter your email"
                                value="admin_email_here"
                                placeholder="example@poptin.com"/>
                            <input type="hidden" name="action" class="poptin_input" value="poptin_register"/>
                            <input type="hidden" name="register" class="poptin_input" value="true"/>
                            <input type="hidden" name="security" class="poptin_input"
                                value="poptin-fe-register"/>
                            <input type="hidden" name="marketplace" class="poptin_input" value="slvrstrp"/>
                            <div class="bottomForm">
                                <input class="ppSubmit pp_signup_btn poptin_signup_button" type="submit"
                                    value="Sign Up"/>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="popotinLogin" style="display:none">
                <!-- Here will render login view -->
                <div class="accountWrapper"
                    style="background:url($resourceURL('poptin/silverstripe:client/dist/images/accountbox.png')) no-repeat">
                    <div class="poptinWrapInner">
                        <div class="topAccountBar poptin_login_wrapper">
                            <span class="ppLogin active">Enter your user ID</span><span
                                    class="ppSeparator"></span><a href="#"
                                                                class="ppRegister">Sign up for free</a>
                        </div>
                        <form id="map_poptin_id_form" class="ppFormLogin ppForm">
                            <input type="text" value="" placeholder="Enter your User ID" class="poptin_input"/>
                            <div class="bottomForm remove_top_margin">
                                <a href="#" data-toggle="modal" data-target="#whereIsMyId"
                                class="wheremyid">Where is my user ID?</a>
                                <input class="ppSubmit poptin_submit_button" type="submit" value="Connect"/>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="poptinContent">
                <h2 class="poptinTitle">Create your first poptin with ease</h2>
                <div class="tinyborder"></div>
                <div class="youtubeVideoContainer"
                    style="background:url($resourceURL('poptin/silverstripe:client/dist/images/youtubeBackground.png')) no-repeat">
                    <div class="youtubeVideo">
                        <iframe width="905" height="509"
                                src="https://www.youtube.com/embed/uvTw_mmA32Q?rel=0&amp;showinfo=0" frameborder="0"
                                allowfullscreen></iframe>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="poptinContent whyChoose">
                <h2 class="poptinTitle">Here’s What Poptin Can Do For You</h2>
                <div class="tinyborder"></div>
                <div class="innerContent">
                    <div class="box ">
                        <div class="boxIcon img-box">
                            <img src="$resourceURL('poptin/silverstripe:client/dist/images/heart.png')"/>
                            <img class="hover-img" src="$resourceURL('poptin/silverstripe:client/dist/images/heart-hover.png')"/>
                        </div>
                        <div class="box-content">
                            <div class="boxTitle boxEnv">
                                Increase visitors
                            </div>
                            <p>With Poptin you can conduct surveys, get feedback and offer visitors another content item they will be interested in.</p>
                        </div>
                    </div>
                    <div class="box ">
                        <div class="boxIcon">
                            <img src="$resourceURL('poptin/silverstripe:client/dist/images/envelope.png')"/>
                            <img class="hover-img" src="$resourceURL('poptin/silverstripe:client/dist/images/envelope-hover.png')"/>
                        </div>
                        <div class="box-content">
                            <div class="boxTitle boxLeads">Get more email subscribers</div>
                            <p>Improve subscription rates up to several times using poptins displayed at the right moment.</p>
                        </div>
                    </div>
                    <div class="box ">
                        <div class="boxIcon">
                            <img src="$resourceURL('poptin/silverstripe:client/dist/images/leads-icon_new.png')"/>
                            <img class="hover-img" src="$resourceURL('poptin/silverstripe:client/dist/images/leads-icon-hover_new.png')"/>
                        </div>
                        <div class="box-content">
                            <div class="boxTitle boxCart">Capture more leads and sales</div>
                            <p>Serve visitors relevant offers based on their unique behavior and substantially improve conversion rates.</p>
                        </div>
                    </div>
                    <div class="box ">
                        <div class="boxIcon">
                            <img src="$resourceURL('poptin/silverstripe:client/dist/images/cart-icon_new.png')"/>
                            <img class="hover-img" src="$resourceURL('poptin/silverstripe:client/dist/images/car-hover-icon_new.png')"/>
                        </div>
                        <div class="box-content">
                            <div class="boxTitle boxHeart">
                                Reduce shopping cart abandonment
                            </div>
                            <p>A potential customer is planning to ditch their shopping cart? Pop them an offer they can’t refuse and increase the number.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="poptinContent clients">
                <h2 class="poptinTitle">Digital Marketers ♥ Poptin</h2>
                <div class="tinyborder"></div>
                <div class="innerContent">
                    <div class="boxclient client1">
                        <div class="boxclientHead"
                            style="background:url($resourceURL('poptin/silverstripe:client/dist/images/client1bg.png')) no-repeat">
                            <img src="$resourceURL('poptin/silverstripe:client/dist/images/profile1.png')"/>
                        </div>
                        <div class="clientboxtext">
                            <span class="clientName">Michael Kamleitner</span>
                            <span class="clientCompany">CEO, Walls.io</span>
                            Getting started with poptin was a breeze – we've implemented the widget and connected it to our newsletter within minutes. Our conversion rate skyrocketed!
                        </div>
                    </div>
                    <div class="boxclient client2">
                        <div class="boxclientHead"
                            style="background:url($resourceURL('poptin/silverstripe:client/dist/images/client2bg.png')) no-repeat">
                            <img src="$resourceURL('poptin/silverstripe:client/dist/images/profile2.png')"/>
                        </div>
                        <div class="clientboxtext">
                            <span class="clientName">Deepak Shukla</span>
                            <span class="clientCompany">CEO, Purr Traffic</span>
                            Been v.impressed with Poptin and the team behind it so far. Great responses times from support. The roadmap looks great. I highly recommend.
                        </div>
                    </div>
                    <div class="boxclient client3">
                        <div class="boxclientHead"
                            style="background:url($resourceURL('poptin/silverstripe:client/dist/images/client3bg.png')) no-repeat">
                            <img src="$resourceURL('poptin/silverstripe:client/dist/images/profile3.png')"/>
                        </div>
                        <div class="clientboxtext">
                            <span class="clientName">Michael Voiskoun</span>
                            <span class="clientCompany">Marketing manager, Engie</span>
                            It's super easy to use, doesn't require any prior coding skill. The team at Poptin is really helpful, providing great support, and adding always more features!
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>

        <div class="clearfix"></div>
        <div class="poptinContent footer">
            <script>
                jQuery(function ($) {
                    $(".parrot").hover(
                        function () {
                            $(this).attr("src", "$resourceURL('poptin/silverstripe:client/dist/images/parrot.gif')");
                        },
                        function () {
                            $(this).attr("src", "$resourceURL('poptin/silverstripe:client/dist/images/parrot.png')");
                        }
                    );
                });
            </script>
            <img class="parrot" src="$resourceURL('poptin/silverstripe:client/dist/images/parrot.png')"/>
            <span class="poptinlove">Visit us at  <a
                        href="https://www.poptin.com/?utm_source=silverstripe"
                        target="_blank">poptin.com</a></span>
        </div>
    </div>
    </div>
    <!-- Modal -->
    <div id="whereIsMyId" class="modal fade" role="dialog" style="margin-top: 110px;direction: ltr;">
        <div class="modal-dialog poptin-lightbox">
            <div class="poptin-lightbox-header">Where is my user ID?</div>
            <div class="poptin-where-my-id-wrapper">
                <div class="poptin-where-my-id-01">
                    <div class="poptin-where-my-id">
                        <img class="where-my-id-3-images" src="$resourceURL('poptin/silverstripe:client/dist/images/where-is-my-id-01.png')"/>
                    </div>
                    <div class="poptin-where-my-id-smalltext">
                        <b>1.</b>&nbsp;Go to your dashboard, in the top bar click on "Installation Code"
                    </div>
                </div>
                <div class="poptin-where-my-id-02">
                    <div class="poptin-where-my-id">
                        <img class="where-my-id-3-images" src="$resourceURL('poptin/silverstripe:client/dist/images/where-is-my-id-02.png')"/>
                    </div>
                    <div class="poptin-where-my-id-smalltext">
                        <b>2.</b>&nbsp;Click on Wordpress
                    </div>
                </div>
                <div class="poptin-where-my-id-03">
                    <div class="poptin-where-my-id">
                        <img class="where-my-id-3-images" src="$resourceURL('poptin/silverstripe:client/dist/images/where-is-my-id-03.png')"/>
                    </div>
                    <div class="poptin-where-my-id-smalltext">
                        <b>3.</b>&nbsp;Copy your user ID
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
            <div class="poptin-lightbox-button-wrapper text-align-right">
                <div class="poptin-lightbox-button" data-dismiss="modal">Close</div>
            </div>
        </div>
    </div>

    <!-- BYE BYE Modal -->
    <div id="byebyeModal" class="modal fade" role="dialog" style="margin-top: 110px;direction: ltr;">
        <div class="modal-dialog poptin-lightbox-general">
            <img class="poptin-parrot-byebye-image" src="$resourceURL('poptin/silverstripe:client/dist/images/parrot-bye-bye.png')"/>
            <div class="poptin-lightbox-header-general">Bye Bye</div>
            <div class="poptin-lightbox-textcontent-general">
                Poptin snippet has been
                removed. See you around.
            </div>
            <div class="clearfix"></div>
            <div class="poptin-lightbox-button-wrapper text-align-center">
                <div class="poptin-lightbox-button" data-dismiss="modal">Close</div>
            </div>
        </div>
    </div>

    <!-- Just Making Sure Modal -->
    <div id="makingsure" class="modal fade" role="dialog" style="margin-top: 110px;direction: ltr; z-index:9999;">
        <div class="modal-dialog poptin-lightbox-general">
            <img class="poptin-parrot-makingsure-image"
                src="$resourceURL('poptin/silverstripe:client/dist/images/parrot-making-sure.png')"/>
            <div class="poptin-lightbox-header-general">Just making sure</div>
            <div class="poptin-lightbox-textcontent-general">
                Are you sure you want to<br/> remove Poptin?
            </div>
            <div class="clearfix"></div>
            <div class="poptin-lightbox-button-wrapper text-align-center">
                <div class="poptin-lightbox-button deactivate-poptin-confirm-yes">Yes</div>
                <div class="poptin-lightbox-atag" data-dismiss="modal">I'll stay</div>
            </div>
        </div>
    </div>

    <!-- Just Making Sure Modal -->
    <div id="lookfamiliar" class="modal fade" role="dialog" style="margin-top: 110px;direction: ltr;">
        <div class="modal-dialog poptin-lightbox-general">
            <img class="poptin-parrot-familiar-image"
                src="$resourceURL('poptin/silverstripe:client/dist/images/parrot-familiar.png')"/>
            <div class="poptin-lightbox-header-general">You look familiar</div>
            <div class="poptin-lightbox-textcontent-general">
                You already have a Poptin<br/> account with this email address.
            </div>
            <div class="clearfix"></div>
            <div class="poptin-lightbox-button-wrapper text-align-center">
                <a class="poptin-lightbox-button login-from-lb" target="_blank" href="https://app.popt.in/login">Login</a>
                <div class="poptin-lightbox-atag" data-dismiss="modal">Cancel</div>
            </div>
        </div>
    </div>


    <!-- Wrong Email ID Modal -->
    <div id="oopsiewrongemailid" class="modal fade" role="dialog" style="margin-top: 110px;direction: ltr;">
        <div class="modal-dialog poptin-lightbox-general">
            <img class="poptin-parrot-oopsie-image" src="$resourceURL('poptin/silverstripe:client/dist/images/new-poptin-parrot.png')"/>
            <div class="poptin-lightbox-header-general">Oopsie... wrong Email</div>
            <div class="poptin-lightbox-textcontent-general">
                Please enter a valid Email Address.
            </div>
            <div class="clearfix"></div>
            <div class="poptin-lightbox-button-wrapper text-align-center">
                <div class="poptin-lightbox-button" data-dismiss="modal">Try again</div>
            </div>
        </div>
    </div>

    <!-- Just Making Sure Modal -->
    <div id="oopsiewrongid" class="modal fade" role="dialog" style="margin-top: 110px;direction: ltr;">
        <div class="modal-dialog poptin-lightbox-general">
            <img class="poptin-parrot-oopsie-image" src="$resourceURL('poptin/silverstripe:client/dist/images/new-poptin-parrot.png')"/>
            <div class="poptin-lightbox-header-general">Oopsie... wrong ID</div>
            <div class="poptin-lightbox-textcontent-general">
                <a href="#" class="poptin-lightbox-atag where-is-my-id-inside-lb">Where is my user ID?</a>
            </div>
            <div class="clearfix"></div>
            <div class="poptin-lightbox-button-wrapper text-align-center">
                <div class="poptin-lightbox-button" data-dismiss="modal">Try again</div>
            </div>
        </div>
    </div>

    <form action="https://app.popt.in/login" method="GET" class="dummy_form" id="dummy_form" target="_blank">

    </form>
</div>