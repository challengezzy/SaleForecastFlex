package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.SysConst;
	
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BSysParam")]	
	public class BSysParam
	{
		public function BSysParam()
		{
			//TODO: implement function
		}

		public var version:Number;
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var code:String = "";
		public var value:String = null;
		public var valueType:int;
		public var description:String = "";
		public var comments:String = "";
		
	}
}