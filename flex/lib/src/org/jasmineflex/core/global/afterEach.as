package org.asmine.core.global
{
	import org.asmine.core.jasmine;

	public const afterEach = function(afterEachFunction) {
		jasmine.getEnv().afterEach(afterEachFunction);
	};
}