<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TagText.aspx.cs" Inherits="sample.TagText" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js" type="text/javascript"
        charset="utf-8"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.12/jquery-ui.min.js"
        type="text/javascript" charset="utf-8"></script>
    <script src="Scripts/tag-it.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/flick/jquery-ui.css">
    <link href="Styles/jquery.tagit.css" rel="stylesheet" type="text/css" />
    <script>
        $(function () {
            //var availableTags = $("#<%= hdnDBTags.ClientID %>").val().split(',');
            var availableTags = "";
            //$('#mytags1').tagit({ tagSource: availableTags, select: true });
            $("#mytags1").tagit({ tagSource: availableTags
            });

            $("#mytags2").tagit({ tagSource: availableTags
            });

            $("#<%= btnSave.ClientID %>").click(function () {
                var livalues = $(('li').get(0));
                alert(livalues);
                //var livalues = $('li').text().split("×");
                //alert($("#<%= hdnSelectedTags.ClientID %>").val(livalues));
                document.getElementById('hdnSelectedTags').value = livalues;
                alert($("#<%= hdnSelectedTags.ClientID %>").val());
            });

        });

    </script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <script type="text/javascript">

        $(document).ready(function () {
            $(".ui-widget-content .ui-autocomplete-input").keydown(function (event) {


                if (event.shiftKey) {
                    return false;
                }
                if ((event.keyCode >= 48 && event.keyCode <= 57) || (event.keyCode >= 97 && event.keyCode <= 122) || (event.keyCode >= 65 && event.keyCode <= 90)) {
                    return true;
                }
                else {
                    return false;
                }
            });
        });
    </script>
    <div>
        <asp:HiddenField ID="hdnDBTags" runat="server" />
        <asp:HiddenField ID="hdnSelectedTags" runat="server" />
        <asp:Literal ID="myLiteral" runat="server"></asp:Literal>
        <ul id="mytags1" style="width: 20%;" runat="server">
            <asp:PlaceHolder ID="Placeholder" runat="server"></asp:PlaceHolder>
        </ul>
        <%--<ul id="mytags2" style="width: 20%;" runat="server">
            <asp:PlaceHolder ID="Placeholder1" runat="server"></asp:PlaceHolder>
        </ul>--%>
        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
    </div>
    </form>
</body>
</html>
