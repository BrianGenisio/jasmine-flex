package org.asmine.core.global
{
	import org.asmine.core.jasmine;

	public const xdescribe = function(description, specDefinitions) {
		return jasmine.getEnv().xdescribe(description, specDefinitions);
	};
}