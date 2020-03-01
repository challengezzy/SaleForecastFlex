package dmdd.dmddas.dataaccess.aidobject
{
	import dmdd.dmddas.common.constant.BizConst;

	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.aidobject.ABImInHistoryData")]	
	public class ABImInHistoryData
	{
		public function ABImInHistoryData()
		{
			
		}
		public var productcode:String = null;
		public var organizationcode:String = null;
		public var period:int = BizConst.GLOBAL_NULL_NULL;
		public var value:Number = NaN;
		public var bizdatacode:String = null;
		public var unitgroupcode:String = null;
		public var unitcode:String = null;
		public var result:String = null;
		public var warninfo:String = null;
		public var id:Number = -1;
	}
}