$.extend(true,$.fn.dataTable.defaults,{sDom:"<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>",sPaginationType:"bootstrap",oLanguage:{sLengthMenu:"_MENU_ records per page"}});$.extend($.fn.dataTableExt.oStdClasses,{sWrapper:"dataTables_wrapper form-inline"});$.fn.dataTableExt.oApi.fnPagingInfo=function(e){return{iStart:e._iDisplayStart,iEnd:e.fnDisplayEnd(),iLength:e._iDisplayLength,iTotal:e.fnRecordsTotal(),iFilteredTotal:e.fnRecordsDisplay(),iPage:e._iDisplayLength===-1?0:Math.ceil(e._iDisplayStart/e._iDisplayLength),iTotalPages:e._iDisplayLength===-1?0:Math.ceil(e.fnRecordsDisplay()/e._iDisplayLength)}};$.extend($.fn.dataTableExt.oPagination,{bootstrap:{fnInit:function(e,t,n){var r=e.oLanguage.oPaginate;var i=function(t){t.preventDefault();if(e.oApi._fnPageChange(e,t.data.action)){n(e)}};$(t).append('<ul class="pagination">'+'<li class="prev disabled"><a href="#">&larr; '+r.sPrevious+"</a></li>"+'<li class="next disabled"><a href="#">'+r.sNext+" &rarr; </a></li>"+"</ul>");var s=$("a",t);$(s[0]).bind("click.DT",{action:"previous"},i);$(s[1]).bind("click.DT",{action:"next"},i)},fnUpdate:function(e,t){var n=5;var r=e.oInstance.fnPagingInfo();var i=e.aanFeatures.p;var s,o,u,a,f,l,c=Math.floor(n/2);if(r.iTotalPages<n){f=1;l=r.iTotalPages}else if(r.iPage<=c){f=1;l=n}else if(r.iPage>=r.iTotalPages-c){f=r.iTotalPages-n+1;l=r.iTotalPages}else{f=r.iPage-c+1;l=f+n-1}for(s=0,o=i.length;s<o;s++){$("li:gt(0)",i[s]).filter(":not(:last)").remove();for(u=f;u<=l;u++){a=u==r.iPage+1?'class="active"':"";$("<li "+a+'><a href="#">'+u+"</a></li>").insertBefore($("li:last",i[s])[0]).bind("click",function(n){n.preventDefault();e._iDisplayStart=(parseInt($("a",this).text(),10)-1)*r.iLength;t(e)})}if(r.iPage===0){$("li:first",i[s]).addClass("disabled")}else{$("li:first",i[s]).removeClass("disabled")}if(r.iPage===r.iTotalPages-1||r.iTotalPages===0){$("li:last",i[s]).addClass("disabled")}else{$("li:last",i[s]).removeClass("disabled")}}}}});if($.fn.DataTable.TableTools){$.extend(true,$.fn.DataTable.TableTools.classes,{container:"DTTT btn-group",buttons:{normal:"btn",disabled:"disabled"},collection:{container:"DTTT_dropdown dropdown-menu",buttons:{normal:"",disabled:"disabled"}},print:{info:"DTTT_print_info modal"},select:{row:"active"}});$.extend(true,$.fn.DataTable.TableTools.DEFAULTS.oTags,{collection:{container:"ul",button:"li",liner:"a"}})}