<jsp:root version="2.0" xmlns:jsp="http://java.sun.com/JSP/Page" xmlns:c="http://java.sun.com/jsp/jstl/core" xmlns:fn="http://java.sun.com/jsp/jstl/functions" xmlns:tags="urn:jsptagdir:/WEB-INF/tags/project" xmlns:display="urn:jsptld:http://displaytag.sf.net">
  <jsp:directive.page contentType="text/html; charset=UTF-8" />
  <jsp:directive.page import="org.displaytag.sample.*" />
  <jsp:directive.page import="java.util.*" />
  <tags:page>

  <jsp:scriptlet> List list = (List)session.getAttribute( "details" ); </jsp:scriptlet>

  <jsp:include page="header.jsp" flush="true" />

  <h1>Test Object Details</h1>

  <p>This shows the details of the object that you just clicked on, you can image that this page could be an edit panel,
  or another report, or perhaps just like what is shown here - additional detailed information about the object that you
  just clicked on.</p>

  <p>In these simple contrived example, we are keeping the master list of objects in your session and we just do scans
  based on either the id or index passed in, naturally your approach might be different (such as doing a database select
  based on the primary key passed in...)</p>

  <jsp:scriptlet> if( request.getParameter( "action" ) != null ) { </jsp:scriptlet>
  <h1>Action: <jsp:expression>request.getParameter( "action" ) </jsp:expression></h1>
  <jsp:scriptlet> } </jsp:scriptlet>

  <jsp:scriptlet>
  <![CDATA[
   ListObject obj = null;
   if( request.getParameter( "id" ) != null ) {
      int id = Integer.parseInt( request.getParameter( "id" ) );
      for( int i = 0; i < list.size() ; i++ ) {
         ListObject lobj = (ListObject)list.get(i);

         if( lobj.getId() == id ) { obj = lobj; break; }
      }
   }

   if( request.getParameter( "index" ) != null ) {
      int index = Integer.parseInt( request.getParameter( "index" ) );
      obj = (ListObject)list.get( index );
   }
   ]]>
</jsp:scriptlet>

  <blockquote><pre>
<jsp:expression>obj.toDetailedString() </jsp:expression>
</pre></blockquote>

  </tags:page>

</jsp:root>
