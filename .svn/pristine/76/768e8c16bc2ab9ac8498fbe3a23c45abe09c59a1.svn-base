package dmdd.dmddas.common.utils
{
	import dmdd.dmddas.common.constant.BizConst;
	import dmdd.dmddas.common.constant.UIConst;
	import dmdd.dmddas.common.system.ClientEnvironment;
	import dmdd.dmddas.dataaccess.bizobject.BOrganization;
	import dmdd.dmddas.dataaccess.bizobject.BOrganizationCharacter;
	import dmdd.dmddas.dataaccess.bizobject.BOrganizationLayer;
	import dmdd.dmddas.dataaccess.bizobject.BOrganizationOrgCharacter;
	
	import mx.collections.ArrayCollection;
	import mx.formatters.DateFormatter;
	
	public class UtilOrganization
	{
		public function UtilOrganization()
		{
			//TODO: implement function
		}
		
		// 从组织结构树中扣除一个子树
		public static function removeOrganizationSubTree(_organizationTreeRoot:BOrganization, _organizationSubTreeRoot:BOrganization):Boolean
		{
			if( _organizationSubTreeRoot == null )
			{
				return true;
			}
			
			if( _organizationTreeRoot.subOrganizations == null )
			{
				return false;
			}
			for(var i:int = 0; i<_organizationTreeRoot.subOrganizations.length; i++)
			{
				var subOrganization:BOrganization = BOrganization( _organizationTreeRoot.subOrganizations[i] );
				if( subOrganization.id == _organizationSubTreeRoot.id )
				{
					_organizationTreeRoot.subOrganizations.removeItemAt(i);
					return true;
				}
				else
				{
					if( removeOrganizationSubTree( subOrganization, _organizationSubTreeRoot ) == true )
					{
						return true;
					}
				}
			}
			
			return false;
		}			
		
		
		public static function relationOf( _organization_1:BOrganization, _organization_2:BOrganization ):String
		{
//			_organization_1 = getOrganizationInTreeByRecursion( _organization_1, ClientEnvironment.getOrganizationTreeRoot() );
//			_organization_2 = getOrganizationInTreeByRecursion( _organization_2, ClientEnvironment.getOrganizationTreeRoot() );
			if( _organization_1 == null || _organization_2 == null )
			{
				return UIConst.RELATION_FIRST2SECOND_IRRELATED;
			}
			if( _organization_1.id == _organization_2.id )
			{
				return UIConst.RELATION_FIRST2SECOND_EQUAL;
			}
			if( _organization_1.organizationLayer.value == _organization_2.organizationLayer.value )
			{
				// id 不等，又在一个层次上
				return UIConst.RELATION_FIRST2SECOND_IRRELATED; 
			}
			
			//zhangzy 20130718 加入pathcode后，根据pathcode的包含关系判断
			
			var pathCode1:String = _organization_1.pathCode;
			var pathCode2:String = _organization_2.pathCode;
			
			if(_organization_1.organizationLayer.value > _organization_2.organizationLayer.value){
				if( pathCode1.indexOf(pathCode2) == 0)
					return UIConst.RELATION_FIRST2SECOND_COVERING;
			}else{
				if( pathCode2.indexOf(pathCode1) == 0)
					return UIConst.RELATION_FIRST2SECOND_COVERED;
			}
			
			//没有查到关系
			return UIConst.RELATION_FIRST2SECOND_IRRELATED; 
			
//			var blSwitched:Boolean = false;
//			var organization_1:BOrganization = null;
//			var organization_2:BOrganization = null;
//			if( _organization_1.organizationLayer.value > _organization_2.organizationLayer.value )
//			{
//				organization_1 = _organization_2;
//				//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		begin
//				
//				organization_2 = getOrganizationInTreeByRecursion( _organization_1, ClientEnvironment.getOrganizationTreeRoot() );
//				
//				organization_2 = _organization_1;
//				//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		end
//				blSwitched = true;
//			}	
//			else
//			{
//				organization_1 = _organization_1;
//				//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		begin
//				
//				organization_2 = getOrganizationInTreeByRecursion( _organization_2, ClientEnvironment.getOrganizationTreeRoot() );
//				
//				organization_2 = _organization_2;
//				//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		end
//				blSwitched = false;				
//			}
//			if( organization_2 == null )
//			{
//				return UIConst.RELATION_FIRST2SECOND_IRRELATED;
//			}				
//			
//			// 爬到一个层次上
//			var ancestorOrganization:BOrganization = organization_2.parentOrganization;
//			while( ancestorOrganization != null  )
//			{	
//				if( ancestorOrganization.organizationLayer.value == organization_1.organizationLayer.value )
//				{
//					break;
//				}			
//				ancestorOrganization = ancestorOrganization.parentOrganization;
//			}		
//			// ancestorOrganization 不会为空
//			if( ancestorOrganization.id == organization_1.id )
//			{
//				// organization_1 是 organization_2的祖先
//				if( blSwitched == false )
//				{
//					return UIConst.RELATION_FIRST2SECOND_COVERING;
//				}
//				else
//				{
//					return UIConst.RELATION_FIRST2SECOND_COVERED;
//				}
//			}
//			else
//			{
//				// 无关
//				return UIConst.RELATION_FIRST2SECOND_IRRELATED; 
//			}
		}	
		
		// 返回一个从根节点到 _organization节点的完整路径
		public static function getPathFromRoot( _organization:BOrganization ):ArrayCollection
		{
			var arrRst:ArrayCollection = new ArrayCollection();
			
			var pathOrganization:BOrganization = _organization;
			while( pathOrganization != null )
			{
				arrRst.addItemAt( pathOrganization, 0 );
				pathOrganization = pathOrganization.parentOrganization;
			}
			
			return arrRst;
		}	
		
		
		/**
		 * 判断 _organization_1 是否是 _organization_2 的上级节点
		 * 自己不是自己的上级节点
		 */ 		
		public static function isAncestorOf( _organization_1:BOrganization, _organization_2:BOrganization ):Boolean
		{
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		begin
			
			_organization_1 = getOrganizationInTreeByRecursion( _organization_1, ClientEnvironment.getOrganizationTreeRoot() );
			
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		end
			if( _organization_1 == null )
			{
				return false;
			}
			
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		begin
			
			_organization_2 = getOrganizationInTreeByRecursion( _organization_2, ClientEnvironment.getOrganizationTreeRoot() );
			
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		end
			if( _organization_2 == null )
			{
				return false;
			}			
			
			var ancestorOrganization:BOrganization = _organization_2.parentOrganization;
			while( ancestorOrganization != null )
			{
				if( ancestorOrganization.id == _organization_1.id )
				{
					return true;
				}
				
				ancestorOrganization = ancestorOrganization.parentOrganization;				
			}
			
			return false;
		}
		
		
		public static function getOrganizationsByLayer(_organizationTreeRoot:BOrganization, _organizationLayer:BOrganizationLayer):ArrayCollection
		{
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		begin
			
			_organizationTreeRoot = getOrganizationInTreeByRecursion( _organizationTreeRoot, ClientEnvironment.getOrganizationTreeRoot() );
			
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		end
			
			return getOrganizationsByLayer4Recursion( _organizationTreeRoot, _organizationLayer );
		}
		
		public static function getDetailOrganizations( _organization:BOrganization ):ArrayCollection
		{
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		begin
			
			_organization = getOrganizationInTreeByRecursion( _organization, ClientEnvironment.getOrganizationTreeRoot() );
			
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		end
			return getDetailOrganizations4Recursion( _organization );
		}
		
		// 获得 _detailOrganization 的 _organizationLayerValue 层次的祖先
		// 算法前提是: 1. _detailBOrganization 是明细组织
		public static function getProjectOrganizationByLayer( _detailOrganization:BOrganization, _organizationLayerValue:int ):BOrganization
		{
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		begin
			
			_detailOrganization = getOrganizationInTreeByRecursion( _detailOrganization, ClientEnvironment.getOrganizationTreeRoot() );
			
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		end
			
			if( _detailOrganization == null )
			{
				return null;
			}
			
			if( _detailOrganization.organizationLayer.value <= _organizationLayerValue )
			{
				return _detailOrganization;
			}
			
			var projectOrganization:BOrganization = _detailOrganization.parentOrganization;
			while( projectOrganization != null )
			{
				if( projectOrganization.organizationLayer.value == _organizationLayerValue )
				{
					return projectOrganization;
				}	
				
				projectOrganization = projectOrganization.parentOrganization;
			}
			
			return null; // impossible result
		}	
		
		
		private static function getOrganizationsByLayer4Recursion(_organizationTreeRoot:BOrganization, _organizationLayer:BOrganizationLayer):ArrayCollection
		{
			var rstAC:ArrayCollection = new ArrayCollection();
			
			if( _organizationTreeRoot == null )
			{
				return rstAC;
			}
			
			if( _organizationLayer == null )
			{
				return rstAC;
			}
			
			if( _organizationLayer.value < _organizationTreeRoot.organizationLayer.value )
			{
				return rstAC;
			}
			
			if( _organizationLayer.value == _organizationTreeRoot.organizationLayer.value )
			{	
				rstAC.addItem( _organizationTreeRoot );
				return rstAC;
			}
			
			if( _organizationTreeRoot.subOrganizations != null )
			{
				for(var i:int=0; i<_organizationTreeRoot.subOrganizations.length; i=i+1)
				{
					var subRstAC:ArrayCollection = getOrganizationsByLayer4Recursion(BOrganization(_organizationTreeRoot.subOrganizations.getItemAt(i)) ,_organizationLayer);
					if( subRstAC != null && subRstAC.length > 0 )
					{
						for(var j:int=0; j<subRstAC.length; j=j+1)
						{
							rstAC.addItem( subRstAC.getItemAt(j) );
						}	
					}
				}
				return rstAC;
			}
			else
			{
				return rstAC;
			}
		}
		
		
		// 获得参数 _organization 下的所有明细组织 
		private static function getDetailOrganizations4Recursion( _organization:BOrganization ):ArrayCollection
		{
			var rstDetailOrganizations:ArrayCollection = new ArrayCollection();
			
			if( _organization == null )
			{
				return rstDetailOrganizations;
			}
			
			if( _organization.isCatalog == BizConst.GLOBAL_YESNO_NO )
			{
				rstDetailOrganizations.addItem( _organization );
				return rstDetailOrganizations;
			}
			
			if( _organization.subOrganizations != null )
			{
				var i:int;
				for( i=0; i<_organization.subOrganizations.length; i=i+1 )
				{
					var subOrganization:BOrganization = BOrganization( _organization.subOrganizations.getItemAt( i ) );
					var subDetailOrganizations:ArrayCollection = getDetailOrganizations4Recursion(subOrganization);
					if( subDetailOrganizations != null && subDetailOrganizations.length > 0 )
					{
						rstDetailOrganizations.addAll( subDetailOrganizations );
					}
				}	
				return rstDetailOrganizations;
			}
			
			return rstDetailOrganizations;
		}
		
		/**
		 * 在 _organizationTreeRoot 为根的树中寻找 id = _tagrgetOrganization 的树结构节点
		 * _organizationTreeRoot 是一个具有完整树形结构子树的结点
		 * _tagrgetOrganization 是一个目标结点
		 * */
		public static function getOrganizationInTreeByRecursion( _tagrgetOrganization:BOrganization, _organizationTreeRoot:BOrganization ):BOrganization
		{
			//zhangzy 2013-8-28 采用HashMap方式查询,该方法被调用频繁，保证效率
			var rstTargetOrganization:BOrganization = ClientEnvironment.organizationIdMap.getValue(_tagrgetOrganization.id);
			
			return rstTargetOrganization;
			/**
			if( _tagrgetOrganization == null )
			{
				return null;
			}
			
			if( _organizationTreeRoot == null )
			{
				return null;				
			}
			
			
			if( _organizationTreeRoot.id == _tagrgetOrganization.id )
			{
				return _organizationTreeRoot;
			}
			else if( _organizationTreeRoot.subOrganizations == null )
			{
				return null;
			}
			else
			{
				var i:int;
				for( i=0; i<_organizationTreeRoot.subOrganizations.length; i=i+1 )
				{
					var subOrganization:BOrganization = BOrganization( _organizationTreeRoot.subOrganizations.getItemAt( i ) );
					var rstTargetOrganization:BOrganization = getOrganizationInTreeByRecursion(_tagrgetOrganization,subOrganization);
					if( rstTargetOrganization != null )
					{
						return rstTargetOrganization;
					}
				}
				return null;
			}
			*/
		}
		
		/**
		 * 获取 _organization 下所有 具有 _organizationCharacter下明细特征 的明细组织
		 * 
		 */ 
		public static function getDetailOrganizationsByOrganizationCharacter(_organization:BOrganization,_organizationCharacter:BOrganizationCharacter):ArrayCollection
		{	
			var arrRstDetailOrganization:ArrayCollection = new ArrayCollection();
			var dateFormatter:DateFormatter = new DateFormatter(); 
			dateFormatter.formatString = "YYYY-MM-DD JJ:NN:SS";
			//	明细组织	begin
			trace("组织 分解开始:"+dateFormatter.format(new Date()));
			var arrDetailOrganization:ArrayCollection = UtilOrganization.getDetailOrganizations(_organization);
			trace("组织 分解结束:"+dateFormatter.format(new Date()));
			if( arrDetailOrganization == null || arrDetailOrganization.length <= 0 )
			{
				return arrRstDetailOrganization;
			}
			//	明细组织	end
			
			//	明细组织特征	begin
			var arrDetailOrganizationCharacterId:ArrayCollection = new ArrayCollection();
			trace("组织特征 分解开始:"+dateFormatter.format(new Date()));
			var arrDetailOrganizationCharacter:ArrayCollection= UtilOrganizationCharacter.getDetailOrganizationCharacters( _organizationCharacter );
			trace("组织特征 分解结束:"+dateFormatter.format(new Date()));
			if( arrDetailOrganizationCharacter == null || arrDetailOrganizationCharacter.length <= 0 )
			{
				return arrRstDetailOrganization;
			}
			for each( var detailOrganizationCharacter:BOrganizationCharacter in arrDetailOrganizationCharacter )
			{
				arrDetailOrganizationCharacterId.addItem(detailOrganizationCharacter.id);
			}			
			//	明细组织特征	end
			
			trace("组织-组织特征 判断开始:"+dateFormatter.format(new Date()));
			for(var i:int=0;i<arrDetailOrganization.length;i++)
			{
				var organization:BOrganization = BOrganization(arrDetailOrganization.getItemAt(i));
				var organization_organizationCharacters:ArrayCollection = organization.organizationOrgCharacters;
				var contains:Boolean = false;
				if(organization_organizationCharacters!=null && organization_organizationCharacters.length>0)
				{	
					for(var j:int=0;j<organization_organizationCharacters.length;j++)
					{
						var organization_organizationOrgCharacter:BOrganizationOrgCharacter = BOrganizationOrgCharacter(organization_organizationCharacters.getItemAt(j));
						if(arrDetailOrganizationCharacterId.contains(organization_organizationOrgCharacter.organizationCharacter.id))
						{
							contains=true;
							break;
						}
					}
					if(contains)
					{
						arrRstDetailOrganization.addItem(organization);
					}	
				}
			}
			trace("组织-组织特征 判断结束:"+dateFormatter.format(new Date()));
			return arrRstDetailOrganization;
		}		
		public static function getBOrganziationByNameAndCode(name:String,code:String):BOrganization
		{
			var arr4detailproducts:ArrayCollection = getDetailOrganizations(ClientEnvironment.getOrganizationTreeRoot());
			var bOrganization:BOrganization=null;
			for(var i:int=0;i<arr4detailproducts.length;i++)
			{
				bOrganization = arr4detailproducts.getItemAt(i) as BOrganization;
				if(bOrganization.name==name && bOrganization.code==code)
					return bOrganization;
			}
			return null;
		}
		
		public static function getBOrganziationByCode(organization:BOrganization,code:String):BOrganization
		{
			if(organization==null)
				return null;
			if(organization.code == code)
				return organization;
			
			if(organization.subOrganizations!=null && organization.subOrganizations.length>0)
			{
				var borganization:BOrganization;				
				var length:int =organization.subOrganizations.length;
				for(var i:int =0;i< length;i++)
				{
					borganization = organization.subOrganizations.getItemAt(i) as BOrganization;
					var _borganization:BOrganization;				
					_borganization = getBOrganziationByCode(borganization,code);
					
					if(_borganization!=null)
						return _borganization;
				}
			}
//			
//			var arr4detailproducts:ArrayCollection = getDetailOrganizations(ClientEnvironment.getOrganizationTreeRoot());
//			var bOrganization:BOrganization=null;
//			for(var i:int=0;i<arr4detailproducts.length;i++)
//			{
//				bOrganization = arr4detailproducts.getItemAt(i) as BOrganization;
//				if( bOrganization.code==code)
//					return bOrganization;
//			}
			return null;
		}
		
		public static function getBOrganziationById(Id:Number):BOrganization
		{
			var arr4detailproducts:ArrayCollection = getDetailOrganizations(ClientEnvironment.getOrganizationTreeRoot());
			var bOrganization:BOrganization=null;
			for(var i:int=0;i<arr4detailproducts.length;i++)
			{
				bOrganization = arr4detailproducts.getItemAt(i) as BOrganization;
				if(bOrganization.id==Id)
					return bOrganization;
			}
			return null;
		}
	}
}

