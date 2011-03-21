package
{
	import mx.collections.ArrayList;
	
	import org.asmine.core.Spec;
	import org.asmine.core.Suite;

	[Bindable]
	public class ReporterResult
	{
		public var id;
		public var description:String;
		public var children:ArrayList = new ArrayList();
		public var result:String;
		public var messages:ArrayList = new ArrayList();
		
		private var suiteOrSpec:*;
		
		public function ReporterResult(suiteOrSpec:*) {
			this.suiteOrSpec = suiteOrSpec;
			this.id = suiteOrSpec.id;
			this.description = suiteOrSpec.description;
		}
		
		public function get isSuite():Boolean { return suiteOrSpec is Suite; }
		public function get isSpec():Boolean { return suiteOrSpec is Spec; }
	}
}