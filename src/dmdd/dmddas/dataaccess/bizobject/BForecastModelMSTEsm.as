package dmdd.dmddas.dataaccess.bizobject
{
	
	import dmdd.dmddas.common.constant.BizConst;
	
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BForecastModelMSTEsm")]	
	public class BForecastModelMSTEsm extends BForecastModelM
	{
		public function BForecastModelMSTEsm()
		{
			//TODO: implement function
			super();
			super.indicator = BizConst.FORECASTMODELM_INDICATOR_STESM;
		}
		
		public var levelSmoothingFactor:Number = 0.5;
		public var trendSmoothingFactor:Number = 0.5;
		public var trendDampingIsValid:int = BizConst.GLOBAL_YESNO_YES;
		public var trendDampingFactor:Number = 0.5;
		public var initDataPeriodNum:int =3;
		public var seasonSmoothingFactor:Number = 0.5;
		
		override public function copyShallow( _obj:Object ):void
		{
			var sourceObj:BForecastModelMSTEsm = BForecastModelMSTEsm(_obj);
			super.copyShallow( sourceObj );
			this.levelSmoothingFactor = sourceObj.levelSmoothingFactor;
			this.trendSmoothingFactor = sourceObj.trendSmoothingFactor;
			this.trendDampingIsValid = sourceObj.trendDampingIsValid;
			this.trendDampingFactor = sourceObj.trendDampingFactor;
			this.initDataPeriodNum = sourceObj.initDataPeriodNum;
			this.seasonSmoothingFactor = sourceObj.seasonSmoothingFactor;
		}
		
		override public function copyDeep( _obj:Object ):void
		{
			super.copyDeep(_obj);
			this.copyShallow(_obj);
		}		
		
	}
}