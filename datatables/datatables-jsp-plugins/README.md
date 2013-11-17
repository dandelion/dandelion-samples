datatables-jsp-plugins
=================================================================

A sample which shows how to use the DataTables' extras supported by Dandelion-Datatables, such as [Scroller](http://datatables.net/extras/scroller/) or [ColReorder](http://datatables.net/extras/colreorder/).

## In this sample

<table style="width:100%;">
	<tbody>
		<tr>
			<td style="width:40%;"><strong>Technical stack</strong></td>
			<td style="width:60%;">
				<ul>
				   <li>JSP</li>
				   <li>JSTL</li>
				   <li>Dandelion-Datatables 1.10.0</li>
				   <li>Spring 3.2.4.RELEASE</li>
				</ul>
			</td>
		</tr>
		<tr>
			<td>Data source type</td>
			<td>DOM</td>
		</tr>
		<tr>
			<td>Datatables' features</td>
			<td>
				<ul>
					<li>Scroller plugin - <a href="http://dandelion.github.io/datatables/tutorials/plugins/scroller.html">Doc</a></li>
 					<li>ColReorder plugin - <a href="http://dandelion.github.io/datatables/tutorials/plugins/colreorder.html">Doc</a></li>
 					<li>FixedHeader plugin - <a href="http://dandelion.github.io/datatables/tutorials/plugins/fixedheader.html">Doc</a></li>
				</ul>
			</td>
		</tr>
		<tr>
			<td>Dandelion features</td>
			<td>
				<ul>
					<li>AssetServlet (lien doc)</li>
				</ul>
			</td>
		</tr>
	</tbody>
</table>

## Running this sample

Using __Apache Tomcat__ :

    mvn tomcat7:run

Using __Jetty__:

    mvn jetty:run

You can then access the sample here: [http://localhost:9090/datatables-jsp-plugins](http://localhost:9090/datatables-jsp-plugins)

## Bug/improvement

Please report it using the general issue tracker: [https://github.com/dandelion/issues/issues](https://github.com/dandelion/issues/issues)

=
The [Dandelion team](http://dandelion.github.io/team/).