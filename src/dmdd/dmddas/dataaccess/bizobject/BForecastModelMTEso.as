package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.BizConst;
	
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BForecastModelMTEso")]	
	public class BForecastModelMTEso extends BForecastModelM
	{
		public function BForecastModelMTEso()
		{
			//TODO: implement function
			super();
			super.indicator = BizConst.FORECASTMODELM_INDICATOR_TESO;
		}
		
		public var levelSmoothingFactor:Number = 0.5;
		public var trendSmoothingFactor:Number = 0.5;
		public var trendDampingIsValid:int = BizConst.GLOBAL_YESNO_YES;
		public var trendDampingFactor:Number = 0.5;
		public var initDataPeriodNum:int =3;
		
		override public function copyShallow( _obj:Object ):void
		{
			var sourceObj:BForecastModelMTEso = BForecastModelMTEso(_obj);
			super.copyShallow( sourceObj );
			this.levelSmoothingFactor = sourceObj.levelSmoothingFactor;
			this.trendSmoothingFactor = sourceObj.trendSmoothingFactor;
			this.trendDampingIsValid = sourceObj.trendDampingIsValid;
			this.trendDampingFactor = sourceObj.trendDampingFactor;
			this.initDataPeriodNum = sourceObj.initDataPeriodNum;
		}
		
		override public function copyDeep( _obj:Object ):void
		{
			super.copyDeep(_obj);
			this.copyShallow(_obj);
		}
	}
}