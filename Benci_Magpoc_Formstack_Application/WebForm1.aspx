<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Benci_Magpoc_Formstack_Application.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Benci Magpoc Formstack Application</title>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script src="Scripts/jquery.js"></script> 
    <script src="Scripts/jquery-ui.min.js"></script>

    <style type="text/css">
        #GridView1 tr.Mouseover:hover
        {
            background-color: aqua;
            font-family:'Times New Roman';
            font-weight: 300;
        }
    </style>

    <script>
        //jQuery code to select table row
        $(document).ready(function () {
            $('tr').click(function () {
                //assigning the name of the row to formName variable
                var formName = $(this).find('td').eq(1).text();
                //assigning the description of the row to formDescription variable
                var formDescription = $(this).find('td').eq(2).text();
                console.log(this);
                //putting out the message displaying the name and description
                alert("Form Name: " + formName +
                    " \nDescription: " + formDescription);                
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="GridView1" RowStyle-CssClass="Mouseover" ClientIDMode="Static" runat="server" >
                
            </asp:GridView>

        </div>
    </form>
    <div id="dialog">
        <div id="dialogText"></div>
    </div>
</body>
</html>
