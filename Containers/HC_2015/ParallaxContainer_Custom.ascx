<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="ICON" Src="~/Admin/Containers/Icon.ascx" %>
<!-- HC 2015 Containers | Parallax Background Container | 01.00.00 -->
<div class="parallaxMe">
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
<script type="text/html" id="fieldValidationTemplate">
    <span data-bind="if: field.isModified() && !field.isValid(),
    attr: { title: field.error }"   >
        <img src="<%= ResolveUrl("~/images/error-icn.png") %>" alt="Validation Error" />
    </span>
</script>