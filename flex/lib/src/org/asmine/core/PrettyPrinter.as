package org.asmine.core
{
	public dynamic class PrettyPrinter
	{
		/**
		 * Base class for pretty printing for expectation results.
		 */
		//jasmine.PrettyPrinter = function() {
		public function PrettyPrinter()
		{
		  this.ppNestLevel_ = 0;
		};
		
		jasmine.PrettyPrinter = PrettyPrinter;
		
		/**
		 * Formats a value in a nice, human-readable string.
		 *
		 * @param value
		 */
		jasmine.PrettyPrinter.prototype.format = function(value) {
		  if (this.ppNestLevel_ > 40) {
		    throw new Error('jasmine.PrettyPrinter: format() nested too deeply!');
		  }
		
		  this.ppNestLevel_++;
		  try {
		    if (value === jasmine.undefined) {
		      this.emitScalar('undefined');
		    } else if (value === null) {
		      this.emitScalar('null');
		    //} else if (value === jasmine.getGlobal()) {
		    //  this.emitScalar('<global>');
		    } else if (value instanceof jasmine.Matchers.Any) {
		      this.emitScalar(value.toString());
		    } else if (typeof value === 'string') {
		      this.emitString(value);
		    } else if (jasmine.isSpy(value)) {
		      this.emitScalar("spy on " + value.identity);
		    } else if (value instanceof RegExp) {
		      this.emitScalar(value.toString());
		    } else if (typeof value === 'function') {
		      this.emitScalar('Function');
		    } else if ("nodeType" in value && typeof value.nodeType === 'number') {
		      this.emitScalar('HTMLNode');
		    } else if (value instanceof Date) {
		      this.emitScalar('Date(' + value + ')');
		    //} else if (value.__Jasmine_been_here_before__) {
		    //  this.emitScalar('<circular reference: ' + (jasmine.isArray_(value) ? 'Array' : 'Object') + '>');
		    } else if (jasmine.isArray_(value) || typeof value == 'object') {
		      //value.__Jasmine_been_here_before__ = true;
		      if (jasmine.isArray_(value)) {
		        this.emitArray(value);
		      } else {
		        this.emitObject(value);
		      }
		      //delete value.__Jasmine_been_here_before__;
		    } else {
		      this.emitScalar(value.toString());
		    }
		  } finally {
		    this.ppNestLevel_--;
		  }
		};
		
		jasmine.PrettyPrinter.prototype.iterateObject = function(obj, fn) {
		  for (var property in obj) {
		    if (property == '__Jasmine_been_here_before__') continue;
		    fn(property, obj.__lookupGetter__ ? (obj.__lookupGetter__(property) !== jasmine.undefined && 
		                                         obj.__lookupGetter__(property) !== null) : false);
		  }
		};
		
		jasmine.PrettyPrinter.prototype.emitArray = jasmine.unimplementedMethod_;
		jasmine.PrettyPrinter.prototype.emitObject = jasmine.unimplementedMethod_;
		jasmine.PrettyPrinter.prototype.emitScalar = jasmine.unimplementedMethod_;
		jasmine.PrettyPrinter.prototype.emitString = jasmine.unimplementedMethod_;
	}
}
