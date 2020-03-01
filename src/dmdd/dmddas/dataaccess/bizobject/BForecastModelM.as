package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.BizConst;
	import dmdd.dmddas.common.constant.SysConst;
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BForecastModelM")]	
	public class BForecastModelM
	{
		public function BForecastModelM()
		{
			//TODO: implement function
		}
		
		public var version:Number;
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var code:String = "";
		public var name:String = "";
		public var type:int;
		public var indicator:String = "";
		public var source:int;		
		public var description:String = "";
		public var comments:String = "";
		public var outlierFactor:Number = 2.0;
		public var outlierAnalyzePeriodNum:int = 1;
		public var outlierDataIsAutoAdjust:int = BizConst.GLOBAL_YESNO_YES;
		public var outlierDataAdjustHistoryWgt:Number = 0.5;
		public var outlierDataAdjustComputeWgt:Number = 0.5;
		public var historyBizData:BBizData;
		
		
		public function copyShallow( _obj:Object ):void
		{
			var sourceObj:BForecastModelM = BForecastModelM(_obj);
			this.version = sourceObj.version;
			this.id = sourceObj.id;
			this.code = sourceObj.code;
			this.name = sourceObj.name;
			this.type = sourceObj.type;
			this.indicator = sourceObj.indicator;
			this.source = sourceObj.source;
			this.description = sourceObj.description;
			this.comments = sourceObj.comments;
			
			this.outlierFactor = sourceObj.outlierFactor;
			this.outlierAnalyzePeriodNum = sourceObj.outlierAnalyzePeriodNum;
			this.outlierDataIsAutoAdjust = sourceObj.outlierDataIsAutoAdjust;
			this.outlierDataAdjustHistoryWgt = sourceObj.outlierDataAdjustHistoryWgt;
			this.outlierDataAdjustComputeWgt = sourceObj.outlierDataAdjustComputeWgt;
 
		}
		
		public function copyDeep( _obj:Object ):void
		{
			var sourceObj:BForecastModelM = BForecastModelM(_obj);
			this.copyShallow( sourceObj );
			this.historyBizData = sourceObj.historyBizData;
		}		

	}
}