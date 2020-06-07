<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="ICON" Src="~/Admin/Containers/Icon.ascx" %>
<!-- T-Worx Aquae Orange Containers | Background Full Screen Container | 01.00.00 -->
<div class="backgroundMe fullScreen" data-stellar-background-ratio="0.5">
  <div class="TitleWidth">
    <div class="noPad" id="ContentPane" runat="server"></div>
    <div class="clearfix"></div>
  </div>
</div>
<div class="backgroundImage">
  <dnn:ICON runat="server" id="ICON" />
</div>

