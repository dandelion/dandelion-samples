<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<div class="row-fluid">
   <div class="span12">
      <h3>Internationalisation</h3>
      <p>
         Every label can be customized with the
         <code>labels</code>
         attribute of the table tag.
      </p>
      <p>
         The value you set relates to the <a href="http://datatables.net/plug-ins/i18n">sUrl</a> DataTables parameter,
         which holds the URL of a txt (or js or whatever) file containing all the translated strings and which will be
         AJAX loaded.
      </p>
      <p>
         Ensure that the file contains JSON format :
<pre class="prettyprint">
 {
     "sProcessing":     "Traitement en cours...",
     "sSearch":         "Rechercher&nbsp;:",
     "sLengthMenu":     "Afficher _MENU_ &eacute;l&eacute;ments",
     "sInfo":           "Affichage de l'&eacute;lement _START_ &agrave; _END_ sur _TOTAL_ &eacute;l&eacute;ments",
     "sInfoEmpty":      "Affichage de l'&eacute;lement 0 &agrave; 0 sur 0 &eacute;l&eacute;ments",
     "sInfoFiltered":   "(filtr&eacute; de _MAX_ &eacute;l&eacute;ments au total)",
     "sInfoPostFix":    "",
     "sLoadingRecords": "Chargement en cours...",
     "sZeroRecords":    "Aucun &eacute;l&eacute;ment &agrave; afficher",
     "sEmptyTable":     "Aucune donnée disponible dans le tableau",
     "oPaginate": {
         "sFirst":      "Premier",
         "sPrevious":   "Pr&eacute;c&eacute;dent",
         "sNext":       "Suivant",
         "sLast":       "Dernier"
     },
     "oAria": {
         "sSortAscending":  ": activer pour trier la colonne par ordre croissant",
         "sSortDescending": ": activer pour trier la colonne par ordre décroissant"
     }
 }
</pre>        
      </p>
      <br />
   </div>
</div>

<tab:tab>
   <tab:demo>

      <datatables:table id="myTableId" data="${persons}" labels="/js/datatables.labels.fr.txt">
         <datatables:column title="Id" property="id" />
         <datatables:column title="Firstname" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" sortable="false" />
         <datatables:column title="Mail" property="mail" />
      </datatables:table>

   </tab:demo>
   <tab:taglib>
      <tab:code>
<datatables:table id="myTableId" data="${persons}" labels="/js/datatables.labels.fr.txt">
   <datatables:column title="Id" property="id" />
   <datatables:column title="Firstname" property="firstName" />
   <datatables:column title="LastName" property="lastName" />
   <datatables:column title="City" property="address.town.name" sortable="false" />
   <datatables:column title="Mail" property="mail" />
</datatables:table></tab:code>
   </tab:taglib>
   <tab:thymeleaf>
      <p class="alert alert-error">
         <strong>:-(</strong><br /> Not supported yet !
      </p>
   </tab:thymeleaf>
</tab:tab>