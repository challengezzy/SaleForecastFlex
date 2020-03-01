package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.SysConst;
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BHistoryAdjustLogProOrg")]	
	public class BHistoryAdjustLogProOrg
	{
		public function BHistoryAdjustLogProOrg()
		{
			//TODO: implement function
		}
		
		// version,id不要带默认值，否则，新建的对象保存的时候会被当作更新处理
		public var version:Number;
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var historyAdjustLog:BHistoryAdjustLog;
		public var organization:BOrganization;
		public var product:BProduct;		
		
		// BHistoryAdjustLogProOrg 不会被编辑，这里不写copy方法

	}
}