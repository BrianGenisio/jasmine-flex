package org.jasmineflex.global
{
	import org.jasmineflex.jasmine;

	public const afterEach = function(afterEachFunction) {
		jasmine.getEnv().afterEach(afterEachFunction);
	};
}