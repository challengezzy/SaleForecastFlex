package dmdd.dmddas.dataaccess.bizobject
{
	
	import dmdd.dmddas.common.constant.SysConst;
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BForecastInstProOrg")]		
	public class BForecastInstProOrg
	{
		public function BForecastInstProOrg()
		{
			//TODO: implement function
		}
		
		public var version:Number;
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var organization:BOrganization;
		public var product:BProduct;
		public var forecastInst:BForecastInst;			

	}
}