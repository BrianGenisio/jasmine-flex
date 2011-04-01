package org.jasmineflex.global
{
	import org.jasmineflex.jasmine;

	public const xit = function(desc, func) {
		return jasmine.getEnv().xit(desc, func);
	};
}