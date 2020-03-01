package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.BizConst;
	
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BForecastModelMTPly")]	
	public class BForecastModelMTPly extends BForecastModelM
	{
		public function BForecastModelMTPly()
		{
			//TODO: implement function
			super();
			super.indicator = BizConst.FORECASTMODELM_INDICATOR_TPLY;
		}
		
		public var percentValue:Number = 100.00;
		
		override public function copyShallow( _obj:Object ):void
		{
			var sourceObj:BForecastModelMTPly = BForecastModelMTPly(_obj);
			super.copyShallow( sourceObj );
			this.percentValue = sourceObj.percentValue;
		}
		
		override public function copyDeep( _obj:Object ):void
		{
			super.copyDeep(_obj);
			this.copyShallow(_obj);
		}
	}
}