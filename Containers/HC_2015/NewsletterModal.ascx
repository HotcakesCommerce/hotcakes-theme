<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<!-- HC 2015 Containers | Newsletter Modal Container | 01.00.00 -->
<div class="modal fade" id="newletter">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
        <div class="modal-body">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <div class="TitleContentpane" id="ContentPane" runat="server"></div>
          <div class="clearfix"></div>
        </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
