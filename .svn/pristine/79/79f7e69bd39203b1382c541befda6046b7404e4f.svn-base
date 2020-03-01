package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.BizConst;
	
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BForecastModelMTCply")]	
	public class BForecastModelMTCply extends BForecastModelM
	{
		public function BForecastModelMTCply()
		{
			//TODO: implement function
			super();
			super.indicator = BizConst.FORECASTMODELM_INDICATOR_TCPLY;
		}
		
		public var dataPeriodNum:int = 1;
		
		override public function copyShallow( _obj:Object ):void
		{
			var sourceObj:BForecastModelMTCply = BForecastModelMTCply(_obj);
			super.copyShallow( sourceObj );
			this.dataPeriodNum = sourceObj.dataPeriodNum;
		}
		
		override public function copyDeep( _obj:Object ):void
		{
			super.copyDeep(_obj);
			this.copyShallow(_obj);
		}
	}
}