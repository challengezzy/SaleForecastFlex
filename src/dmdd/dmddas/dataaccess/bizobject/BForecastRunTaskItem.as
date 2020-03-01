package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.SysConst;
	
	//	描述	begin
	//	描述	end
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BForecastRunTaskItem")]		
	public class BForecastRunTaskItem
	{
		public function BForecastRunTaskItem()
		{
		}
		
		public var version:Number;
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var seqNo:int;
		public var isIgnoreErrorThreshold:int;	
		public var status:int;
		public var result:int;
		public var resultDetail:String = "";
		public var beginTime:Date;
		public var endTime:Date;
		
		public var et:Number = 0.0;
		public var mape:Number = 0.0;
		public var mad:Number = 0.0;
		public var ts:Number = 0.0;
		public var mse:Number = 0.0;
		
		public var forecastInstCode:String = "";
		public var forecastInstName:String = "";
		public var forecastModelCode:String = "";
		public var forecastModelName:String = "";	
		public var outlierAnalyzePeriodNum:int;
		public var errorThreshold:Number =NaN;
		
		public var comments:String = "";
		
		public var runOrganizationLayer:BOrganizationLayer = null;
		public var runProductLayer:BProductLayer = null;
		public var forecastInst:BForecastInst = null;
		
		public var forecastRunTask:BForecastRunTask = null;
		
		public function setForecastInstInfo( _forecastInst:BForecastInst ):void
		{
			if( _forecastInst == null )
			{
				return;
			}
			
			this.forecastInst = _forecastInst;
			
			this.forecastInstCode = _forecastInst.code;
			this.forecastInstName = _forecastInst.name;
			if( _forecastInst.mappingFcModel != null )
			{
				this.forecastModelCode = _forecastInst.mappingFcModel.code;
				this.forecastModelName = _forecastInst.mappingFcModel.name;
				this.outlierAnalyzePeriodNum = _forecastInst.mappingFcModel.outlierAnalyzePeriodNum;
			}
			this.errorThreshold = _forecastInst.errorThreshold;
			this.runProductLayer = _forecastInst.runProductLayer;
			this.runOrganizationLayer = _forecastInst.runOrganizationLayer;
		}
			
	}
}