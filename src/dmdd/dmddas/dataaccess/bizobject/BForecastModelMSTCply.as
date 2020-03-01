package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.BizConst;
	
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BForecastModelMSTCply")]	
	public class BForecastModelMSTCply extends BForecastModelM
	{
		public function BForecastModelMSTCply()
		{
			//TODO: implement function
			super();
			super.indicator = BizConst.FORECASTMODELM_INDICATOR_STCPLY;
		}
		
		public var dataPeriodNum:int = 1;
		public var seasonSmoothingFactor:Number = 0.5;
		
		override public function copyShallow( _obj:Object ):void
		{
			var sourceObj:BForecastModelMSTCply = BForecastModelMSTCply(_obj);
			super.copyShallow( sourceObj );
			this.dataPeriodNum = sourceObj.dataPeriodNum;
			this.seasonSmoothingFactor = sourceObj.seasonSmoothingFactor;
		}
		
		override public function copyDeep( _obj:Object ):void
		{
			super.copyDeep(_obj);
			this.copyShallow(_obj);
		}
	}
}