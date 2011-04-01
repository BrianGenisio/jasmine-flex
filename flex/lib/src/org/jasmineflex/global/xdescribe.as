package org.jasmineflex.global
{
	import org.jasmineflex.jasmine;

	public const xdescribe = function(description, specDefinitions) {
		return jasmine.getEnv().xdescribe(description, specDefinitions);
	};
}