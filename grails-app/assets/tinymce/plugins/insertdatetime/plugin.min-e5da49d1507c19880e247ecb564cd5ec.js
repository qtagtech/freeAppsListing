tinymce.PluginManager.add("insertdatetime",function(e){function t(t,a){function n(e,t){if(e=""+e,e.length<t)for(var a=0;a<t-e.length;a++)e="0"+e;return e}return a=a||new Date,t=t.replace("%D","%m/%d/%Y"),t=t.replace("%r","%I:%M:%S %p"),t=t.replace("%Y",""+a.getFullYear()),t=t.replace("%y",""+a.getYear()),t=t.replace("%m",n(a.getMonth()+1,2)),t=t.replace("%d",n(a.getDate(),2)),t=t.replace("%H",""+n(a.getHours(),2)),t=t.replace("%M",""+n(a.getMinutes(),2)),t=t.replace("%S",""+n(a.getSeconds(),2)),t=t.replace("%I",""+((a.getHours()+11)%12+1)),t=t.replace("%p",""+(a.getHours()<12?"AM":"PM")),t=t.replace("%B",""+e.translate(u[a.getMonth()])),t=t.replace("%b",""+e.translate(m[a.getMonth()])),t=t.replace("%A",""+e.translate(c[a.getDay()])),t=t.replace("%a",""+e.translate(i[a.getDay()])),t=t.replace("%%","%")}function a(a){var n=t(a);if(e.settings.insertdatetime_element){var r;r=/%[HMSIp]/.test(a)?t("%Y-%m-%dT%H:%M"):t("%Y-%m-%d"),n='<time datetime="'+r+'">'+n+"</time>";var i=e.dom.getParent(e.selection.getStart(),"time");if(i)return e.dom.setOuterHTML(i,n),void 0}e.insertContent(n)}var n,r,i="Sun Mon Tue Wed Thu Fri Sat Sun".split(" "),c="Sunday Monday Tuesday Wednesday Thursday Friday Saturday Sunday".split(" "),m="Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec".split(" "),u="January February March April May June July August September October November December".split(" "),d=[];e.addCommand("mceInsertDate",function(){a(e.getParam("insertdatetime_dateformat",e.translate("%Y-%m-%d")))}),e.addCommand("mceInsertTime",function(){a(e.getParam("insertdatetime_timeformat",e.translate("%H:%M:%S")))}),e.addButton("inserttime",{type:"splitbutton",title:"Insert time",onclick:function(){a(n||r)},menu:d}),tinymce.each(e.settings.insertdatetime_formats||["%H:%M:%S","%Y-%m-%d","%I:%M:%S %p","%D"],function(e){r||(r=e),d.push({text:t(e),onclick:function(){n=e,a(e)}})}),e.addMenuItem("insertdatetime",{icon:"date",text:"Insert date/time",menu:d,context:"insert"})});
