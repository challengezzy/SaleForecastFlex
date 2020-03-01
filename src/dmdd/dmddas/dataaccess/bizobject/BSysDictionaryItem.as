package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.SysConst;
	
	import mx.resources.ResourceManager;

	[ResourceBundle("sys_sysdictionaryitem")]
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BSysDictionaryItem")]
		
	public class BSysDictionaryItem
	{
		public function BSysDictionaryItem()
		{
			//TODO: implement function
		}
		
		public var version:Number;
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var className:String = "";
		public var attributeName:String = "";
		public var value:int;
		public var valueDesc:String = "";
		
		// 这个方法决定了数据字典的显示
		public function toString():String
		{
			return this.toLocaleString();
		}	
				
		public function toLocaleString():String
		{
			return ResourceManager.getInstance().getString('sys_sysdictionaryitem',this.valueDesc.toLowerCase());
		}
	}
}