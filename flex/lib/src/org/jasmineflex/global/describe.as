// ActionScript file
package org.jasmineflex.global
{
	import org.jasmineflex.jasmine;

	public const describe = function(description, specDefinitions) {
		return jasmine.getEnv().describe(description, specDefinitions);
	};
}