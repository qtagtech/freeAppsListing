+function(e){"use strict";var t=function(n,r){this.$element=e(n);this.options=e.extend({},t.DEFAULTS,r);this.isLoading=false};t.DEFAULTS={loadingText:"loading..."};t.prototype.setState=function(t){var n="disabled";var r=this.$element;var i=r.is("input")?"val":"html";var s=r.data();t=t+"Text";if(!s.resetText)r.data("resetText",r[i]());r[i](s[t]||this.options[t]);setTimeout(e.proxy(function(){if(t=="loadingText"){this.isLoading=true;r.addClass(n).attr(n,n)}else if(this.isLoading){this.isLoading=false;r.removeClass(n).removeAttr(n)}},this),0)};t.prototype.toggle=function(){var e=true;var t=this.$element.closest('[data-toggle="buttons"]');if(t.length){var n=this.$element.find("input");if(n.prop("type")=="radio"){if(n.prop("checked")&&this.$element.hasClass("active"))e=false;else t.find(".active").removeClass("active")}if(e)n.prop("checked",!this.$element.hasClass("active")).trigger("change")}if(e)this.$element.toggleClass("active")};var n=e.fn.button;e.fn.button=function(n){return this.each(function(){var r=e(this);var i=r.data("bs.button");var s=typeof n=="object"&&n;if(!i)r.data("bs.button",i=new t(this,s));if(n=="toggle")i.toggle();else if(n)i.setState(n)})};e.fn.button.Constructor=t;e.fn.button.noConflict=function(){e.fn.button=n;return this};e(document).on("click.bs.button.data-api","[data-toggle^=button]",function(t){var n=e(t.target);if(!n.hasClass("btn"))n=n.closest(".btn");n.button("toggle");t.preventDefault()})}(jQuery)