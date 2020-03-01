package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.SysConst;

	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BHistoryData")]	
	public class BHistoryData
	{
		public function BHistoryData()
		{
			//TODO: implement function
		}
		
		// version,id不要带默认值，否则，新建的对象保存的时候会被当作更新处理
		public var version:Number;
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var period:int;
		public var value:Number;
		public var comments:String = "";
		public var bizData:BBizData;
		public var organization:BOrganization;
		public var product:BProduct;	
		
		[Transient]	
		public var oldValue:Number;	
		
	}
}