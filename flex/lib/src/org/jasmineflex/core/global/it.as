package org.asmine.core.global
{
	import org.asmine.core.jasmine;

	public const it = function(desc, func) {
		return jasmine.getEnv().it(desc, func);
	};
}