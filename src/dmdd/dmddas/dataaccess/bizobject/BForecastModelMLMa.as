package dmdd.dmddas.dataaccess.bizobject
{
	
	import dmdd.dmddas.common.constant.BizConst;
	
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BForecastModelMLMa")]		
	public class BForecastModelMLMa extends BForecastModelM
	{
		public function BForecastModelMLMa()
		{
			//TODO: implement function
			super();
			super.indicator = BizConst.FORECASTMODELM_INDICATOR_LMA;
		}
		
		public var dataPeriodNum:int = 2;
		
		override public function copyShallow( _obj:Object ):void
		{
			var sourceObj:BForecastModelMLMa= BForecastModelMLMa(_obj);
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