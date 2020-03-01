package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.BizConst;
	
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BForecastModelMSTPly")]	
	public class BForecastModelMSTPly extends BForecastModelM
	{
		public function BForecastModelMSTPly()
		{
			//TODO: implement function
			super();
			super.indicator = BizConst.FORECASTMODELM_INDICATOR_STPLY;
		}
		
		public var percentValue:Number = 100.00;
		public var seasonSmoothingFactor:Number = 0.5;
		
		override public function copyShallow( _obj:Object ):void
		{
			var sourceObj:BForecastModelMSTPly = BForecastModelMSTPly(_obj);
			super.copyShallow( sourceObj );
			this.percentValue = sourceObj.percentValue;
			this.seasonSmoothingFactor = sourceObj.seasonSmoothingFactor;
		}
		
		override public function copyDeep( _obj:Object ):void
		{
			super.copyDeep(_obj);
			this.copyShallow(_obj);
		}
	}
}