(function(e){"use strict";e.extend(e.fn.select2.defaults,{formatNoMatches:function(){return"Ei tuloksia"},formatInputTooShort:function(e,t){var n=t-e.length;return"Ole hyvä ja anna "+n+" merkkiä lisää"},formatInputTooLong:function(e,t){var n=e.length-t;return"Ole hyvä ja anna "+n+" merkkiä vähemmän"},formatSelectionTooBig:function(e){return"Voit valita ainoastaan "+e+" kpl"},formatLoadMore:function(e){return"Ladataan lisää tuloksia…"},formatSearching:function(){return"Etsitään…"}})})(jQuery)