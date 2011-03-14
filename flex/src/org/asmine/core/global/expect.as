package org.asmine.core.global
{
	import org.asmine.core.jasmine;

	public const expect = function(actual) {
		return jasmine.getEnv().currentSpec.expect(actual);
	};
}