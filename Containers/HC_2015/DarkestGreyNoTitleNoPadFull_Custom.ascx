<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<!-- HC 2015 Containers | Darkest Grey BG No Title No Pad Full Container | 01.00.00 -->
<div class="DarkestGreyBG">
  <div class="TitleWidth">
    <div class="TitleContentpane" id="ContentPane" runat="server"></div>
    <div class="clearfix"></div>
  </div>
</div>
<script type="text/html" id="fieldValidationTemplate">
    <span data-bind="if: field.isModified() && !field.isValid(),
    attr: { title: field.error }"
        style="float: left; margin-top: -70px; margin-left: 875px">
        <img src="<%= ResolveUrl("~/images/error-icn.png") %>" alt="Validation Error" />
    </span>
</script>