<%@ page import="java.util.ArrayList" %>
<%@ page import="com.Accio.SearchResult" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<table class="result-table">
    <tr>
        <th>Title</th>
        <th>Link</th>
    </tr>
    <%
        ArrayList<SearchResult> results = (ArrayList<SearchResult>) request.getAttribute("results");
        for (SearchResult result : results) {
    %>
    <tr>
        <td><%= result.getTitle() %></td>
        <td><a href="<%= result.getLink() %>"><%= result.getLink() %></a></td>
    </tr>
    <% } %>
</table>
</body>
</html>
