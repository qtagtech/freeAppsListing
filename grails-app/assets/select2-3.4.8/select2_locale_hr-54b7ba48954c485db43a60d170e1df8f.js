(function(e){"use strict";function t(e){return" "+e+" znak"+(e%10<5&&e%10>0&&(e%100<5||e%100>19)?e%10>1?"a":"":"ova")}e.extend(e.fn.select2.defaults,{formatNoMatches:function(){return"Nema rezultata"},formatInputTooShort:function(e,n){return"Unesite još"+t(n-e.length)},formatInputTooLong:function(e,n){return"Unesite"+t(e.length-n)+" manje"},formatSelectionTooBig:function(e){return"Maksimalan broj odabranih stavki je "+e},formatLoadMore:function(e){return"Učitavanje rezultata…"},formatSearching:function(){return"Pretraga…"}})})(jQuery)