<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="ICON" Src="~/Admin/Containers/Icon.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<!-- HC 2015 Containers | Title Grey Container | 01.00.02 -->
<div class="siteWidth">
  <div class="TitleWidth padThis">
    <div class="TitleIcon">
      <dnn:ICON runat="server" id="ICON" />
    </div>
    <div class="TitleTitle">
      <h2>
        <dnn:TITLE runat="server" id="Title"  CssClass="ContainerTitle" />
      </h2>
    </div>
    <div class="TitleContentpane" id="ContentPane" runat="server"></div>
    <div class="clearfix"></div>
  </div>
</div>
