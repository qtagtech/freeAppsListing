(function(e){"use strict";e.extend(e.fn.select2.defaults,{formatNoMatches:function(){return"Ništa nije pronađeno"},formatInputTooShort:function(e,t){var n=t-e.length;return"Ukucajte bar još "+n+" simbol"+(n%10==1&&n%100!=11?"":"a")},formatInputTooLong:function(e,t){var n=e.length-t;return"Obrišite "+n+" simbol"+(n%10==1&&n%100!=11?"":"a")},formatSelectionTooBig:function(e){return"Možete izabrati samo "+e+" stavk"+(e%10==1&&e%100!=11?"u":e%10>=2&&e%10<=4&&(e%100<12||e%100>14)?"e":"i")},formatLoadMore:function(e){return"Preuzimanje još rezultata…"},formatSearching:function(){return"Pretraga…"}})})(jQuery)