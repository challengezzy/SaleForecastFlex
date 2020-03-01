package dmdd.dmddas.common.system
{
	import mx.collections.ArrayCollection;

	/** 菜单对象 */
	[Bindable]
	public class MenuItemVo
	{	
		
		public var code:String;
		public var namecn:String;
		public var nameen:String;
		public var iscatalog:Boolean;
		public var shortcut:Boolean;
		public var icon:Class;
		public var url:String;
		
		//权限获取类型 0-无权限， 1-直接权限 2-父级权限继承 3-子级权限上溯
		public var permissionType:int = 0;
		
		public var parentMenu:MenuItemVo;
		
		public var children:ArrayCollection;

	}
}
