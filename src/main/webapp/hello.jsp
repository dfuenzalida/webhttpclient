<%
  String name = request.getParameter("name");
  String responseName = name != null ? name : "World";
%>
{
    response: "Hello, <%= responseName %>",
    timestamp: "<%= new java.util.Date() %>",
    hostname: "<%= System.getenv("HOSTNAME") %>"
}
