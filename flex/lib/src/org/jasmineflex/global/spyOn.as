package org.jasmineflex.global
{
	import org.jasmineflex.jasmine;

	public const spyOn = function(obj, methodName) {
		return jasmine.getEnv().currentSpec.spyOn(obj, methodName);
	};
}