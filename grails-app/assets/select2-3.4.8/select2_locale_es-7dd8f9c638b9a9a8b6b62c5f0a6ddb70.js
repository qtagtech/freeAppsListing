(function(e){"use strict";e.extend(e.fn.select2.defaults,{formatNoMatches:function(){return"No se encontraron resultados"},formatInputTooShort:function(e,t){var n=t-e.length;return"Por favor, introduzca "+n+" car"+(n==1?"ácter":"acteres")},formatInputTooLong:function(e,t){var n=e.length-t;return"Por favor, elimine "+n+" car"+(n==1?"ácter":"acteres")},formatSelectionTooBig:function(e){return"Sólo puede seleccionar "+e+" elemento"+(e==1?"":"s")},formatLoadMore:function(e){return"Cargando más resultados…"},formatSearching:function(){return"Buscando…"}})})(jQuery)