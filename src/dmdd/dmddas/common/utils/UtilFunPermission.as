package dmdd.dmddas.common.utils
{
	
	import com.cool.collections.HashMap;
	import com.cool.utils.AlertUtil;
	import com.cool.utils.MetadataTempletUtil;
	import com.cool.vo.MetadataTempletVO;
	
	import dmdd.dmddas.common.system.ClientEnvironment;
	import dmdd.dmddas.common.system.MenuItemVo;
	
	import mx.collections.ArrayCollection;
	import mx.resources.ResourceManager;
	import mx.utils.StringUtil;
	
	[ResourceBundle("sys_funpermission")]
	public class UtilFunPermission
	{
		public function UtilFunPermission()
		{
			//TODO: implement function
		}
		
		public static function getDescriptionLocale(_description:String):String
		{
			var description:String = StringUtil.trim( _description );
			if( description == null || description == "" )
			{
				return null;	
			}
			description = description.toLowerCase();
			return ResourceManager.getInstance().getString('sys_funpermission', description);		
		}
		
		public static var userMenuMap:HashMap = new HashMap(); //用户菜单MAP
		
		private static var arrAllMenuTree:ArrayCollection = null;//所有菜单数据
		
		private static var arrUserMenuTree:ArrayCollection = null;//当前用户菜单数据
		
		public static function getUserMenuTree():ArrayCollection{
			
			arrUserMenuTree = new ArrayCollection();
			for(var i:int=0;i<arrAllMenuTree.length;i++){
				var menuVo:MenuItemVo = arrAllMenuTree.getItemAt(i) as MenuItemVo;
				addMenuToUserTree(menuVo,null);
			}
			
			return arrUserMenuTree;
		}
		
		private static function addMenuToUserTree(menuVo:MenuItemVo,parentMenuVo:MenuItemVo):void{
			var permiType:int = checkIsUserMenu(menuVo,parentMenuVo);
			if(permiType > 0 ){
				var _copyMenuVo:MenuItemVo = new MenuItemVo;
				//COPY 一份
				_copyMenuVo.code = menuVo.code;
				_copyMenuVo.namecn = menuVo.namecn;
				_copyMenuVo.nameen = menuVo.nameen;
				_copyMenuVo.iscatalog = menuVo.iscatalog;
				_copyMenuVo.url = menuVo.url;
				_copyMenuVo.shortcut = menuVo.shortcut;
				_copyMenuVo.icon = menuVo.icon;
				_copyMenuVo.parentMenu = parentMenuVo;
				_copyMenuVo.permissionType = permiType; //获取权限的方式
				
				userMenuMap.put(_copyMenuVo.code,_copyMenuVo);
				
				if(parentMenuVo == null){
					arrUserMenuTree.addItem(_copyMenuVo); //顶级菜单
				}else{
					//加入到上级菜单的子菜单下
					if(parentMenuVo.children == null)
						parentMenuVo.children = new ArrayCollection();
					
					parentMenuVo.children.addItem(_copyMenuVo);
				}
				
				//处理下级菜单
				if(menuVo.children != null){
					for(var i:int=0;i<menuVo.children.length;i++){
						var subMenu:MenuItemVo = menuVo.children.getItemAt(i) as MenuItemVo;
						addMenuToUserTree(subMenu,_copyMenuVo);
					}
				}
				
			}else{
				trace("["+ menuVo.namecn + "]非用户权限内菜单!");
			}
		}
		
		/** 判断用户对此菜单的权限，0-无权限， 1-直接权限 2-父级权限继承 3-子级权限上溯 */
		private static function checkIsUserMenu(menuVo:MenuItemVo,parentMenuVo:MenuItemVo):int{
			if(parentMenuVo != null && (parentMenuVo.permissionType == 1 || parentMenuVo.permissionType == 2) ){ 
				//父菜单权限直接可以查看所有子菜单
				return 2;
			}
			
			if( ClientEnvironment.checkIsPermission(menuVo.code) == true ){
					return 1; //直接权限
			}
			
			if(menuVo.children != null){
				//递归判断其子级菜单有无权限
				for(var i:int=0;i<menuVo.children.length; i++){
					var subMenu:MenuItemVo = menuVo.children.getItemAt(i) as MenuItemVo;
					if( checkIsUserMenu(subMenu,menuVo) > 0 ){
						return 3;
					}
				}
			}
			
			
			return 0; //无权限
		}
		
		/** 初始化菜单数据 */
		public static function initMenuXml():void{
//			var menuMeta:MetadataTempletVO = MetadataTempletUtil.getInstance().getMetadataTempletVO("DMDD_SYSMENUTREE");
//			
//			if(menuMeta == null){
//				AlertUtil.show("未找到菜单配置元数据！",AlertUtil.MESSAGE_ERROR);
//				return;
//			}
			var menuXml:XML = ClientEnvironment.menuXml;
			
			arrAllMenuTree = new ArrayCollection();
			
			for each(var itemXml:XML in menuXml.children()){
				addMenuItemToTree(itemXml,null);
			}
			
		}
		
		private static function addMenuItemToTree(itemXml:XML,parentMenuVo:MenuItemVo):void{
			
			var menuVo:MenuItemVo = new MenuItemVo();
			menuVo.code = itemXml.@code;
			menuVo.namecn = itemXml.@namecn;
			menuVo.nameen = itemXml.@nameen;
			menuVo.iscatalog = itemXml.@iscatalog;
			//menuVo.icon = imgCls4closed; //获取Icon对象
			menuVo.parentMenu = parentMenuVo;
			
			if(itemXml.@iscatalog == "Y"){
				for each(var subItemXml:XML in itemXml.menuitem){
					addMenuItemToTree(subItemXml,menuVo);
				}
			}else{
				menuVo.url = itemXml.@url;
			}
			
			if(parentMenuVo == null){
				arrAllMenuTree.addItem(menuVo);
			}else{
				//加入到上级菜单的子菜单下
				if(parentMenuVo.children == null)
					parentMenuVo.children = new ArrayCollection();
				
				parentMenuVo.children.addItem(menuVo);
			}
		}
		
		
	}
}