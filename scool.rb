<%if user_signed_in?%>
  <%if current_user.voted_for? article%>
      <!--see an unlike button--->
      <%=link_to'unlike',unlike_article_path(article),class:'btn btn-warning btn-sm'%>
  <%else%>
      <%=link_to'Like',like_article_path(article),class:'btn btn-warning btn-sm'%>
  <%end%>
<%end%>

<%if user_signed_in?%>
  <%if article.user == current_user%>
    <%=link_to 'Edit',edit_article_path(article),class: 'btn btn-warning btn-sm'%>
  <%end%>
<%end%>

  <%=link_to pluralize(article.comments.count,'Comment'),article_path(article)%>
<!--look up for pluralize function-->
