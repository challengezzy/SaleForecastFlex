package dmdd.dmddas.common.utils
{
	import dmdd.dmddas.common.constant.BizConst;
	import dmdd.dmddas.common.system.ClientEnvironment;
	import dmdd.dmddas.dataaccess.bizobject.BProduct;
	import dmdd.dmddas.dataaccess.bizobject.BProductCharacter;
	import dmdd.dmddas.dataaccess.bizobject.BProductProCharacter;
	
	import mx.collections.ArrayCollection;
	
	public class UtilProductCharacter
	{
		public function UtilProductCharacter()
		{
			//TODO: implement function
		}
		
		public static function removeProductChatacterSubTree(_productCharacterTreeRoot:BProductCharacter, _productCharacterSubTreeRoot:BProductCharacter):Boolean
		{
			if( _productCharacterSubTreeRoot == null )
			{
				return true;
			}
			
			if( _productCharacterTreeRoot.subProductCharacters == null )
			{
				return false;
			}
			for(var i:int = 0; i<_productCharacterTreeRoot.subProductCharacters.length; i++)
			{
				var subProductCharacter:BProductCharacter = BProductCharacter( _productCharacterTreeRoot.subProductCharacters[i] );
				if( subProductCharacter.id == _productCharacterSubTreeRoot.id )
				{
					_productCharacterTreeRoot.subProductCharacters.removeItemAt(i);
					return true;
				}
				else
				{
					if( removeProductChatacterSubTree( subProductCharacter, _productCharacterSubTreeRoot ) == true )
					{
						return true;
					}
				}
			}
				
			return false;
		}
		
		/**
		 * 获取 _productCharacter 下的所有明细产品特征
		 */ 
		public static function getDetailProductCharacters( _productCharacter:BProductCharacter ):ArrayCollection
		{
			return getDetailProductCharacters4Recursion( _productCharacter );
		}		
		
		// 获得 _detailProductCharacter 的 _productCharacterLayerValue 层次的祖先
		// 算法前提是: 1. _detailProductCharacter 是明细产品特征
		public static function getProjectProductCharacterByLayer( _detailProductCharacter:BProductCharacter, _productCharacterLayerValue:int ):BProductCharacter
		{
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.21 by liuzhen		begin
			
			_detailProductCharacter = getProductCharacterInTreeByRecursion( _detailProductCharacter, ClientEnvironment.getProductCharacterTreeRoot() );
			
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.21 by liuzhen		end

			if( _detailProductCharacter == null )
			{
				return null;
			}

			if( _detailProductCharacter.productCharacterLayer.value <= _productCharacterLayerValue )
			{
				return _detailProductCharacter;
			}
			
			var projectProductCharacter:BProductCharacter = _detailProductCharacter.parentProductCharacter;
			while( projectProductCharacter != null )
			{
				if( projectProductCharacter.productCharacterLayer.value == _productCharacterLayerValue )
				{
					return projectProductCharacter;
				}	
				
				projectProductCharacter = projectProductCharacter.parentProductCharacter;
			}
			
			return null; // impossible result
		}	
		
		/**
		 * 获取 _detailProduct 的 _productCharacterType 类型的产品特征
		 * 
		 */ 
		public static function getDetailProductCharacter( _detailProduct:BProduct, _productCharacterType:String ):BProductCharacter
		{		
			if( _detailProduct == null )
			{
				return null;
			}
			
			var productProCharacters:ArrayCollection = _detailProduct.productProCharacters;
			if( productProCharacters == null )
			{
				return null;
			}			
			
			var i:int;
			var productProCharacter:BProductProCharacter;
			for( i=0; i<productProCharacters.length; i=i+1 )
			{
				productProCharacter = productProCharacters.getItemAt( i ) as BProductProCharacter;
				if( productProCharacter.productCharacter.type == _productCharacterType )
				{
					return productProCharacter.productCharacter;
				}
			}
			
			return null;
		}				
		
		
		
		// _productCharacterTreeRoot 是一个具有完整树形结构子树的结点
		// _tagrgetProductCharacter 是一个目标结点
		public static function getProductCharacterInTreeByRecursion( _tagrgetProductCharacter:BProductCharacter, _productCharacterTreeRoot:BProductCharacter ):BProductCharacter
		{
			//zhangzy 2013-8-28 采用HashMap方式查询,该方法被调用频繁，保证效率
			var rstTarget:BProductCharacter = ClientEnvironment.proCharacterIdMap.getValue(_tagrgetProductCharacter.id);
			return rstTarget;
			
			/** 旧的查找方式，在产品数量量在时效率很低
			if( _tagrgetProductCharacter == null )
			{
				return null;
			}
			
			if( _productCharacterTreeRoot == null )
			{
				return null;				
			}
			
			
			if( _productCharacterTreeRoot.id == _tagrgetProductCharacter.id )
			{
				return _productCharacterTreeRoot;
			}
			else if( _productCharacterTreeRoot.subProductCharacters == null )
			{
				return null;
			}
			else
			{
				var i:int;
				for( i=0; i<_productCharacterTreeRoot.subProductCharacters.length; i=i+1 )
				{
					var subProductCharacter:BProductCharacter = BProductCharacter( _productCharacterTreeRoot.subProductCharacters.getItemAt( i ) );
					var rstTargetProductCharacter:BProductCharacter = getProductCharacterInTreeByRecursion(_tagrgetProductCharacter,subProductCharacter);
					if( rstTargetProductCharacter != null )
					{
						return rstTargetProductCharacter;
					}
				}
				return null;
			}
			 */
		}
		
		// 返回一个从根节点到 _product节点的完整路径
		/**
		 *	返回从根节点到  节点_productCharacter 的完整路径
		 * 	包含 _productCharacter 自身  
		 */  		
		public static function getPathFromRoot( _productCharacter:BProductCharacter ):ArrayCollection
		{
			var arrRst:ArrayCollection = new ArrayCollection();
						
			var pathProductCharacter:BProductCharacter = _productCharacter;
			while( pathProductCharacter != null )
			{
				arrRst.addItemAt( pathProductCharacter, 0 );
				pathProductCharacter = pathProductCharacter.parentProductCharacter;
			}
			
			return arrRst;
		}	
		
		/**
		 * 判断 _productCharacter_1 是否是 _productCharacter_2 的上级节点
		 * 自己不是自己的上级节点
		 */ 
		public static function isAncestorOf( _productCharacter_1:BProductCharacter, _productCharacter_2:BProductCharacter ):Boolean
		{
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.21 by liuzhen		begin
			/*
			_productCharacter_1 = getProductCharacterInTreeByRecursion( _productCharacter_1, ClientEnvironment.getProductCharacterTreeRoot() );
			*/
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.21 by liuzhen		end
			if( _productCharacter_1 == null )
			{
				return false;
			}
			
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.21 by liuzhen		begin
			/*
			_productCharacter_2 = getProductCharacterInTreeByRecursion( _productCharacter_2, ClientEnvironment.getProductCharacterTreeRoot() );
			*/
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.21 by liuzhen		end
			
			if( _productCharacter_2 == null )
			{
				return false;
			}			
			
			var ancestorProductCharacter:BProductCharacter = _productCharacter_2.parentProductCharacter;
			while( ancestorProductCharacter != null )
			{
				if( ancestorProductCharacter.id == _productCharacter_1.id )
				{
					return true;
				}
				
				ancestorProductCharacter = ancestorProductCharacter.parentProductCharacter;				
			}
			
			return false;
		}		
		
		
		// 获得参数 _productCharacter 下的所有明细产品特征
		private static function getDetailProductCharacters4Recursion( _productCharacter:BProductCharacter ):ArrayCollection
		{
			var rstDetailProductCharacters:ArrayCollection = new ArrayCollection();
			
			if( _productCharacter == null )
			{
				return rstDetailProductCharacters;
			}
			
			if( _productCharacter.isCatalog == BizConst.GLOBAL_YESNO_NO )
			{
				rstDetailProductCharacters.addItem( _productCharacter );
				return rstDetailProductCharacters;
			}
			
			if( _productCharacter.subProductCharacters != null )
			{
				var i:int;
				for( i=0; i<_productCharacter.subProductCharacters.length; i=i+1 )
				{
					var subProductCharacter:BProductCharacter = BProductCharacter( _productCharacter.subProductCharacters.getItemAt( i ) );
					var subDetailProductCharacters:ArrayCollection = getDetailProductCharacters4Recursion(subProductCharacter);
					if( subDetailProductCharacters != null && subDetailProductCharacters.length > 0 )
					{
						rstDetailProductCharacters.addAll( subDetailProductCharacters );
					}
				}	
				return rstDetailProductCharacters;
			}
			
			return rstDetailProductCharacters;
		}	
		
		
	}
}