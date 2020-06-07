<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="JQUERY" Src="~/Admin/Skins/jQuery.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
<dnn:DnnCssInclude runat="server" FilePath="css/contact-buttons.min.css" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude runat="server" FilePath="css/ouibounce.min.css" PathNameAlias="SkinPath" />
<dnn:META runat="server" id="dnnMeta" Name="viewport" Content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, minimal-ui" />
<dnn:JQUERY runat="server" id="dnnjQuery"  jQueryHoverIntent="true" />
<!--[if lt IE 9]>
<script src="//oss.maxcdn.com/libs/html5shiv/3.7.2/html5shiv.js"></script>
<script src="//oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery.sticky/1.0/jquery.sticky.min.js" type="text/javascript"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js" type="text/javascript"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/stellar.js/0.6.2/jquery.stellar.min.js" type="text/javascript"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.32/owl.carousel.min.js" type="text/javascript"></script>
<dnn:DnnJsInclude runat="server" FilePath="js/fit.text.min.js" PathNameAlias="SkinPath" />
<script src="//cdnjs.cloudflare.com/ajax/libs/smoothscroll/1.4.4/SmoothScroll.min.js" type="text/javascript"></script>
<dnn:DnnJsInclude runat="server" FilePath="js/jquery.selectBox.min.js" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude runat="server" FilePath="js/bootstrap-tabcollapse.min.js" PathNameAlias="SkinPath" />
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<dnn:DnnJsInclude runat="server" FilePath="js/common.min.js" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude runat="server" FilePath="js/jquery.contact-buttons.min.js" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude runat="server" FilePath="js/socialbuttonInitialize.js" PathNameAlias="SkinPath" Priority="500" />
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery.imagesloaded/3.1.8/imagesloaded.pkgd.min.js" type="text/javascript"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/masonry/3.1.5/masonry.pkgd.min.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function ($) {
	  var $container;
	  $(".masonry-list").each(function() {
		  var $container = $(this);
		  $container.imagesLoaded( function() {
			  $container.masonry({ itemSelector: ".masonry-item" });
			  $container.addClass("init");
		  });
	  });
	});
