(function(e){"use strict";e.extend(e.fn.select2.defaults,{formatNoMatches:function(){return"Geen resultaten gevonden"},formatInputTooShort:function(e,t){var n=t-e.length;return"Vul "+n+" karakter"+(n==1?"":"s")+" meer in"},formatInputTooLong:function(e,t){var n=e.length-t;return"Vul "+n+" karakter"+(n==1?"":"s")+" minder in"},formatSelectionTooBig:function(e){return"Maximaal "+e+" item"+(e==1?"":"s")+" toegestaan"},formatLoadMore:function(e){return"Meer resultaten laden…"},formatSearching:function(){return"Zoeken…"}})})(jQuery)