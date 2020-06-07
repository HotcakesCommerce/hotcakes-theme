<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="ICON" Src="~/Admin/Containers/Icon.ascx" %>
<!-- HC 2015 Containers | Full Screen Parallax No Pad Background Container | 01.00.00 -->
<div class="parallaxMe fullScreen">
  <div class="TitleWidth">
    <div class="noPad" id="ContentPane" runat="server"></div>
    <div class="clearfix"></div>
  </div>
</div>
<div class="backgroundImage">
  <dnn:ICON runat="server" id="ICON" />
</div>
<script type="text/javascript">
$(function() {
$(".server-error").first().appendTo(".col-md-8.col-md-offset-2");
});
</script>