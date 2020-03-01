package dmdd.dmddas.common.system
{
	import aks.aksas.collections.HashMap;
	
	import dmdd.dmddas.common.constant.BizConst;
	import dmdd.dmddas.common.constant.SysConst;
	import dmdd.dmddas.common.utils.UtilProOrg;
	import dmdd.dmddas.dataaccess.aidobject.ABProOrg;
	import dmdd.dmddas.dataaccess.bizobject.BBizData;
	import dmdd.dmddas.dataaccess.bizobject.BDistributionCenter;
	import dmdd.dmddas.dataaccess.bizobject.BFunPermission;
	import dmdd.dmddas.dataaccess.bizobject.BOperatorUser;
	import dmdd.dmddas.dataaccess.bizobject.BOperatorUserBizData;
	import dmdd.dmddas.dataaccess.bizobject.BOperatorUserFunPermission;
	import dmdd.dmddas.dataaccess.bizobject.BOperatorUserProOrg;
	import dmdd.dmddas.dataaccess.bizobject.BOrganization;
	import dmdd.dmddas.dataaccess.bizobject.BOrganizationCharacter;
	import dmdd.dmddas.dataaccess.bizobject.BOrganizationCharacterLayer;
	import dmdd.dmddas.dataaccess.bizobject.BOrganizationLayer;
	import dmdd.dmddas.dataaccess.bizobject.BProduct;
	import dmdd.dmddas.dataaccess.bizobject.BProductCharacter;
	import dmdd.dmddas.dataaccess.bizobject.BProductCharacterLayer;
	import dmdd.dmddas.dataaccess.bizobject.BProductLayer;
	import dmdd.dmddas.dataaccess.bizobject.BSysDictionaryItem;
	import dmdd.dmddas.dataaccess.bizobject.BSysParam;
	import dmdd.dmddas.dataaccess.bizobject.BSysPeriod;
	import dmdd.dmddas.dataaccess.bizobject.BUiPopbScope;
	import dmdd.dmddas.dataaccess.bizobject.BUnitGroup;
	
	import mx.collections.ArrayCollection;
	import mx.collections.Sort;
	import mx.collections.SortField;
	import mx.core.UIComponent;
	import mx.utils.StringUtil;
	
	[Bindable]
	public class ClientEnvironment
	{
		// 全部采用static成员和方法，不要构造函数
//		public function ClientEnvironment()
//		{
//			//TODO: implement function
//		}
		
		//	服务器连接	begin
		public static var endpoint:String = "";
		
		public static var webroot:String = "";
		//	服务器连接	end
		
		//	系统状态 		begin
		public static var systemStatus:int = BizConst.SYSTEM_STATUS_NORMAL;
		//	系统状态 		end

		//服务器版本
		public static var version_server:String="";
		//数据库版本
		public static var version_database:String="";
		
		/**数据库类型*/
		public static var database_type:String = "";
		
		/** 主工作台 */
		public static var modWork:UIComponent = null;
		
		public static var locale:String = "zh_CN";
		
		/** 菜单XML */
		public static var menuXml:XML = null;//菜单定义xml
		
		/** 用户界面定义 */
		public static var uiConfig:UiConfigVo = new UiConfigVo();
		
		//  用户    begin
		private static var operatorUser:BOperatorUser = null;
		private static var hmapPermissionFun:HashMap = new HashMap();
		
		
		private static var arrPermissionProOrg:ArrayCollection = new ArrayCollection();
		
		/** hashmap< proid_orgid ,ABProOrg> */
		public static var hmapPermPorOrg:HashMap = new HashMap();
		
		public static function setOperatorUser( _operatorUser:BOperatorUser ):void
		{
			operatorUser = _operatorUser;
			if( _operatorUser == null )
			{
				return;
			}

			var i:int;
			//	功能权限		begin
			hmapPermissionFun.clear();
			var funPermission:BFunPermission = null;
			if( operatorUser.operatorUserFunPermissions != null )
			{
				for( i=0; i<operatorUser.operatorUserFunPermissions.length; i=i+1 )
				{
					funPermission = BOperatorUserFunPermission(operatorUser.operatorUserFunPermissions.getItemAt(i)).funPermission;
					hmapPermissionFun.put( funPermission.description.toUpperCase(), funPermission );
				}				
			}
			//	功能权限		end

			//	业务范围权限	begin
			arrPermissionProOrg.removeAll();
			hmapPermPorOrg = new HashMap();
			
			var operatorUserProOrg:BOperatorUserProOrg = null;
			var proOrg:ABProOrg = null;
			if( operatorUser.operatorUserProOrgs != null )
			{
				for( i=0; i<operatorUser.operatorUserProOrgs.length; i=i+1 )
				{
					operatorUserProOrg = BOperatorUserProOrg(operatorUser.operatorUserProOrgs.getItemAt(i));
					proOrg = new ABProOrg();
					proOrg.product = operatorUserProOrg.product;
					proOrg.organization = operatorUserProOrg.organization;
					
					arrPermissionProOrg.addItem( proOrg );
					
					//在业务范围权限中，同时 记录高层和明细层proorg
					var keyProOrg:String = proOrg.product.id + "" + 
					hmapPermPorOrg.put( UtilProOrg.getStrKey4ProOrg(proOrg), proOrg);
					
					//获取明细
					var proorgArr:ArrayCollection = UtilProOrg.getDetailProOrgs( new ArrayCollection([proOrg]),true);
					for(var m:int=0; m < proorgArr.length; m++){
						var detailPO:ABProOrg = ABProOrg(proorgArr.getItemAt(m));
						hmapPermPorOrg.put( UtilProOrg.getStrKey4ProOrg(detailPO), detailPO);
					}
				}					
			}			
			//	业务范围权限	end
		}
		
		public static function getOperatorUser():BOperatorUser
		{
			return operatorUser;
		}
		public static function getPermissionProOrgs():ArrayCollection
		{
			return arrPermissionProOrg;
		}
		
		public static function getBizDataIsManaging( _bizData:BBizData ):int
		{
			if( _bizData == null )
			{
				return BizConst.GLOBAL_YESNO_NO;	
			}
			if( operatorUser == null || operatorUser.operatorUserBizDatas == null )
			{
				return BizConst.GLOBAL_YESNO_NO;
			}
			
			var i:int;
			var operatorUserBizData:BOperatorUserBizData = null;
			for( i=0; i<operatorUser.operatorUserBizDatas.length; i=i+1 )
			{
				operatorUserBizData = BOperatorUserBizData(operatorUser.operatorUserBizDatas.getItemAt(i));
				if( operatorUserBizData.bizData.id == _bizData.id )
				{
					return operatorUserBizData.isManaging;
				}
			}
			
			return BizConst.GLOBAL_YESNO_NO;
		}
		
		public static function checkIsPermission( _funPermissionDescription:String ):Boolean
		{
			if( _funPermissionDescription == null || _funPermissionDescription == "" )
			{
				return false;
			}
			
			if( hmapPermissionFun.getValue( _funPermissionDescription.toUpperCase() ) != null )
			{
				return true;
			}
			
			return false;
		}
		//  用户    end	
		
		//	系统参数	begin
		private static var hmap_sysParam:HashMap = new HashMap(); 
		public static function setSysParams( _arr4sysParam:ArrayCollection ):void
		{
			if( _arr4sysParam == null )
			{
				return;
			}
			
			var i:int;
			var sysParam:BSysParam = null;
			for( i=0; i<_arr4sysParam.length; i=i+1 )
			{
				sysParam = BSysParam( _arr4sysParam.getItemAt(i) );
				hmap_sysParam.put( sysParam.code, sysParam );
			}
		}
		
		public static function getSysParam( _code:String ):BSysParam
		{
			return BSysParam( hmap_sysParam.getValue(_code) );
		}
		
		/**
		 * 是否支持套装折合
		 */ 
		public static function getIsSupportSuit():Boolean
		{
			var sysParam:BSysParam = BSysParam( hmap_sysParam.getValue( BizConst.SYSPARAM_CODE_ISSUPPORT_SUIT ) );
			if( sysParam != null &&  int(sysParam.value) == BizConst.SUIT_SUPPORT_TWO )
			{
				return true;
			}
			
			return false;
		}
		
		/**
		 * 页面尺寸，提供通过界面设置入口
		 */ 
		public static function setSysParamPageSize( _pageSize:int ):void
		{
			var sysParam:BSysParam = BSysParam( hmap_sysParam.getValue( BizConst.SYSPARAM_CODE_PAGESIZE ) );
			if( sysParam == null )
			{
				sysParam = new BSysParam();
				sysParam.code = BizConst.SYSPARAM_CODE_PAGESIZE;				
			}
			sysParam.value = String( _pageSize );
			
			hmap_sysParam.put( BizConst.SYSPARAM_CODE_PAGESIZE, sysParam );
		}		
		
		public static function getSysParamPageSize():int
		{
			var sysParam:BSysParam = BSysParam( hmap_sysParam.getValue( BizConst.SYSPARAM_CODE_PAGESIZE ) );
			if( sysParam != null )
			{
				return int(sysParam.value)
			}
			
			return 20;
		}
		
		public static function getSysParamDatabase():String
		{
			var sysParam:BSysParam = BSysParam( hmap_sysParam.getValue( BizConst.SYSPARAM_CODE_DATABASE ) );
			if( sysParam != null )
			{
				return String(sysParam.value)
			}
			
			return SysConst.DATABSE_PRODUCT_ORACLE;
		}		
		//	系统参数	end
		
		//	系统期间	begin
		private static var sysPeriod:BSysPeriod = null;
		public static function setSysPeriod( _sysPeriod:BSysPeriod ):void
		{
			sysPeriod = _sysPeriod;
		}
		public static function getSysPeriod():BSysPeriod
		{
			return sysPeriod;
		}
		//	系统期间	end
		
		//	本地与服务器时间差	begin
		private static var timeDifference:Number = 0;
		public static function setTimeDifference( _timeDifference:Number ):void
		{
			timeDifference = _timeDifference;
		}		
		public static function getTimeDifference():Number
		{
			return timeDifference;
		}
		//	本地与服务器时间差	end
		
		//	组织		begin
		//	1.OrganizationCharacterLayer	begin
		
		/**
		 * 这个变量会被通过getOrganizationCharacterLayers()来被绑定，
		 * 处理其中数据时，通过remove和add，而不是new ArrayCollection 来实现
		 */ 
		private static var arrOrganizationCharacterLayers:ArrayCollection = new ArrayCollection();
		
		public static function setOrganizationCharacterLayers( _arrOrganizationCharacterLayers:ArrayCollection ):void
		{
			arrOrganizationCharacterLayers.removeAll();
			arrOrganizationCharacterLayers.addAll( _arrOrganizationCharacterLayers ); 
			
			//	排序	begin
			var sort:Sort = new Sort();
			var sortFiled4value:SortField = new SortField();
			sortFiled4value.name = 'value';
			sortFiled4value.numeric = true;
			sortFiled4value.descending = false;
			sort.fields = [sortFiled4value];
			
			arrOrganizationCharacterLayers.sort = sort;
			arrOrganizationCharacterLayers.refresh();
			//	排序	end
		}
		public static function getOrganizationCharacterLayers():ArrayCollection
		{
			return arrOrganizationCharacterLayers;
		}
		
		public static function getOrganizationCharacterLayerByValue( _organizationCharacterLayerValue:int ):BOrganizationCharacterLayer
		{
			var i:int;
			var organizationCharacterLayer:BOrganizationCharacterLayer = null;
			if( arrOrganizationCharacterLayers != null && arrOrganizationCharacterLayers.length > 0 )
			{
				for( i=0; i<arrOrganizationCharacterLayers.length; i=i+1 )
				{
					organizationCharacterLayer = BOrganizationCharacterLayer( arrOrganizationCharacterLayers.getItemAt(i) );
					if( organizationCharacterLayer.value == _organizationCharacterLayerValue )
					{
						return organizationCharacterLayer;
					}
				}
			}
			
			return null;
		}
		
		public static function getOrganizationCharacterLayerWithMinValue():BOrganizationCharacterLayer
		{
			var minValue:int = 1000;
			var organizationCharacterLayer_minValue:BOrganizationCharacterLayer = null;
			
			var i:int;
			var organizationCharacterLayer:BOrganizationCharacterLayer = null;
			if( arrOrganizationCharacterLayers != null && arrOrganizationCharacterLayers.length > 0 )
			{
				for( i=0; i<arrOrganizationCharacterLayers.length; i=i+1 )
				{
					organizationCharacterLayer = BOrganizationCharacterLayer( arrOrganizationCharacterLayers.getItemAt(i) );
					if( organizationCharacterLayer.value < minValue )
					{
						minValue = organizationCharacterLayer.value;
						organizationCharacterLayer_minValue = organizationCharacterLayer;
					}
				}
			}
			
			return organizationCharacterLayer_minValue;			
		}
		
		public static function getOrganizationCharacterLayerWithMaxValue():BOrganizationCharacterLayer
		{
			var maxValue:int = -1;
			var organizationCharacterLayer_maxValue:BOrganizationCharacterLayer = null;
			
			var i:int;
			var organizationCharacterLayer:BOrganizationCharacterLayer = null;
			if( arrOrganizationCharacterLayers != null && arrOrganizationCharacterLayers.length > 0 )
			{
				for( i=0; i<arrOrganizationCharacterLayers.length; i=i+1 )
				{
					organizationCharacterLayer = BOrganizationCharacterLayer( arrOrganizationCharacterLayers.getItemAt(i) );
					if( organizationCharacterLayer.value > maxValue )
					{
						maxValue = organizationCharacterLayer.value;
						organizationCharacterLayer_maxValue = organizationCharacterLayer;
					}
				}
			}
			
			return organizationCharacterLayer_maxValue;
		}		
		//	1.OrganizationCharacterLayer	end	
		
		//	2.OrganizationLayer	begin
		/**
		 * 这个变量会被通过getOrganizationLayers()来被绑定，
		 * 处理其中数据时，通过remove和add，而不是new ArrayCollection 来实现
		 */ 		
		private static var arrOrganizationLayers:ArrayCollection = new ArrayCollection();
		
		public static function setOrganizationLayers( _arrOrganizationLayers:ArrayCollection ):void
		{
			arrOrganizationLayers.removeAll();
			arrOrganizationLayers.addAll( _arrOrganizationLayers );
			
			//	排序	begin
			var sort:Sort = new Sort();
			var sortFiled4value:SortField = new SortField();
			sortFiled4value.name = 'value';
			sortFiled4value.numeric = true;
			sortFiled4value.descending = false;
			sort.fields = [sortFiled4value];
			
			arrOrganizationLayers.sort = sort;
			arrOrganizationLayers.refresh();
			//	排序	end			
		}
		public static function getOrganizationLayers():ArrayCollection
		{
			return arrOrganizationLayers;
		}
		
		public static function getOrganizationLayerByValue( _organizationLayerValue:int ):BOrganizationLayer
		{
			var i:int;
			var organizationLayer:BOrganizationLayer = null;
			if( arrOrganizationLayers != null && arrOrganizationLayers.length > 0 )
			{
				for( i=0; i<arrOrganizationLayers.length; i=i+1 )
				{
					organizationLayer = BOrganizationLayer( arrOrganizationLayers.getItemAt(i) );
					if( organizationLayer.value == _organizationLayerValue )
					{
						return organizationLayer;
					}
				}
			}
			
			return null;
		}
		
		public static function getOrganizationLayerWithMinValue():BOrganizationLayer
		{
			var minValue:int = 1000;
			var organizationLayer_minValue:BOrganizationLayer = null;
			
			var i:int;
			var organizationLayer:BOrganizationLayer = null;
			if( arrOrganizationLayers != null && arrOrganizationLayers.length > 0 )
			{
				for( i=0; i<arrOrganizationLayers.length; i=i+1 )
				{
					organizationLayer = BOrganizationLayer( arrOrganizationLayers.getItemAt(i) );
					if( organizationLayer.value < minValue )
					{
						minValue = organizationLayer.value;
						organizationLayer_minValue = organizationLayer;
					}
				}
			}
			
			return organizationLayer_minValue;			
		}
		
		public static function getOrganizationLayerWithMaxValue():BOrganizationLayer
		{
			var maxValue:int = -1;
			var organizationLayer_maxValue:BOrganizationLayer = null;
			
			var i:int;
			var organizationLayer:BOrganizationLayer = null;
			if( arrOrganizationLayers != null && arrOrganizationLayers.length > 0 )
			{
				for( i=0; i<arrOrganizationLayers.length; i=i+1 )
				{
					organizationLayer = BOrganizationLayer( arrOrganizationLayers.getItemAt(i) );
					if( organizationLayer.value > maxValue )
					{
						maxValue = organizationLayer.value;
						organizationLayer_maxValue = organizationLayer;
					}
				}
			}
			
			return organizationLayer_maxValue;
		}		
		//	2.OrganizationLayer	end
		
		//	3.OrganizationCharacter	end
		private static var organizationCharacterTreeRoot:BOrganizationCharacter = null;
		/**
		 * 这个变量会被通过getOrganizationCharacterTreeRootArr()来被绑定，
		 * 处理其中数据时，通过remove和add，而不是new ArrayCollection 来实现
		 */ 		
		private static var organizationCharacterTreeRootArr:ArrayCollection = new ArrayCollection();
		
		/**
		 * 这个变量会被通过getOrganizationCharacterTypes()来被绑定，
		 * 处理其中数据时，通过remove和add，而不是new ArrayCollection 来实现
		 */ 
		private static var arrOrganizationCharacterTypes:ArrayCollection = new ArrayCollection();
		
		
		public static function setOrganizationCharacterTreeRoot( _organizationCharacterTreeRoot:BOrganizationCharacter ):void
		{
			organizationCharacterTreeRoot = _organizationCharacterTreeRoot;		
			organizationCharacterTreeRootArr.removeAll();
			organizationCharacterTreeRootArr.addItem( organizationCharacterTreeRoot );
			
			//	把第一层的特征的Type 取出来	begin
			var i:int;
			var type:String = null;
			arrOrganizationCharacterTypes.removeAll();
			if( organizationCharacterTreeRoot.subOrganizationCharacters != null )
			{
				for( i=0; i<organizationCharacterTreeRoot.subOrganizationCharacters.length; i=i+1 )
				{
					type = BOrganizationCharacter(organizationCharacterTreeRoot.subOrganizationCharacters.getItemAt(i)).type;
					arrOrganizationCharacterTypes.addItem( type );
				}
			}
			//	把第一层的特征的Type 取出来	end
			addOrganizationCharacterToMap(organizationCharacterTreeRoot);
		}
		
		/** 产品MAP <id,bproduct> */
		public static var orgCharacterIdMap:HashMap = new HashMap();
		/** 将所有产品放入hashmap */
		private static function addOrganizationCharacterToMap(_orgCharacter:BOrganizationCharacter):void{
			if( _orgCharacter == null )
				return ;
			
			orgCharacterIdMap.put( _orgCharacter.id,_orgCharacter);
			var subArr:ArrayCollection = _orgCharacter.subOrganizationCharacters;
			if(subArr == null || subArr.length == 0){ //没有下级product
				return ;
			}else{
				for each(var subPro:BOrganizationCharacter in subArr){
					addOrganizationCharacterToMap(subPro);
				}
			}
		}
		
		public static function getOrganizationCharacterTreeRoot():BOrganizationCharacter
		{
			return organizationCharacterTreeRoot;		
		}		
		public static function getOrganizationCharacterTreeRootArr():ArrayCollection
		{
			return organizationCharacterTreeRootArr;
		}
		public static function getOrganizationCharacterTypes():ArrayCollection
		{
			return arrOrganizationCharacterTypes;
		}		
		
		//	3.OrganizationCharacter	end
		
		//	4.Organization	end
		private static var organizationTreeRoot:BOrganization = null;
		/**
		 * 这个变量会被通过getOrganizationLayers()来被绑定，
		 * 处理其中数据时，通过remove和add，而不是new ArrayCollection 来实现
		 */ 		
		private static var organizationTreeRootArr:ArrayCollection = new ArrayCollection();
		public static function setOrganizationTreeRoot( _organizationTreeRoot:BOrganization ):void
		{
			organizationTreeRoot = _organizationTreeRoot;		
			organizationTreeRootArr.removeAll();
			organizationTreeRootArr.addItem( organizationTreeRoot );
			
			addOrganizationToMap(organizationTreeRoot);
		}
		
		/** 产品MAP <id,bproduct> */
		public static var organizationIdMap:HashMap = new HashMap();
		/** 递归将所有产品放入hashmap */
		private static function addOrganizationToMap(_org:BOrganization):void{
			if( _org == null )
				return ;
			
			organizationIdMap.put( _org.id,_org);
			var subOrgArr:ArrayCollection = _org.subOrganizations;
			if(subOrgArr == null || subOrgArr.length == 0){ //没有下级product
				return ;
			}else{
				for each(var subPro:BOrganization in subOrgArr){
					addOrganizationToMap(subPro);
				}
			}
		}
		public static function getOrganizationTreeRoot():BOrganization
		{
			return organizationTreeRoot;		
		}		
		public static function getOrganizationTreeRootArr():ArrayCollection
		{
			return organizationTreeRootArr;
		}
		//	4.Organization	end		
		
		
		//	组织		end
		
		
		//	产品		begin
		//	1.ProductCharacterLayer	begin
		
		/**
		 * 这个变量会被通过getProductCharacterLayers()来被绑定，
		 * 处理其中数据时，通过remove和add，而不是new ArrayCollection 来实现
		 */ 
		private static var arrProductCharacterLayers:ArrayCollection = new ArrayCollection();
		
		public static function setProductCharacterLayers( _arrProductCharacterLayers:ArrayCollection ):void
		{
			arrProductCharacterLayers.removeAll();
			arrProductCharacterLayers.addAll( _arrProductCharacterLayers ); 
			
			//	排序	begin
			var sort:Sort = new Sort();
			var sortFiled4value:SortField = new SortField();
			sortFiled4value.name = 'value';
			sortFiled4value.numeric = true;
			sortFiled4value.descending = false;
			sort.fields = [sortFiled4value];
			
			arrProductCharacterLayers.sort = sort;
			arrProductCharacterLayers.refresh();
			//	排序	end
		}
		public static function getProductCharacterLayers():ArrayCollection
		{
			return arrProductCharacterLayers;
		}
		
		public static function getProductCharacterLayerByValue( _productCharacterLayerValue:int ):BProductCharacterLayer
		{
			var i:int;
			var productCharacterLayer:BProductCharacterLayer = null;
			if( arrProductCharacterLayers != null && arrProductCharacterLayers.length > 0 )
			{
				for( i=0; i<arrProductCharacterLayers.length; i=i+1 )
				{
					productCharacterLayer = BProductCharacterLayer( arrProductCharacterLayers.getItemAt(i) );
					if( productCharacterLayer.value == _productCharacterLayerValue )
					{
						return productCharacterLayer;
					}
				}
			}
			
			return null;
		}
		
		public static function getProductCharacterLayerWithMinValue():BProductCharacterLayer
		{
			var minValue:int = 1000;
			var productCharacterLayer_minValue:BProductCharacterLayer = null;
			
			var i:int;
			var productCharacterLayer:BProductCharacterLayer = null;
			if( arrProductCharacterLayers != null && arrProductCharacterLayers.length > 0 )
			{
				for( i=0; i<arrProductCharacterLayers.length; i=i+1 )
				{
					productCharacterLayer = BProductCharacterLayer( arrProductCharacterLayers.getItemAt(i) );
					if( productCharacterLayer.value < minValue )
					{
						minValue = productCharacterLayer.value;
						productCharacterLayer_minValue = productCharacterLayer;
					}
				}
			}
			
			return productCharacterLayer_minValue;			
		}
		
		public static function getProductCharacterLayerWithMaxValue():BProductCharacterLayer
		{
			var maxValue:int = -1;
			var productCharacterLayer_maxValue:BProductCharacterLayer = null;
			
			var i:int;
			var productCharacterLayer:BProductCharacterLayer = null;
			if( arrProductCharacterLayers != null && arrProductCharacterLayers.length > 0 )
			{
				for( i=0; i<arrProductCharacterLayers.length; i=i+1 )
				{
					productCharacterLayer = BProductCharacterLayer( arrProductCharacterLayers.getItemAt(i) );
					if( productCharacterLayer.value > maxValue )
					{
						maxValue = productCharacterLayer.value;
						productCharacterLayer_maxValue = productCharacterLayer;
					}
				}
			}
			
			return productCharacterLayer_maxValue;
		}		
		//	1.ProductCharacterLayer	end	
		
		//	2.ProductLayer	begin
		/**
		 * 这个变量会被通过getProductLayers()来被绑定，
		 * 处理其中数据时，通过remove和add，而不是new ArrayCollection 来实现
		 */ 		
		private static var arrProductLayers:ArrayCollection = new ArrayCollection();
		
		public static function setProductLayers( _arrProductLayers:ArrayCollection ):void
		{
			arrProductLayers.removeAll();
			arrProductLayers.addAll( _arrProductLayers );
			
			//	排序	begin
			var sort:Sort = new Sort();
			var sortFiled4value:SortField = new SortField();
			sortFiled4value.name = 'value';
			sortFiled4value.numeric = true;
			sortFiled4value.descending = false;
			sort.fields = [sortFiled4value];
			
			arrProductLayers.sort = sort;
			arrProductLayers.refresh();
			//	排序	end			
		}
		public static function getProductLayers():ArrayCollection
		{
			return arrProductLayers;
		}
		
		public static function getProductLayerByValue( _productLayerValue:int ):BProductLayer
		{
			var i:int;
			var productLayer:BProductLayer = null;
			if( arrProductLayers != null && arrProductLayers.length > 0 )
			{
				for( i=0; i<arrProductLayers.length; i=i+1 )
				{
					productLayer = BProductLayer( arrProductLayers.getItemAt(i) );
					if( productLayer.value == _productLayerValue )
					{
						return productLayer;
					}
				}
			}
			
			return null;
		}
		
		public static function getProductLayerWithMinValue():BProductLayer
		{
			var minValue:int = 1000;
			var productLayer_minValue:BProductLayer = null;
			
			var i:int;
			var productLayer:BProductLayer = null;
			if( arrProductLayers != null && arrProductLayers.length > 0 )
			{
				for( i=0; i<arrProductLayers.length; i=i+1 )
				{
					productLayer = BProductLayer( arrProductLayers.getItemAt(i) );
					if( productLayer.value < minValue )
					{
						minValue = productLayer.value;
						productLayer_minValue = productLayer;
					}
				}
			}
			
			return productLayer_minValue;			
		}
		
		public static function getProductLayerWithMaxValue():BProductLayer
		{
			var maxValue:int = -1;
			var productLayer_maxValue:BProductLayer = null;
			
			var i:int;
			var productLayer:BProductLayer = null;
			if( arrProductLayers != null && arrProductLayers.length > 0 )
			{
				for( i=0; i<arrProductLayers.length; i=i+1 )
				{
					productLayer = BProductLayer( arrProductLayers.getItemAt(i) );
					if( productLayer.value > maxValue )
					{
						maxValue = productLayer.value;
						productLayer_maxValue = productLayer;
					}
				}
			}
			
			return productLayer_maxValue;
		}		
		//	2.ProductLayer	end
		
		//	3.ProductCharacter	end
		private static var productCharacterTreeRoot:BProductCharacter = null;
		/**
		 * 这个变量会被通过getProductCharacterTreeRootArr()来被绑定，
		 * 处理其中数据时，通过remove和add，而不是new ArrayCollection 来实现
		 */ 		
		private static var productCharacterTreeRootArr:ArrayCollection = new ArrayCollection();
		
		/**
		 * 这个变量会被通过getProductCharacterTypes()来被绑定，
		 * 处理其中数据时，通过remove和add，而不是new ArrayCollection 来实现
		 */ 
		private static var arrProductCharacterTypes:ArrayCollection = new ArrayCollection();	
		
		public static function setProductCharacterTreeRoot( _productCharacterTreeRoot:BProductCharacter ):void
		{
			productCharacterTreeRoot = _productCharacterTreeRoot;		
			productCharacterTreeRootArr.removeAll();
			productCharacterTreeRootArr.addItem( productCharacterTreeRoot );
			
			//	把第一层的特征的Type 取出来	begin
			var i:int;
			var type:String = null;
			arrProductCharacterTypes.removeAll();
			if( productCharacterTreeRoot.subProductCharacters != null )
			{
				for( i=0; i<productCharacterTreeRoot.subProductCharacters.length; i=i+1 )
				{
					type = BProductCharacter(productCharacterTreeRoot.subProductCharacters.getItemAt(i)).type;
					arrProductCharacterTypes.addItem( type );
				}
			}
			//	把第一层的特征的Type 取出来	end	
			
			addProductCharacterToMap(productCharacterTreeRoot);
		}
		/** 产品MAP <id,bproduct> */
		public static var proCharacterIdMap:HashMap = new HashMap();
		/** 将所有产品放入hashmap */
		private static function addProductCharacterToMap(_proCharacter:BProductCharacter):void{
			if( _proCharacter == null )
				return ;
			
			proCharacterIdMap.put( _proCharacter.id,_proCharacter);
			var subArr:ArrayCollection = _proCharacter.subProductCharacters;
			if(subArr == null || subArr.length == 0){ //没有下级product
				return ;
			}else{
				for each(var subPro:BProductCharacter in subArr){
					addProductCharacterToMap(subPro);
				}
			}
		}
		
		public static function getProductCharacterTreeRoot():BProductCharacter
		{
			return productCharacterTreeRoot;		
		}		
		public static function getProductCharacterTreeRootArr():ArrayCollection
		{
			return productCharacterTreeRootArr;
		}
		public static function getProductCharacterTypes():ArrayCollection
		{
			return arrProductCharacterTypes;
		}			
		//	3.ProductCharacter	end
		
		//	4.Product	end
		private static var productTreeRoot:BProduct = null;
		/**
		 * 这个变量会被通过getProductLayers()来被绑定，
		 * 处理其中数据时，通过remove和add，而不是new ArrayCollection 来实现
		 */ 		
		private static var productTreeRootArr:ArrayCollection = new ArrayCollection();
		
		
		public static function setProductTreeRoot( _productTreeRoot:BProduct ):void
		{
			productTreeRoot = _productTreeRoot;		
			productTreeRootArr.removeAll();
			productTreeRootArr.addItem( productTreeRoot );
			
			addProductToMap(_productTreeRoot);
		}
		
		/** 产品MAP <id,bproduct> */
		public static var productIdMap:HashMap = new HashMap();
		/** 将所有产品放入hashmap */
		private static function addProductToMap(_product:BProduct):void{
			if( _product == null )
				return ;
			
			productIdMap.put( _product.id,_product);
			var subProductArr:ArrayCollection = _product.subProducts;
			if(subProductArr == null || subProductArr.length == 0){ //没有下级product
				return ;
			}else{
				for each(var subPro:BProduct in subProductArr){
					addProductToMap(subPro);
				}
			}
		}
		
		public static function getProductTreeRoot():BProduct
		{
			return productTreeRoot;		
		}		
		public static function getProductTreeRootArr():ArrayCollection
		{
			return productTreeRootArr;
		}
		//	4.Product	end		
		//	产品		end			
				
		//	sysDictionaryItems	begin
		public static var arr4AllSysDictionaryItems:ArrayCollection = new ArrayCollection();
		
		//业务数据类型数组
		private static var arrBizDataType:ArrayCollection = null; //BSysDictionaryItem
		
		/** 获取业务数据类型数组
		 * */
		public static function getBizDataTypeArr():ArrayCollection{
			if(arrBizDataType == null){
				arrBizDataType = getSysDictionaryItems("BIZDATA", "TYPE", true);
			}
			
			return arrBizDataType;
		}
		
		public static function getSysDictionaryItems(_className:String, _attributeName:String, _blWithNull:Boolean):ArrayCollection
		{
			var arr4Rst:ArrayCollection = new ArrayCollection();
			
			if( _className == null || _attributeName == null )
			{
				return arr4Rst;
			}

			var className:String = StringUtil.trim(_className).toLowerCase();
			var attributeName:String = StringUtil.trim(_attributeName).toLowerCase();
			
			if( arr4AllSysDictionaryItems != null )
			{
				for(var i:int=0; i<arr4AllSysDictionaryItems.length; i++)
				{
					var sysDictionaryItem:BSysDictionaryItem = BSysDictionaryItem(arr4AllSysDictionaryItems[i]);
					if( sysDictionaryItem.value == BizConst.GLOBAL_NULL_NULL )
					{
						if( _blWithNull == true )
						{
							arr4Rst.addItem( sysDictionaryItem );								
						}
					}
					else if( sysDictionaryItem.className.toLowerCase() == className && sysDictionaryItem.attributeName.toLowerCase() == attributeName )
					{
						arr4Rst.addItem( sysDictionaryItem );
					}
				}
			}
			
			var sort:Sort = new Sort();
			var sortFiled4value:SortField = new SortField();
			sortFiled4value.name = 'value';
			sortFiled4value.numeric = true;
			sortFiled4value.descending = false;
			sort.fields = [sortFiled4value];
			
			arr4Rst.sort = sort;
			arr4Rst.refresh();				
			
			return arr4Rst;
		}
		
		public static function getSysDictionaryItem( _arr4sysDictionaryItem:ArrayCollection, value:int ):BSysDictionaryItem
		{
			if( _arr4sysDictionaryItem != null )
			{
				var i:int;
				for( i=0; i<_arr4sysDictionaryItem.length; i=i+1 )
				{
					var sysDictionaryItem:BSysDictionaryItem = BSysDictionaryItem(_arr4sysDictionaryItem[i]);
					if( sysDictionaryItem.value == value )
					{
						return sysDictionaryItem;
					}
				}
			}
			
			return null;
		}
		
		//    获取数据字典值在数据字典列表中的index
		public static function getSysDictionaryItemIndexByValue( _arr4SysDictionaryItem:ArrayCollection, _value:int ):int
		{
			if( _arr4SysDictionaryItem != null )
			{
				var i:int;
				for( i=0; i<_arr4SysDictionaryItem.length; i++ )
				{
					var sysDictionaryItem:BSysDictionaryItem = BSysDictionaryItem( _arr4SysDictionaryItem.getItemAt( i ) );
					if( sysDictionaryItem.value == _value )
					{
						return i;
					}
				}
			}
			
			return -1;
		}
		
		//    获取数据字典项显示
		public static function getSysDictionaryItemLocale( _className:String, _attributeName:String, _value:int ):String
		{	
			if( _className == null || _attributeName == null )
			{
				return null;
			}

			var className:String = StringUtil.trim(_className).toLowerCase();
			var attributeName:String = StringUtil.trim(_attributeName).toLowerCase();
			
			if( arr4AllSysDictionaryItems != null )
			{
				for(var i:int=0; i<arr4AllSysDictionaryItems.length; i++)
				{
					var sysDictionaryItem:BSysDictionaryItem = BSysDictionaryItem(arr4AllSysDictionaryItems[i]);
					if( sysDictionaryItem.className.toLowerCase() == className && 
						sysDictionaryItem.attributeName.toLowerCase() == attributeName &&
						sysDictionaryItem.value == _value )
					{
						return sysDictionaryItem.toLocaleString();
					}
				}
			}
			
			return null;
		}					
		
		private static var arr4unitGroups:ArrayCollection = new ArrayCollection();
		public static function setUnitGroups(_arr4unitgroups:ArrayCollection):void
		{
			arr4unitGroups = new ArrayCollection();
			arr4unitGroups = _arr4unitgroups;		
		}
		
		public static function getUnitGroups():ArrayCollection{
			return arr4unitGroups;
		}
		
		public static function getUnitGroup(_unitGuropId:Number):BUnitGroup
		{
			var bunitGroup:BUnitGroup = null;
			for(var i:int=0;i<arr4unitGroups.length;i++)
			{
				bunitGroup = BUnitGroup(arr4unitGroups.getItemAt(i));
				if(bunitGroup.id ==_unitGuropId)
					return bunitGroup;
			}
			return null;
		}
		
		//分销中心缓存 begin
		/** dcmap<id,BDistributionCenter> */
		public static var dcMap:HashMap = new HashMap();
		private static var dcTreeRoot:BDistributionCenter = null;
		private static var dcTreeRootArr:ArrayCollection = new ArrayCollection();
		public static function setDCTreeRoot( _dcTreeRoot:BDistributionCenter ):void
		{
			dcTreeRoot = _dcTreeRoot;		
			dcTreeRootArr.removeAll();
			dcTreeRootArr.addItem(dcTreeRoot);
			
			addDcToMap(dcTreeRoot);
		}
		
		//把DC缓存数据存储到map,递归处理
		private static function addDcToMap(_dc:BDistributionCenter):void{
			if( _dc == null )
				return ;
			
			dcMap.put(_dc.id+"",_dc);
			var subDcArr:ArrayCollection = _dc.subDCs;
			if(subDcArr == null || subDcArr.length == 0){ //没有下级DC
				return ;
			}else{
				for each(var subDc:BDistributionCenter in subDcArr){
					addDcToMap(subDc);
				}
			}
		}
		
		public static function getDCTreeRoot():BDistributionCenter
		{
			return dcTreeRoot;		
		}
		public static function getDCTreeRootArr():ArrayCollection
		{
			return dcTreeRootArr;
		}
		
		//分销中心缓存 end
	}
}