(function(e){"use strict";e.extend(e.fn.select2.defaults,{formatMatches:function(e){return e+" résultats sont disponibles, utilisez les flèches haut et bas pour naviguer."},formatNoMatches:function(){return"Aucun résultat trouvé"},formatInputTooShort:function(e,t){var n=t-e.length;return"Merci de saisir "+n+" caractère"+(n==1?"":"s")+" de plus"},formatInputTooLong:function(e,t){var n=e.length-t;return"Merci de supprimer "+n+" caractère"+(n==1?"":"s")},formatSelectionTooBig:function(e){return"Vous pouvez seulement sélectionner "+e+" élément"+(e==1?"":"s")},formatLoadMore:function(e){return"Chargement de résultats supplémentaires…"},formatSearching:function(){return"Recherche en cours…"}})})(jQuery)