!function(){function e(e,t,n,a,r){function i(e,t){if(t=t||0,!e[0])throw"findAndReplaceDOMText cannot handle zero-length matches";var n=e.index;if(t>0){var a=e[t];if(!a)throw"Invalid capture group";n+=e[0].indexOf(a),e[0]=a}return[n,n+e[0].length,[e[0]]]}function d(e){var t;if(3===e.nodeType)return e.data;if(h[e.nodeName]&&!u[e.nodeName])return"";if(t="",(u[e.nodeName]||m[e.nodeName])&&(t+="\n"),e=e.firstChild)do t+=d(e);while(e=e.nextSibling);return t}function o(e,t,n){var a,r,i,d,o=[],l=0,c=e,s=t.shift(),f=0;e:for(;;){if((u[c.nodeName]||m[c.nodeName])&&l++,3===c.nodeType&&(!r&&c.length+l>=s[1]?(r=c,d=s[1]-l):a&&o.push(c),!a&&c.length+l>s[0]&&(a=c,i=s[0]-l),l+=c.length),a&&r){if(c=n({startNode:a,startNodeIndex:i,endNode:r,endNodeIndex:d,innerNodes:o,match:s[2],matchIndex:f}),l-=r.length-d,a=null,r=null,o=[],s=t.shift(),f++,!s)break}else{if((!h[c.nodeName]||u[c.nodeName])&&c.firstChild){c=c.firstChild;continue}if(c.nextSibling){c=c.nextSibling;continue}}for(;;){if(c.nextSibling){c=c.nextSibling;break}if(c.parentNode===e)break e;c=c.parentNode}}}function l(e){var t;if("function"!=typeof e){var n=e.nodeType?e:f.createElement(e);t=function(e,t){var a=n.cloneNode(!1);return a.setAttribute("data-mce-index",t),e&&a.appendChild(f.createTextNode(e)),a}}else t=e;return function(e){var n,a,r,i=e.startNode,d=e.endNode,o=e.matchIndex;if(i===d){var l=i;r=l.parentNode,e.startNodeIndex>0&&(n=f.createTextNode(l.data.substring(0,e.startNodeIndex)),r.insertBefore(n,l));var c=t(e.match[0],o);return r.insertBefore(c,l),e.endNodeIndex<l.length&&(a=f.createTextNode(l.data.substring(e.endNodeIndex)),r.insertBefore(a,l)),l.parentNode.removeChild(l),c}n=f.createTextNode(i.data.substring(0,e.startNodeIndex)),a=f.createTextNode(d.data.substring(e.endNodeIndex));for(var s=t(i.data.substring(e.startNodeIndex),o),u=[],h=0,m=e.innerNodes.length;m>h;++h){var g=e.innerNodes[h],p=t(g.data,o);g.parentNode.replaceChild(p,g),u.push(p)}var x=t(d.data.substring(0,e.endNodeIndex),o);return r=i.parentNode,r.insertBefore(n,i),r.insertBefore(s,i),r.removeChild(i),r=d.parentNode,r.insertBefore(x,d),r.insertBefore(a,d),r.removeChild(d),x}}var c,s,f,u,h,m,g=[],p=0;if(f=t.ownerDocument,u=r.getBlockElements(),h=r.getWhiteSpaceElements(),m=r.getShortEndedElements(),s=d(t)){if(e.global)for(;c=e.exec(s);)g.push(i(c,a));else c=s.match(e),g.push(i(c,a));return g.length&&(p=g.length,o(t,g,l(n))),p}}function t(t){function n(){function e(){r.statusbar.find("#next").disabled(!d(s+1).length),r.statusbar.find("#prev").disabled(!d(s-1).length)}function n(){tinymce.ui.MessageBox.alert("Could not find the specified string.",function(){r.find("#find")[0].focus()})}var a={},r=tinymce.ui.Factory.create({type:"window",layout:"flex",pack:"center",align:"center",onClose:function(){t.focus(),c.done()},onSubmit:function(t){var i,o,l,f;return t.preventDefault(),o=r.find("#case").checked(),f=r.find("#words").checked(),l=r.find("#find").value(),l.length?a.text==l&&a.caseState==o&&a.wholeWord==f?0===d(s+1).length?(n(),void 0):(c.next(),e(),void 0):(i=c.find(l,o,f),i||n(),r.statusbar.items().slice(1).disabled(0===i),e(),a={text:l,caseState:o,wholeWord:f},void 0):(c.done(!1),r.statusbar.items().slice(1).disabled(!0),void 0)},buttons:[{text:"Find",onclick:function(){r.submit()}},{text:"Replace",disabled:!0,onclick:function(){c.replace(r.find("#replace").value())||(r.statusbar.items().slice(1).disabled(!0),s=-1,a={})}},{text:"Replace all",disabled:!0,onclick:function(){c.replace(r.find("#replace").value(),!0,!0),r.statusbar.items().slice(1).disabled(!0),a={}}},{type:"spacer",flex:1},{text:"Prev",name:"prev",disabled:!0,onclick:function(){c.prev(),e()}},{text:"Next",name:"next",disabled:!0,onclick:function(){c.next(),e()}}],title:"Find and replace",items:{type:"form",padding:20,labelGap:30,spacing:10,items:[{type:"textbox",name:"find",size:40,label:"Find",value:t.selection.getNode().src},{type:"textbox",name:"replace",size:40,label:"Replace with"},{type:"checkbox",name:"case",text:"Match case",label:" "},{type:"checkbox",name:"words",text:"Whole words",label:" "}]}}).renderTo().reflow()}function a(e){var t=e.getAttribute("data-mce-index");return"number"==typeof t?""+t:t}function r(n){var a,r;return r=t.dom.create("span",{"data-mce-bogus":1}),r.className="mce-match-marker",a=t.getBody(),c.done(!1),e(n,a,r,!1,t.schema)}function i(e){var t=e.parentNode;t.insertBefore(e.firstChild,e),e.parentNode.removeChild(e)}function d(e){var n,r=[];if(n=tinymce.toArray(t.getBody().getElementsByTagName("span")),n.length)for(var i=0;i<n.length;i++){var d=a(n[i]);null!==d&&d.length&&d===e.toString()&&r.push(n[i])}return r}function o(e){var n=s,a=t.dom;e=e!==!1,e?n++:n--,a.removeClass(d(s),"mce-match-marker-selected");var r=d(n);return r.length?(a.addClass(d(n),"mce-match-marker-selected"),t.selection.scrollIntoView(r[0]),n):-1}function l(e){e.parentNode.removeChild(e)}var c=this,s=-1;c.init=function(e){e.addMenuItem("searchreplace",{text:"Find and replace",shortcut:"Ctrl+F",onclick:n,separator:"before",context:"edit"}),e.addButton("searchreplace",{tooltip:"Find and replace",shortcut:"Ctrl+F",onclick:n}),e.addCommand("SearchReplace",n),e.shortcuts.add("Ctrl+F","",n)},c.find=function(e,t,n){e=e.replace(/[\-\[\]\/\{\}\(\)\*\+\?\.\\\^\$\|]/g,"\\$&"),e=n?"\\b"+e+"\\b":e;var a=r(new RegExp(e,t?"g":"gi"));return a&&(s=-1,s=o(!0)),a},c.next=function(){var e=o(!0);-1!==e&&(s=e)},c.prev=function(){var e=o(!1);-1!==e&&(s=e)},c.replace=function(e,n,r){var o,f,u,h,m,g,p=s;for(n=n!==!1,u=t.getBody(),f=tinymce.toArray(u.getElementsByTagName("span")),o=0;o<f.length;o++){var x=a(f[o]);if(null!==x&&x.length)if(h=m=parseInt(x,10),r||h===s){for(e.length?(f[o].firstChild.nodeValue=e,i(f[o])):l(f[o]);f[++o];)if(h=a(f[o]),null!==x&&x.length){if(h!==m){o--;break}l(f[o])}n&&p--}else m>s&&f[o].setAttribute("data-mce-index",m-1)}return t.undoManager.add(),s=p,n?(g=d(p+1).length>0,c.next()):(g=d(p-1).length>0,c.prev()),!r&&g},c.done=function(e){var n,r,d,o;for(r=tinymce.toArray(t.getBody().getElementsByTagName("span")),n=0;n<r.length;n++){var l=a(r[n]);null!==l&&l.length&&(l===s.toString()&&(d||(d=r[n].firstChild),o=r[n].firstChild),i(r[n]))}if(d&&o){var c=t.dom.createRng();return c.setStart(d,0),c.setEnd(o,o.data.length),e!==!1&&t.selection.setRng(c),c}}}tinymce.PluginManager.add("searchreplace",t)}();
