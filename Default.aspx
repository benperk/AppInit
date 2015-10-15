<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <center>
        The ASP.NET web forms page ran at time: <% = DateTime.Now.ToLongTimeString() %>
    </center>
    <br />
    <div>
        <img src="Images/Desert.jpg" alt="IIS7" width="571" height="411" />
    </div>
    </form>
</body>
</html>
