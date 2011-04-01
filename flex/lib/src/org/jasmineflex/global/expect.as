package org.jasmineflex.global
{
	import org.jasmineflex.jasmine;

	public const expect = function(actual) {
		return jasmine.getEnv().currentSpec.expect(actual);
	};
}