</script>
<!-- HC 2015 Skins | Blog Skin | 01.00.00 -->
<div class="BGTable HCskins subPage blogPage">
  <div class="headerWrap">
    <header>
      <div class="headerMain2">
        <div class="siteWidth">
          <div class="logoMain">
            <a hr<%=""%>ef="<%= NavigateUrl(PortalSettings.HomeTabId)%>" title="Hotcakes Commerce" id="dnn_dnnLOGO_hypLogo"><img alt="Hotcakes Commerce" src="/Portals/_default/Skins/HC_2015/Images/logo-hotcakes-orange-200x67.png" alt="" /></a>
          </div>
          <div class="menuMain"> 
              <div class="menuButtonWrap"> 
                <span class="mobileMenuMain visible-xxs visible-xs visible-sm">
                    <a class="dnnTertiaryAction medButton compact margin-0 visible-xxs visible-xs visible-sm" data-toggle="collapse" data-target="#mobileMenu"><em class="fa fa-navicon"></em><span> &nbsp;Menu</a>
                </span>
                <div class="menuMainInner hidden-xs hidden-sm">
                  <dnn:MENU MenuStyle="menus/TWMenu" runat="server" NodeSelector="RootOnly"></dnn:MENU>
                </div>
                <div class="clearfix"></div>
              </div>
              <div class="CTAButtonWrap"> 
                <span class="mobileMenuMain">
                    <a href="/Services/Free-Trial" class="dnnPrimaryAction medButton compact margin-0"><span>Try It Now</span></a>
          	        <a href="/Resources/Downloads" class="dnnSecondaryAction medButton compact margin-0"><span>Download</span></a>
                </span>
                <div class="clearfix"></div>
              </div>
          </div>

          <div class="clearfix"></div>
        </div>
        <div class="siteWidth visible-xxs visible-xs visible-sm">
          <div id="mobileMenu" class="collapse">
            <div class="mobileMenuInner">
              <dnn:MENU MenuStyle="menus/TWMobMenuCollapse" runat="server" NodeSelector="RootOnly"></dnn:MENU>
              <div class="clearfix"></div>
            </div>
          </div>
        </div>
      </div>
    </header>
    <div class="bannerMain">
      <div class="ContentPane myPane" id="BannerPane" runat="server" visible="false"></div>
    </div>
  </div>
  <div class="contentMain">
    <div class="siteWidth">
      <div class="ContentPane myPane" id="ContentPane" runat="server" visible="false"></div>
    </div>
    <div class="ContentPane myPane" id="MainFullPane" runat="server" visible="false"></div>
  </div>
  <footer class="Footer">
    <div class="footerMain invert">
      <div class="siteWidth">
        <div class="footerPanes">
          <div class="ContentPane myPane" id="FooterPane" runat="server" visible="false"></div>
          <div class="col-xxs-12 col-xs-6 myPane" id="FooterPaneHalf1" runat="server" visible="false"></div>
          <div class="col-xxs-12 col-xs-6 myPane" id="FooterPaneHalf2" runat="server" visible="false"></div>
          <div class="clearfix"></div>
          <div class="col-md-4 myPane" id="FooterPaneThird1" runat="server" visible="false"></div>
          <div class="col-md-4 myPane" id="FooterPaneThird2" runat="server" visible="false"></div>
          <div class="col-md-4 myPane" id="FooterPaneThird3" runat="server" visible="false"></div>
          <div class="clearfix"></div>
          <div class="col-xxs-12 col-xs-6 col-md-3 myPane" id="FooterPaneQuarter1" runat="server" visible="false"></div>
          <div class="col-xxs-12 col-xs-6 col-md-3 myPane" id="FooterPaneQuarter2" runat="server" visible="false"></div>
          <div class="col-xxs-12 col-xs-6 col-md-3 myPane" id="FooterPaneQuarter3" runat="server" visible="false"></div>
          <div class="col-xxs-12 col-xs-6 col-md-3 myPane" id="FooterPaneQuarter4" runat="server" visible="false"></div>
          <div class="clearfix"></div>
          <div class="ContentPane myPane" id="FooterBottomPane" runat="server" visible="false"></div>
        </div>
        <div class="clearfix"></div>
      </div>
    </div>
    <div class="siteWidth">
        <div class="Footertxt">
            <a href="https://www.appliedi.net/" target="_blank" class="Footertxt">This site is generously hosted by Applied Innovations</a>
        </div>
        <div class="clearfix"></div>
      <dnn:COPYRIGHT runat="server" id="dnnCOPYRIGHT"  CssClass="Footertxt" />
      <dnn:TERMS runat="server" id="dnnTERMS"  CssClass="Footertxt" />
      <dnn:PRIVACY runat="server" id="dnnPRIVACY"  CssClass="Footertxt" />
      <dnn:LOGIN runat="server" id="dnnLOGIN2"  CssClass="Footertxt" LegacyMode="true" />
      <dnn:USER runat="server" id="dnnUSER2"  CssClass="Footertxt" LegacyMode="true" />
      <a title="" rel="tooltip" id="topContent" class="topContent" data-original-title="Back to top"><em class="fa fa-angle-up"></em></a>
      <div class="clearfix"></div>
    </div>
      <div class="UpendoBG fullWidth text-center text-center-xs text-center-sm stewardFooter">
        <span class="text-center text-center-xs text-center-sm align-middle Footertxt">
<a href="https://upendoventures.com/What/Hotcakes-Commerce?utm_source=Hotcakes&utm_content=Footer" target="_blank" class="Footertxt">Hotcakes Commerce is maintained by Upendo Ventures, LLC</a>
        </span>
      </div>
  </footer>
</div>
<script type="text/javascript">
    /* <![CDATA[ */
    var google_conversion_id = 930540158;
    var google_custom_params = window.google_tag_params;
    var google_remarketing_only = true;
    /* ]]> */
</script>
<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js"></script>
<noscript>
    <div style="display:inline;">
        <img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/930540158/?value=0&amp;guid=ON&amp;script=0"/>
    </div>
</noscript>