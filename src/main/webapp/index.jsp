<%@ page import="org.apache.commons.text.StringEscapeUtils,java.net.URI,java.net.http.HttpClient,java.net.http.HttpRequest,java.net.http.HttpResponse,java.net.http.HttpResponse.BodyHandlers" %>
<html>
<head>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
</head>
<body class="container">
<%
    String url = request.getParameter("url");
    if (url !=null) {
        try {
            HttpClient client = HttpClient.newHttpClient();
            HttpRequest httpRequest = HttpRequest.newBuilder()
                  .uri(URI.create(url))
                  .build();
            HttpResponse<String> httpResponse = client.send(httpRequest, BodyHandlers.ofString());
            int statusCode = httpResponse.statusCode();
            String responseBody = StringEscapeUtils.escapeHtml4(httpResponse.body());
%>
<ul>
    <li>Status code: <%= statusCode %></li>
    <li>Response:
<pre>
<%= responseBody %>
</pre>
    </li>
</ul>
<%
        } catch (Exception ex) {
%>
Exception: <%= ex %>
<%
        }
    } else {
%>
    <h3>Web HTTP Client</h3>
    <form>
        <div class="mb-3">
            <label for="urlInputField" class="form-label">URL</label>
            <input id="urlInputField" type="text" class="form-control" name="url" placeholder="http://example.com/path?param=val">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
<%
    }
%>
</body>
</html>