package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.SysConst;
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BOperatorUserFunPermission")]		
	public class BOperatorUserFunPermission
	{
		public function BOperatorUserFunPermission()
		{
			//TODO: implement function
		}

		public var version:Number;
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var funPermission:BFunPermission;
		public var operatorUser:BOperatorUser;		
		
	}
}