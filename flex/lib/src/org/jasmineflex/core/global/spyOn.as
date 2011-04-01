package org.asmine.core.global
{
	import org.asmine.core.jasmine;

	public const spyOn = function(obj, methodName) {
		return jasmine.getEnv().currentSpec.spyOn(obj, methodName);
	};
}