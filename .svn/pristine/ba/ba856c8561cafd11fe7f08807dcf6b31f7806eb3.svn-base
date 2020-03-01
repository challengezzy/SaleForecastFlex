package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.SysConst;
	

	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BForecastModelMAAnalogItem")]	
	public class BForecastModelMAAnalogItem
	{
		public function BForecastModelMAAnalogItem()
		{
			//TODO: implement function
		}

		// version,id不要带默认值，否则，新建的对象保存的时候会被当作更新处理
		public var version:Number;
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var product:BProduct;
		public var organization:BOrganization;
		public var coefficient:Number;
		public var forecastModelMAAnalog:BForecastModelMAAnalog;	
		
		
		public function copyShallow(_obj:BForecastModelMAAnalogItem):void
		{
			this.version = _obj.version;
			this.id = _obj.id;
			this.product = _obj.product;
			this.organization = _obj.organization;
			this.coefficient = _obj.coefficient;
			this.forecastModelMAAnalog = _obj.forecastModelMAAnalog;
		}			

	}
}