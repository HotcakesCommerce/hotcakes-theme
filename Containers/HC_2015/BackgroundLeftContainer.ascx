<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="ICON" Src="~/Admin/Containers/Icon.ascx" %>
<!-- HC 2015 Containers | Background Image Aligned Left Container | 01.00.00 -->
<div class="backgroundMe backLeft">
  <div class="siteWidth">
    <div class="TitleWidth padThis">
      <div class="TitleContentpane" id="ContentPane" runat="server"></div>
      <div class="clearfix"></div>
    </div>
  </div>
</div>
<div class="backgroundImage">
  <dnn:ICON runat="server" id="ICON" />
</div>
