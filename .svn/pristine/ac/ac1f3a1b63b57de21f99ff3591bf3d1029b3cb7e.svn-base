package dmdd.dmddas.common.utils
{
	import aks.aksas.collections.HashMap;
	
	import dmdd.dmddas.common.constant.BizConst;
	import dmdd.dmddas.dataaccess.aidobject.ABProOrg;
	import dmdd.dmddas.dataaccess.bizobject.BBizData;
	import dmdd.dmddas.dataaccess.bizobject.BFunPermission;
	import dmdd.dmddas.dataaccess.bizobject.BOperatorUser;
	import dmdd.dmddas.dataaccess.bizobject.BOperatorUserBizData;
	import dmdd.dmddas.dataaccess.bizobject.BOperatorUserFunPermission;
	import dmdd.dmddas.dataaccess.bizobject.BOperatorUserProOrg;
	
	import mx.collections.ArrayCollection;
	
	public class UtilOperatorUser
	{
		private static var allFunPermissions:ArrayCollection = new ArrayCollection();
		
		public static function setAllFunPermissions(_allFunPermissions:ArrayCollection):void
		{
			allFunPermissions = _allFunPermissions;
		}			
		
		public function UtilOperatorUser()
		{
			//TODO: implement function
		}
		
		/**
		 * 把  _arrFunPermission 加入到 _operatorUser 权限列表
		 */ 
		public static function addFunPermissionsToOperatorUser( _operatorUser:BOperatorUser, _arrFunPermission:ArrayCollection ):void
		{
			if( _arrFunPermission == null )
			{
				return;
			}
			
			if( _operatorUser == null )
			{
				return;	
			}
			
			
			if( _operatorUser.operatorUserFunPermissions == null )
			{	
				_operatorUser.operatorUserFunPermissions = new ArrayCollection();
			}
			
			var i:int;
			var funPermission:BFunPermission = null;
			var operatorUserFunPermission:BOperatorUserFunPermission = null;
			
			var hmap_funPermission:HashMap = new HashMap();
			for( i=0; i<_operatorUser.operatorUserFunPermissions.length; i=i+1 )
			{
				operatorUserFunPermission = BOperatorUserFunPermission(_operatorUser.operatorUserFunPermissions.getItemAt(i));
				hmap_funPermission.put( "" + operatorUserFunPermission.funPermission.id, operatorUserFunPermission.funPermission );
			}					
			
			for( i=0; i<_arrFunPermission.length; i=i+1 )
			{
				funPermission = BFunPermission( _arrFunPermission.getItemAt( i ) );
				if( hmap_funPermission.getValue( "" + funPermission.id ) == null )
				{
					operatorUserFunPermission = new BOperatorUserFunPermission();
					operatorUserFunPermission.funPermission = funPermission;
					operatorUserFunPermission.operatorUser = _operatorUser;
					
					_operatorUser.operatorUserFunPermissions.addItemAt( operatorUserFunPermission , 0 );							
				}
			}						
		}			

		/**
		 * 把 _arrBizData 加入到 _operatorUser 的权限列表
		 */ 
		public static function addBizDatasToOperatorUser( _operatorUser:BOperatorUser, _arrBizData:ArrayCollection ):void
		{
			if( _arrBizData == null )
			{
				return;
			}
			
			if( _operatorUser == null )
			{
				return;	
			}
			
			
			if( _operatorUser.operatorUserBizDatas == null )
			{	
				_operatorUser.operatorUserBizDatas = new ArrayCollection();
			}
			
			var i:int;
			var bizData:BBizData = null;
			var operatorUserBizData:BOperatorUserBizData = null;
			
			var hmap_bizData:HashMap = new HashMap();
			for( i=0; i<_operatorUser.operatorUserBizDatas.length; i=i+1 )
			{
				operatorUserBizData = BOperatorUserBizData(_operatorUser.operatorUserBizDatas.getItemAt(i));
				hmap_bizData.put( "" + operatorUserBizData.bizData.id, operatorUserBizData.bizData );
			}					
			
			for( i=0; i<_arrBizData.length; i=i+1 )
			{
				bizData = BBizData( _arrBizData.getItemAt( i ) );
				if( hmap_bizData.getValue( "" + bizData.id ) == null )
				{
					operatorUserBizData = new BOperatorUserBizData();
					operatorUserBizData.bizData = bizData;
					operatorUserBizData.operatorUser = _operatorUser;
					operatorUserBizData.isManaging = BizConst.GLOBAL_YESNO_NO;
					operatorUserBizData.bl4IsManaging = false;;
					
					_operatorUser.operatorUserBizDatas.addItemAt( operatorUserBizData , 0 );							
				}
			}						
		}			
		
		/**
		 * 把 _arrProOrg 加入到 _operatorUser 的权限列表
		 */ 
		public static function addProOrgsToOperatorUser( _operatorUser:BOperatorUser, _arrProOrg:ArrayCollection ):void
		{
			if( _arrProOrg == null )
			{
				return;
			}
			
			if( _operatorUser == null )
			{
				return;
			}
			
			var arrProOrg_permission:ArrayCollection = UtilOperatorUser.getPermissionProOrgs( _operatorUser );
			var arrProOrg_rst:ArrayCollection = UtilProOrg.getUnion4arrProOrg( arrProOrg_permission, _arrProOrg );
			
			var i:int;
			var proOrg:ABProOrg = null;
			var operatorUserProOrg:BOperatorUserProOrg = null;
			
			if( _operatorUser.operatorUserProOrgs == null )
			{
				_operatorUser.operatorUserProOrgs = new ArrayCollection();
			}
			else
			{
				_operatorUser.operatorUserProOrgs.removeAll();
			}

			if( arrProOrg_rst != null )
			{
				for( i=0; i<arrProOrg_rst.length; i=i+1 )
				{
					proOrg = ABProOrg( arrProOrg_rst.getItemAt( i ) );
					
					operatorUserProOrg = new BOperatorUserProOrg();
					operatorUserProOrg.product = proOrg.product;
					operatorUserProOrg.organization = proOrg.organization;
					operatorUserProOrg.operatorUser = _operatorUser;

					_operatorUser.operatorUserProOrgs.addItem( operatorUserProOrg );
				}	
			}				
		}			
		
		/**
		 * 判断 _operatorUser_1 是不是 _operatorUser_2 的直接或间接上级结点
		 * 通过检查 _operatorUser_1 在不在 _operatorUser_2 的上级结点路径上
		 * 
		 */ 
		public static function isAncestorOf( _operatorUser_1:BOperatorUser, _operatorUser_2:BOperatorUser ):Boolean
		{
			if( _operatorUser_1 == null )
			{
				return false;
			}
			
			if( _operatorUser_2 == null )
			{
				return false;
			}			
			
			if( isNaN(_operatorUser_2.id) || isNaN(_operatorUser_1.id) )
			{
				return false;	
			}
					
			if( _operatorUser_2.id == _operatorUser_1.id )
			{
				return false;
			}	
					
			var ancestorOperatorUser:BOperatorUser = _operatorUser_2.superiorOperatorUser;
			while( ancestorOperatorUser != null )
			{
				if( ancestorOperatorUser.id == _operatorUser_1.id )
				{
					return true;
				}
				
				ancestorOperatorUser = ancestorOperatorUser.superiorOperatorUser;				
			}
			
			return false;
		}
		
		
		public static function getPermissionProOrgs( _operatorUser:BOperatorUser ):ArrayCollection
		{
			var arr4Rst:ArrayCollection = new ArrayCollection();
			if( _operatorUser == null || _operatorUser.operatorUserProOrgs == null )
			{
				return arr4Rst;
			}
			
			var i:int;
			var newProOrg:ABProOrg = null;
			var operatorUserProOrg:BOperatorUserProOrg = null;
			
			var arr4operatorUserProOrg:ArrayCollection = _operatorUser.operatorUserProOrgs;
			for( i=0; i<arr4operatorUserProOrg.length; i=i+1 )
			{
				operatorUserProOrg = arr4operatorUserProOrg.getItemAt( i ) as BOperatorUserProOrg;
				
				newProOrg = new ABProOrg();
				newProOrg.product = operatorUserProOrg.product;
				newProOrg.organization = operatorUserProOrg.organization;
				
				arr4Rst.addItem( newProOrg );
			}
			
			return arr4Rst;
		}
		
		private static function getStrKey4OperatorUserBizData( _operatoruserBizData:BOperatorUserBizData ):String
		{
			if( _operatoruserBizData == null )
			{
				return "_-1_-1"
			}
			
			var strKey4OperatorUserBizData:String = "";
			if( _operatoruserBizData.operatorUser != null )
			{
				strKey4OperatorUserBizData = strKey4OperatorUserBizData + "_" + _operatoruserBizData.operatorUser.id;
			}
			else
			{
				strKey4OperatorUserBizData = strKey4OperatorUserBizData + "_" + "-1";
			}
			if( _operatoruserBizData.bizData != null )
			{
				strKey4OperatorUserBizData = strKey4OperatorUserBizData + "_" + _operatoruserBizData.bizData.id;
			}
			else
			{
				strKey4OperatorUserBizData = strKey4OperatorUserBizData + "_" + "-1";
			}	
			
			return strKey4OperatorUserBizData;		
		}		
		
		private static function getStrKey4OperatorUserFunPermission( _operatoruserFunPermission:BOperatorUserFunPermission ):String
		{
			if( _operatoruserFunPermission == null )
			{
				return "_-1_-1"
			}
			
			var strKey4OperatorUserFunPermission:String = "";
			if( _operatoruserFunPermission.operatorUser != null )
			{
				strKey4OperatorUserFunPermission = strKey4OperatorUserFunPermission + "_" + _operatoruserFunPermission.operatorUser.id;
			}
			else
			{
				strKey4OperatorUserFunPermission = strKey4OperatorUserFunPermission + "_" + "-1";
			}
			if( _operatoruserFunPermission.funPermission != null )
			{
				strKey4OperatorUserFunPermission = strKey4OperatorUserFunPermission + "_" + _operatoruserFunPermission.funPermission.id;
			}
			else
			{
				strKey4OperatorUserFunPermission = strKey4OperatorUserFunPermission + "_" + "-1";
			}	
			
			return strKey4OperatorUserFunPermission;		
		}						

	}	
}