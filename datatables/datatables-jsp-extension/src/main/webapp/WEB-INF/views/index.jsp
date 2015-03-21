<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables"%>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="common/head.jsp" />
</head>
<body>
  <jsp:include page="common/navbar.jsp" />

  <div class="container">

    <div class="row-fluid row-intro">
      <div class="span12">
        <h3>Activating a custom extension</h3>
        <p>As for plugin (Scroller, FixedHeader), you can also plug-in your own extension.</p>
        <p>
          The table below has been modified by the extension
          <code>com.github.dandelion.datatables.web.extension.MyAwesomeExtension</code>
          in several ways:
        </p>
        <ul>
          <li>First in the DataTables configuration:
            <ul>
              <li>the <code>sDom</code> parameter has been overriden to only display the table
                itself
              </li>
            </ul>
          </li>
          <li>Next in the HTML markup:
            <ul>
              <li>A CSS class <code>myClass</code> has been assigned to the <code>&lt;table&gt;</code>
                tag
              </li>
              <li>The value of all <code>data-custom-attr</code> dynamic attribute has been
                converted to the CSS class applied on the header cell
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </div>

    <div class="row-fluid">
      <div class="span12">

        <datatables:table id="myTableId" data="${persons}" cssClass="display" ext="myExtension">
          <datatables:column title="Id" property="id" data-custom-attr="success" />
          <datatables:column title="LastName" property="lastName" data-custom-attr="success" />
          <datatables:column title="FirstName" property="firstName" data-custom-attr="success" />
          <datatables:column title="City" property="address.town.name" data-custom-attr="success" />
          <datatables:column title="Mail" property="mail" />
          <datatables:column title="Salary" property="salary" />
          <datatables:column title="Birthdate" property="birthDate" format="{0,date,dd-MM-yyyy}" />
          <datatables:column title="Company" property="company.name" />
        </datatables:table>

      </div>
    </div>
  </div>
</body>
</html>