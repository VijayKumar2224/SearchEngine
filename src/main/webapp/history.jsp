<%@ page import="com.Accio.HistoryResult" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="table-container">
    <table class="result-table" border="2">
        <tr>
            <th>Keyword</th>
            <th>Link</th>
        </tr>
        <%
            ArrayList<HistoryResult> results = (ArrayList<HistoryResult>) request.getAttribute("results");
            for (HistoryResult result : results) {
        %>
        <tr>
            <td><%= result.getKeyword() %></td>
            <td><a href="<%= result.getLink() %>"><%= result.getLink() %></a></td>
        </tr>
        <% } %>
    </table>
</div>
</body>
</html>
