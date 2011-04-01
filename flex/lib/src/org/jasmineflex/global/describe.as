// ActionScript file
package org.asmine.core.global
{
	import org.asmine.core.jasmine;

	public const describe = function(description, specDefinitions) {
		return jasmine.getEnv().describe(description, specDefinitions);
	};
}