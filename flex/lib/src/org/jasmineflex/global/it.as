package org.jasmineflex.global
{
	import org.jasmineflex.jasmine;

	public const it = function(desc, func) {
		return jasmine.getEnv().it(desc, func);
	};
}