<%@ page import="java.util.Enumeration" %>
<html>
<head>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
</head>
<body class="container">
    <h3>Headers</h3>

    <h4>Request is <%= request.isSecure() ? "" : "NOT" %> secure.</h4>

    <table class="table table-striped">
        <thead>
            <tr>
            <th scope="col">Header name</th>
            <th scope="col">Value</th>
            </tr>
        </thead>
        <tbody>

<%
            Enumeration<String> headerNames = request.getHeaderNames();
            while (headerNames.hasMoreElements()) {
                String headerName = headerNames.nextElement();
                String headerValue = request.getHeader(headerName);
%>
                <tr>
                    <th scope="row"><%= headerName %></th>
                    <td><%= headerValue %></td>
                </tr>
<%
            }
%>
        </tbody>
        </table>
</body>
</html>
