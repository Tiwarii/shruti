  if(page.equalsIgnoreCase("forum"))
          {
                   List<Forum> forumList =new ForumService().getForumList();
              request.setAttribute("forumList",forumList);
          RequestDispatcher rd=request.getRequestDispatcher("forum.jsp");
        rd.forward(request,response);
          }
               if(page.equalsIgnoreCase("forum"))
          {
                   List<Forum> forumList =new ForumService().getForumList();
              request.setAttribute("forumList",forumList);
          RequestDispatcher rd=request.getRequestDispatcher("forum.jsp");
        rd.forward(request,response);
          }
             