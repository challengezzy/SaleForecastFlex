package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.SysConst;
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BSysPeriod")]	
	
	public class BSysPeriod
	{
		public function BSysPeriod()
		{
			//TODO: implement function
		}
		
		public var version:Number;
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var compilePeriod:int;
		public var historyValidPeriod:int;
		public var forecastRunPeriod:int;		
		public var historyOpenPeriod:int;
		public var forecastDispPeriod:int;
		public var periodNumPerYear:int;
		public var comments:String = "";		
		
		public function copyShallow( _sourceObj:BSysPeriod ):void
		{
			this.version = _sourceObj.version;
			this.id = _sourceObj.id;
			this.compilePeriod = _sourceObj.compilePeriod;
			this.historyValidPeriod = _sourceObj.historyValidPeriod;
			this.forecastRunPeriod = _sourceObj.forecastRunPeriod;
			this.historyOpenPeriod = _sourceObj.historyOpenPeriod;
			this.forecastDispPeriod = _sourceObj.forecastDispPeriod;			
			this.periodNumPerYear = _sourceObj.periodNumPerYear;
			this.comments = _sourceObj.comments;
			
		}

	}
}