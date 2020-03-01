package dmdd.dmddas.dataaccess.bizobject
{
	
	import dmdd.dmddas.common.constant.BizConst;
	
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BForecastModelMTLa")]		
	public class BForecastModelMTLa extends BForecastModelM
	{
		public function BForecastModelMTLa()
		{
			//TODO: implement function
			super();
			super.indicator = BizConst.FORECASTMODELM_INDICATOR_TLA;
		}
		
		public var dataPeriodNum:int = 1;
		public var trendDampingIsValid:int = BizConst.GLOBAL_YESNO_YES;
		public var trendDampingFactor:Number = 0.5;
		
		override public function copyShallow( _obj:Object ):void
		{
			var sourceObj:BForecastModelMTLa= BForecastModelMTLa(_obj);
			super.copyShallow( sourceObj );
			this.dataPeriodNum = sourceObj.dataPeriodNum;
			this.trendDampingIsValid = sourceObj.trendDampingIsValid;
			this.trendDampingFactor = sourceObj.trendDampingFactor;
		}
		
		override public function copyDeep( _obj:Object ):void
		{
			super.copyDeep(_obj);
			this.copyShallow(_obj);
		}
				
	}
}