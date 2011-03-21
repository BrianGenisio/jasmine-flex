package
{
	import mx.collections.ArrayCollection;
	import mx.collections.ArrayList;
	
	import org.asmine.core.Reporter;
	import org.asmine.core.Runner;
	import org.asmine.core.Spec;
	import org.asmine.core.Suite;
	
	[Bindable]
	public dynamic class TrivialFlexReporter extends Reporter
	{
		public var suites:ArrayList = new ArrayList();
		
		public function TrivialFlexReporter()
		{
			this.reportRunnerStarting = function(runner) {
				//this.runnerStartTime = this.now();
				started(runner);
			};
			
			this.reportSpecResults = function(spec:Spec) {
				var results:ReporterResult = findResult(suites.source, spec.id, false);
				results.result = spec.results().passed() ? "passed" : "failed";
				for each(var message in spec.results().getItems()) {
					if(message.type == "log") {
						results.messages.addItem(message.toString());
					} else if (message.type == "expect" && !message.passed()) {
						results.messages.addItem(message.message);
					}
				}
			}
			
			this.reportSuiteResults = function(suite:Suite) {
				var results:ReporterResult = findResult(suites.source, suite.id);
				results.result = suite.results().passed() ? "passed" : "failed";
			}
				
		}
		
		private function started(runner:Runner) {
			for each(var suite in runner.suites()) {
				
				var reporterResult:ReporterResult = new ReporterResult(suite);
				
				if(suite.parentSuite == null) {
					suites.addItem(reporterResult);
				}
				else {
					var parent:ReporterResult = findResult(suites.source, suite.parentSuite.id);
					parent.children.addItem(reporterResult);
				}
				
				for each(var spec:Spec in suite.specs()) {
					reporterResult.children.addItem(new ReporterResult(spec));
				}
			}
		}
		
		
		private function findResult(items:Array, id:int, isSuite:Boolean=true) : ReporterResult {
			for each(var item:ReporterResult in items) {
				if(item.isSuite == isSuite && item.id == id) {
					return item;
				}
				
				var found:ReporterResult = findResult(item.children.source, id, isSuite);
				if(found)
					return found;
			}
			
			return null;
		}
		
		
	}
}