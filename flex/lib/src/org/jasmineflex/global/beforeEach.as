package org.jasmineflex.global
{
	import org.jasmineflex.jasmine;

	public const beforeEach = function(beforeEachFunction) {
		jasmine.getEnv().beforeEach(beforeEachFunction);
	};
}