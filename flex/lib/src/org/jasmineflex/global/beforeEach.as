package org.asmine.core.global
{
	import org.asmine.core.jasmine;

	public const beforeEach = function(beforeEachFunction) {
		jasmine.getEnv().beforeEach(beforeEachFunction);
	};
}