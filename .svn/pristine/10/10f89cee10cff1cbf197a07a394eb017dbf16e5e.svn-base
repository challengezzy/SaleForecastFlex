package dmdd.dmddas.common.utils
{
	import dmdd.dmddas.common.constant.BizConst;
	import dmdd.dmddas.common.system.ClientEnvironment;
	import dmdd.dmddas.dataaccess.bizobject.BOrganization;
	import dmdd.dmddas.dataaccess.bizobject.BOrganizationCharacter;
	import dmdd.dmddas.dataaccess.bizobject.BOrganizationOrgCharacter;
	
	import mx.collections.ArrayCollection;
	
	public class UtilOrganizationCharacter
	{
		public function UtilOrganizationCharacter()
		{
			//TODO: implement function
		}
		
		public static function removeOrganizationChatacterSubTree(_organizationCharacterTreeRoot:BOrganizationCharacter, _organizationCharacterSubTreeRoot:BOrganizationCharacter):Boolean
		{
			if( _organizationCharacterSubTreeRoot == null )
			{
				return true;
			}
			
			if( _organizationCharacterTreeRoot.subOrganizationCharacters == null )
			{
				return false;
			}
			for(var i:int = 0; i<_organizationCharacterTreeRoot.subOrganizationCharacters.length; i++)
			{
				var subOrganizationCharacter:BOrganizationCharacter = BOrganizationCharacter( _organizationCharacterTreeRoot.subOrganizationCharacters[i] );
				if( subOrganizationCharacter.id == _organizationCharacterSubTreeRoot.id )
				{
					_organizationCharacterTreeRoot.subOrganizationCharacters.removeItemAt(i);
					return true;
				}
				else
				{
					if( removeOrganizationChatacterSubTree( subOrganizationCharacter, _organizationCharacterSubTreeRoot ) == true )
					{
						return true;
					}
				}
			}
			
			return false;
		}
		
		/**
		 * 获取 _organizationCharacter 下的所有明细组织特征
		 */ 
		public static function getDetailOrganizationCharacters( _organizationCharacter:BOrganizationCharacter ):ArrayCollection
		{
			return getDetailOrganizationCharacters4Recursion( _organizationCharacter );
		}		
		
		// 获得 _detailOrganizationCharacter 的 _organizationCharacterLayerValue 层次的祖先
		// 算法前提是: 1. _detailOrganizationCharacter 是明细组织特征
		public static function getProjectOrganizationCharacterByLayer( _detailOrganizationCharacter:BOrganizationCharacter, _organizationCharacterLayerValue:int ):BOrganizationCharacter
		{
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.21 by liuzhen		begin
			
			_detailOrganizationCharacter = getOrganizationCharacterInTreeByRecursion( _detailOrganizationCharacter, ClientEnvironment.getOrganizationCharacterTreeRoot() );
			
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.21 by liuzhen		end
			
			if( _detailOrganizationCharacter == null )
			{
				return null;
			}
			
			if( _detailOrganizationCharacter.organizationCharacterLayer.value <= _organizationCharacterLayerValue )
			{
				return _detailOrganizationCharacter;
			}
			
			var projectOrganizationCharacter:BOrganizationCharacter = _detailOrganizationCharacter.parentOrganizationCharacter;
			while( projectOrganizationCharacter != null )
			{
				if( projectOrganizationCharacter.organizationCharacterLayer.value == _organizationCharacterLayerValue )
				{
					return projectOrganizationCharacter;
				}	
				
				projectOrganizationCharacter = projectOrganizationCharacter.parentOrganizationCharacter;
			}
			
			return null; // impossible result
		}	
		
		/**
		 * 获取 _detailOrganization 的 _organizationCharacterType 类型的组织特征
		 * 
		 */ 
		public static function getDetailOrganizationCharacter( _detailOrganization:BOrganization, _organizationCharacterType:String ):BOrganizationCharacter
		{		
			if( _detailOrganization == null )
			{
				return null;
			}
			
			var organizationOrgCharacters:ArrayCollection = _detailOrganization.organizationOrgCharacters;
			if( organizationOrgCharacters == null )
			{
				return null;
			}			
			
			var i:int;
			var organizationOrgCharacter:BOrganizationOrgCharacter;
			for( i=0; i<organizationOrgCharacters.length; i=i+1 )
			{
				organizationOrgCharacter = organizationOrgCharacters.getItemAt( i ) as BOrganizationOrgCharacter;
				if( organizationOrgCharacter.organizationCharacter.type == _organizationCharacterType )
				{
					return organizationOrgCharacter.organizationCharacter;
				}
			}
			
			return null;
		}				
		
		
		
		// _organizationCharacterTreeRoot 是一个具有完整树形结构子树的结点
		// _tagrgetOrganizationCharacter 是一个目标结点
		public static function getOrganizationCharacterInTreeByRecursion( _tagrgetOrganizationCharacter:BOrganizationCharacter, _organizationCharacterTreeRoot:BOrganizationCharacter ):BOrganizationCharacter
		{
			//zhangzy 2013-8-28 采用HashMap方式查询,该方法被调用频繁，保证效率
			var rstTarget:BOrganizationCharacter = ClientEnvironment.orgCharacterIdMap.getValue(_tagrgetOrganizationCharacter.id);
			return rstTarget;
			
			/** 旧的查找方式，在产品数量量在时效率很低
			if( _tagrgetOrganizationCharacter == null )
			{
				return null;
			}
			
			if( _organizationCharacterTreeRoot == null )
			{
				return null;				
			}
			
			
			if( _organizationCharacterTreeRoot.id == _tagrgetOrganizationCharacter.id )
			{
				return _organizationCharacterTreeRoot;
			}
			else if( _organizationCharacterTreeRoot.subOrganizationCharacters == null )
			{
				return null;
			}
			else
			{
				var i:int;
				for( i=0; i<_organizationCharacterTreeRoot.subOrganizationCharacters.length; i=i+1 )
				{
					var subOrganizationCharacter:BOrganizationCharacter = BOrganizationCharacter( _organizationCharacterTreeRoot.subOrganizationCharacters.getItemAt( i ) );
					var rstTargetOrganizationCharacter:BOrganizationCharacter = getOrganizationCharacterInTreeByRecursion(_tagrgetOrganizationCharacter,subOrganizationCharacter);
					if( rstTargetOrganizationCharacter != null )
					{
						return rstTargetOrganizationCharacter;
					}
				}
				return null;
			}
			 */
		}
		
		// 返回一个从根节点到 _organization节点的完整路径
		/**
		 *	返回从根节点到  节点_organizationCharacter 的完整路径
		 * 	包含 _organizationCharacter 自身  
		 */  		
		public static function getPathFromRoot( _organizationCharacter:BOrganizationCharacter ):ArrayCollection
		{
			var arrRst:ArrayCollection = new ArrayCollection();
			
			var pathOrganizationCharacter:BOrganizationCharacter = _organizationCharacter;
			while( pathOrganizationCharacter != null )
			{
				arrRst.addItemAt( pathOrganizationCharacter, 0 );
				pathOrganizationCharacter = pathOrganizationCharacter.parentOrganizationCharacter;
			}
			
			return arrRst;
		}	
		
		/**
		 * 判断 _organizationCharacter_1 是否是 _organizationCharacter_2 的上级节点
		 * 自己不是自己的上级节点
		 */ 
		public static function isAncestorOf( _organizationCharacter_1:BOrganizationCharacter, _organizationCharacter_2:BOrganizationCharacter ):Boolean
		{
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.21 by liuzhen		begin
			/*
			_organizationCharacter_1 = getOrganizationCharacterInTreeByRecursion( _organizationCharacter_1, ClientEnvironment.getOrganizationCharacterTreeRoot() );
			*/
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.21 by liuzhen		end
			if( _organizationCharacter_1 == null )
			{
				return false;
			}
			
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.21 by liuzhen		begin
			/*
			_organizationCharacter_2 = getOrganizationCharacterInTreeByRecursion( _organizationCharacter_2, ClientEnvironment.getOrganizationCharacterTreeRoot() );
			*/
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.21 by liuzhen		end
			
			if( _organizationCharacter_2 == null )
			{
				return false;
			}			
			
			var ancestorOrganizationCharacter:BOrganizationCharacter = _organizationCharacter_2.parentOrganizationCharacter;
			while( ancestorOrganizationCharacter != null )
			{
				if( ancestorOrganizationCharacter.id == _organizationCharacter_1.id )
				{
					return true;
				}
				
				ancestorOrganizationCharacter = ancestorOrganizationCharacter.parentOrganizationCharacter;				
			}
			
			return false;
		}		
		
		
		// 获得参数 _organizationCharacter 下的所有明细组织特征
		private static function getDetailOrganizationCharacters4Recursion( _organizationCharacter:BOrganizationCharacter ):ArrayCollection
		{
			var rstDetailOrganizationCharacters:ArrayCollection = new ArrayCollection();
			
			if( _organizationCharacter == null )
			{
				return rstDetailOrganizationCharacters;
			}
			
			if( _organizationCharacter.isCatalog == BizConst.GLOBAL_YESNO_NO )
			{
				rstDetailOrganizationCharacters.addItem( _organizationCharacter );
				return rstDetailOrganizationCharacters;
			}
			
			if( _organizationCharacter.subOrganizationCharacters != null )
			{
				var i:int;
				for( i=0; i<_organizationCharacter.subOrganizationCharacters.length; i=i+1 )
				{
					var subOrganizationCharacter:BOrganizationCharacter = BOrganizationCharacter( _organizationCharacter.subOrganizationCharacters.getItemAt( i ) );
					var subDetailOrganizationCharacters:ArrayCollection = getDetailOrganizationCharacters4Recursion(subOrganizationCharacter);
					if( subDetailOrganizationCharacters != null && subDetailOrganizationCharacters.length > 0 )
					{
						rstDetailOrganizationCharacters.addAll( subDetailOrganizationCharacters );
					}
				}	
				return rstDetailOrganizationCharacters;
			}
			
			return rstDetailOrganizationCharacters;
		}	
		
		
	}
}