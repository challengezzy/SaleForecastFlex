package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.SysConst;
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BUiPopbScopeProOrg")]		
	public class BUiPopbScopeProOrg
	{
		public function BUiPopbScopeProOrg()
		{
			//TODO: implement function
		}

		public var version:Number;
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var product:BProduct = null;
		public var organization:BOrganization = null;
		public var uiPopbScope:BUiPopbScope = null;			

	}
}