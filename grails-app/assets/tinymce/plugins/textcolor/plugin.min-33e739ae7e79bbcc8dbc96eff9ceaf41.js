tinymce.PluginManager.add("textcolor",function(e){function o(){var o,t,r=[];for(t=e.settings.textcolor_map||["000000","Black","993300","Burnt orange","333300","Dark olive","003300","Dark green","003366","Dark azure","000080","Navy Blue","333399","Indigo","333333","Very dark gray","800000","Maroon","FF6600","Orange","808000","Olive","008000","Green","008080","Teal","0000FF","Blue","666699","Grayish blue","808080","Gray","FF0000","Red","FF9900","Amber","99CC00","Yellow green","339966","Sea green","33CCCC","Turquoise","3366FF","Royal blue","800080","Purple","999999","Medium gray","FF00FF","Magenta","FFCC00","Gold","FFFF00","Yellow","00FF00","Lime","00FFFF","Aqua","00CCFF","Sky blue","993366","Brown","C0C0C0","Silver","FF99CC","Pink","FFCC99","Peach","FFFF99","Light yellow","CCFFCC","Pale green","CCFFFF","Pale cyan","99CCFF","Light sky blue","CC99FF","Plum","FFFFFF","White"],o=0;o<t.length;o+=2)r.push({text:t[o+1],color:t[o]});return r}function t(){var t,r,l,c,n,a,F,i,d,u=this;for(t=o(),l='<table class="mce-grid mce-grid-border mce-colorbutton-grid" role="presentation" cellspacing="0"><tbody>',c=t.length-1,n=e.settings.textcolor_rows||5,a=e.settings.textcolor_cols||8,i=0;n>i;i++){for(l+="<tr>",F=0;a>F;F++)d=i*a+F,d>c?l+="<td></td>":(r=t[d],l+='<td><div id="'+u._id+"-"+d+'"'+' data-mce-color="'+r.color+'"'+' role="option"'+' tabIndex="-1"'+' style="'+(r?"background-color: #"+r.color:"")+'"'+' title="'+r.text+'">'+"</div>"+"</td>");l+="</tr>"}return l+="</tbody></table>"}function r(o){var t,r=this.parent();(t=o.target.getAttribute("data-mce-color"))&&(r.hidePanel(),t="#"+t,r.color(t),e.execCommand(r.settings.selectcmd,!1,t))}function l(){var o=this;o._color&&e.execCommand(o.settings.selectcmd,!1,o._color)}e.addButton("forecolor",{type:"colorbutton",tooltip:"Text color",selectcmd:"ForeColor",panel:{html:t,onclick:r},onclick:l}),e.addButton("backcolor",{type:"colorbutton",tooltip:"Background color",selectcmd:"HiliteColor",panel:{html:t,onclick:r},onclick:l})});
