package dmdd.dmddas.dataaccess.bizobject
{
	
	import dmdd.dmddas.common.constant.BizConst;
	
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BForecastModelMSTLa")]		
	public class BForecastModelMSTLa extends BForecastModelM
	{
		public function BForecastModelMSTLa()
		{
			//TODO: implement function
			super();
			super.indicator = BizConst.FORECASTMODELM_INDICATOR_STLA;
		}
		
		public var dataPeriodNum:int = 1;
		public var trendDampingIsValid:int = BizConst.GLOBAL_YESNO_YES;
		public var trendDampingFactor:Number = 0.5;
		public var seasonSmoothingFactor:Number = 0.5;
		
		
		override public function copyShallow( _obj:Object ):void
		{
			var sourceObj:BForecastModelMSTLa= BForecastModelMSTLa(_obj);
			super.copyShallow( sourceObj );
			this.dataPeriodNum = sourceObj.dataPeriodNum;
			this.trendDampingIsValid = sourceObj.trendDampingIsValid;
			this.trendDampingFactor = sourceObj.trendDampingFactor;
			this.seasonSmoothingFactor = sourceObj.seasonSmoothingFactor;
		}
		
		override public function copyDeep( _obj:Object ):void
		{
			super.copyDeep(_obj);
			this.copyShallow(_obj);
		}
				
	}
}