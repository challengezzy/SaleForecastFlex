package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.BizConst;
	
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BForecastModelMSLEs")]	
	public class BForecastModelMSLEs extends BForecastModelM
	{
		public function BForecastModelMSLEs()
		{
			//TODO: implement function
			super();
			super.indicator = BizConst.FORECASTMODELM_INDICATOR_SLES;
		}
		
		public var smoothingFactor:Number = 0.5;
		public var initDataPeriodNum:int = 2;
		public var seasonSmoothingFactor:Number = 0.5;
		
		override public function copyShallow( _obj:Object ):void
		{
			var sourceObj:BForecastModelMSLEs = BForecastModelMSLEs(_obj);
			super.copyShallow( sourceObj );
			this.smoothingFactor = sourceObj.smoothingFactor;
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