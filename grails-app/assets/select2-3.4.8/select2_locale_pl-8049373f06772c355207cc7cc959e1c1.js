(function(e){"use strict";function t(e,t,n){return" "+e+" "+t+(e==1?"":e%10<5&&e%10>1&&(e%100<5||e%100>20)?n:"ów")}e.extend(e.fn.select2.defaults,{formatNoMatches:function(){return"Brak wyników"},formatInputTooShort:function(e,n){return"Wpisz jeszcze"+t(n-e.length,"znak","i")},formatInputTooLong:function(e,n){return"Wpisana fraza jest za długa o"+t(e.length-n,"znak","i")},formatSelectionTooBig:function(e){return"Możesz zaznaczyć najwyżej"+t(e,"element","y")},formatLoadMore:function(e){return"Ładowanie wyników…"},formatSearching:function(){return"Szukanie…"}})})(jQuery)