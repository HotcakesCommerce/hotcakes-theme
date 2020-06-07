<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<!-- HC 2015 Containers | BlogBar Container | 01.00.00 -->
<div class="DarkTealBG blogBar">
  <div class="siteWidth">
    <div class="TitleWidth padThisLess invert">
      <div class="TitleTitle float-left-md float-left-lg text-center-xs text-center-sm">
        <h2 class="margin-top-10 margin-bottom-10">
          <dnn:TITLE runat="server" id="Title" CssClass="ContainerTitle" />
        </h2>
      </div>
      <div class="float-right-md float-right-lg text-center-xs text-center-sm position-relative">
          <div class="TitleContentpane float-right-md float-right-lg" id="ContentPane" runat="server"></div>
          <a id="triggerNews" class="blogBarLink float-left-md float-left-lg" data-toggle="modal" data-target="#newletter">Sign Up For Updates</a>
          <a id="triggerCalendar" class="blogBarLink float-left-md float-left-lg" data-toggle="collapse" data-toggle="collapse" data-target=".calendar">Blog Archive</a>
      </div>
      <div class="clearfix"></div>
    </div>
  </div>
</div>