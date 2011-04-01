package org.asmine.core.global
{
	import org.asmine.core.jasmine;

	public const xit = function(desc, func) {
		return jasmine.getEnv().xit(desc, func);
	};
}