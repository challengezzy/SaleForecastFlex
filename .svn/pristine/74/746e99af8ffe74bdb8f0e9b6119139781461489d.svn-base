package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.BizConst;
	
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BForecastModelMLEso")]	
	public class BForecastModelMLEso extends BForecastModelM
	{
		public function BForecastModelMLEso()
		{
			//TODO: implement function
			super();
			super.indicator = BizConst.FORECASTMODELM_INDICATOR_LESO;
		}
		
		public var smoothingFactor:Number = 0.5;
		public var initDataPeriodNum:int = 2;
		
		override public function copyShallow( _obj:Object ):void
		{
			var sourceObj:BForecastModelMLEso = BForecastModelMLEso(_obj);
			super.copyShallow( sourceObj );
			this.smoothingFactor = sourceObj.smoothingFactor;
			this.initDataPeriodNum = sourceObj.initDataPeriodNum;
		}
		
		override public function copyDeep( _obj:Object ):void
		{
			super.copyDeep(_obj);
			this.copyShallow(_obj);
		}
	}
}