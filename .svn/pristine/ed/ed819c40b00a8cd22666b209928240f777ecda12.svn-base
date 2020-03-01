package dmdd.dmddas.common.utils
{
	import aks.aksas.collections.HashMap;
	
	import dmdd.dmddas.common.constant.BizConst;
	import dmdd.dmddas.common.constant.UIConst;
	import dmdd.dmddas.common.system.ClientEnvironment;
	import dmdd.dmddas.dataaccess.bizobject.BProduct;
	import dmdd.dmddas.dataaccess.bizobject.BProductCharacter;
	import dmdd.dmddas.dataaccess.bizobject.BProductLayer;
	import dmdd.dmddas.dataaccess.bizobject.BProductProCharacter;
	import dmdd.dmddas.dataaccess.bizobject.BUnit;
	
	import mx.collections.ArrayCollection;
	import mx.formatters.DateFormatter;
	
	public class UtilProduct
	{
		public function UtilProduct()
		{
			//TODO: implement function
		}
		
		/**
		 * 从组织结构树中移除一个子树
		 * */
		public static function removeProductSubTree(_productTreeRoot:BProduct, _productSubTreeRoot:BProduct):Boolean
		{
			if( _productSubTreeRoot == null )
			{
				return true;
			}
			
			if( _productTreeRoot.subProducts == null )
			{
				return false;
			}
			for(var i:int = 0; i<_productTreeRoot.subProducts.length; i++)
			{
				var subProduct:BProduct = BProduct( _productTreeRoot.subProducts[i] );
				if( subProduct.id == _productSubTreeRoot.id )
				{
					_productTreeRoot.subProducts.removeItemAt(i);
					return true;
				}
				else
				{
					if( removeProductSubTree( subProduct, _productSubTreeRoot ) == true )
					{
						return true;
					}
				}
			}
				
			return false;
		}			

		
		/**
		 * 旧方法废弃 不用
		 * modify by zhangzy 20130718 判断两个产品之间的关系，新增了pathcode，使用pathcode进行判断，
		 * */
		public static function relationOf_old( _product_1:BProduct, _product_2:BProduct ):String
		{
			_product_1 = getProductInTreeByRecursion( _product_1, ClientEnvironment.getProductTreeRoot() );
			_product_2 = getProductInTreeByRecursion( _product_2, ClientEnvironment.getProductTreeRoot() );
			if( _product_1 == null || _product_2 == null )
			{
				return UIConst.RELATION_FIRST2SECOND_IRRELATED;
			}
			if( _product_1.id == _product_2.id )
			{
				return UIConst.RELATION_FIRST2SECOND_EQUAL;
			}
			if( _product_1.productLayer.value == _product_2.productLayer.value )
			{
				// id 不等，又在一个层次上
				return UIConst.RELATION_FIRST2SECOND_IRRELATED; 
			}
			
			var blSwitched:Boolean = false;
			var product_1:BProduct = null;
			var product_2:BProduct = null;
			if( _product_1.productLayer.value > _product_2.productLayer.value )
			{
				product_1 = _product_2;
				//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		begin
				
				product_2 = getProductInTreeByRecursion( _product_1, ClientEnvironment.getProductTreeRoot() );
				
				product_2 = _product_1;
				//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		end
				blSwitched = true;
			}	
			else
			{
				product_1 = _product_1;
				//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		begin
				
				product_2 = getProductInTreeByRecursion( _product_2, ClientEnvironment.getProductTreeRoot() );
				
				product_2 = _product_2;
				//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		end
				blSwitched = false;				
			}
			if( product_2 == null )
			{
				return UIConst.RELATION_FIRST2SECOND_IRRELATED;
			}				
			
			// 爬到一个层次上
			var ancestorProduct:BProduct = product_2.parentProduct;
			while( ancestorProduct != null  )
			{	
				if( ancestorProduct.productLayer.value == product_1.productLayer.value )
				{
					break;
				}			
				ancestorProduct = ancestorProduct.parentProduct;
			}		
			// ancestorProduct 不会为空
			if( ancestorProduct.id == product_1.id )
			{
				// product_1 是 product_2的祖先
				if( blSwitched == false )
				{
					return UIConst.RELATION_FIRST2SECOND_COVERING;
				}
				else
				{
					return UIConst.RELATION_FIRST2SECOND_COVERED;
				}
			}
			else
			{
				// 无关
				return UIConst.RELATION_FIRST2SECOND_IRRELATED; 
			}
		}

		/**
		 * modify by zhangzy 20130718 判断两个产品之间的关系，新增了pathcode，使用pathcode进行判断
		 * */
		public static function relationOf( _product_1:BProduct, _product_2:BProduct ):String
		{
			//_product_1 = getProductInTreeByRecursion( _product_1, ClientEnvironment.getProductTreeRoot() );
			//_product_2 = getProductInTreeByRecursion( _product_2, ClientEnvironment.getProductTreeRoot() );
			if( _product_1 == null || _product_2 == null )
			{
				return UIConst.RELATION_FIRST2SECOND_IRRELATED;
			}
			if( _product_1.id == _product_2.id )
			{
				return UIConst.RELATION_FIRST2SECOND_EQUAL;
			}
			if( _product_1.productLayer.value == _product_2.productLayer.value )
			{
				// id 不等，又在一个层次上
				return UIConst.RELATION_FIRST2SECOND_IRRELATED; 
			}
			
			//zhangzy 20130718 加入pathcode后，根据pathcode的包含关系判断
			
			var pathCode1:String = _product_1.pathCode;
			var pathCode2:String = _product_2.pathCode;
			
			if(_product_1.productLayer.value > _product_2.productLayer.value){
				if( pathCode1.indexOf(pathCode2) == 0)
					return UIConst.RELATION_FIRST2SECOND_COVERING;
			}else{
				if( pathCode2.indexOf(pathCode1) == 0)
					return UIConst.RELATION_FIRST2SECOND_COVERED;
			}
			
			//没有查到关系
			return UIConst.RELATION_FIRST2SECOND_IRRELATED; 
			
//			var blSwitched:Boolean = false;
//			var product_1:BProduct = null;
//			var product_2:BProduct = null;
//			if( _product_1.productLayer.value > _product_2.productLayer.value )
//			{
//				product_1 = _product_2;
//				//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		begin
//				
//				//product_2 = getProductInTreeByRecursion( _product_1, ClientEnvironment.getProductTreeRoot() );
//				
//				product_2 = _product_1;
//				//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		end
//				blSwitched = true;
//			}	
//			else
//			{
//				product_1 = _product_1;
//				//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		begin
//				
//				//product_2 = getProductInTreeByRecursion( _product_2, ClientEnvironment.getProductTreeRoot() );
//				
//				product_2 = _product_2;
//				//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		end
//				blSwitched = false;				
//			}
//			if( product_2 == null )
//			{
//				return UIConst.RELATION_FIRST2SECOND_IRRELATED;
//			}				
//			
//			// 爬到一个层次上
//			var ancestorProduct:BProduct = product_2.parentProduct;
//			while( ancestorProduct != null  )
//			{	
//				if( ancestorProduct.productLayer.value == product_1.productLayer.value )
//				{
//					break;
//				}			
//				ancestorProduct = ancestorProduct.parentProduct;
//			}		
//			// ancestorProduct 不会为空
//			if( ancestorProduct.id == product_1.id )
//			{
//				// product_1 是 product_2的祖先
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
		
		/**
		 * 返回一个从根节点到 _product节点的完整路径节点
		 * */
		public static function getPathFromRoot( _product:BProduct ):ArrayCollection
		{
			var arrRst:ArrayCollection = new ArrayCollection();
						
			var pathProduct:BProduct = _product;
			while( pathProduct != null )
			{
				arrRst.addItemAt( pathProduct, 0 );
				pathProduct = pathProduct.parentProduct;
			}
			
			return arrRst;
		}	
		
		
		/**
		 * 判断 _organization_1 是否是 _organization_2 的上级节点
		 * 自己不是自己的上级节点
		 */ 		
		public static function isAncestorOf( _product_1:BProduct, _product_2:BProduct ):Boolean
		{
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		begin
			
 			_product_1 = getProductInTreeByRecursion( _product_1, ClientEnvironment.getProductTreeRoot() );
			
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		end
			if( _product_1 == null )
			{
				return false;
			}
			
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		begin
			
			_product_2 = getProductInTreeByRecursion( _product_2, ClientEnvironment.getProductTreeRoot() );
			
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		end
			if( _product_2 == null )
			{
				return false;
			}			
						
			var ancestorProduct:BProduct = _product_2.parentProduct;
			while( ancestorProduct != null )
			{
				if( ancestorProduct.id == _product_1.id )
				{
					return true;
				}
				
				ancestorProduct = ancestorProduct.parentProduct;				
			}
			
			return false;
		}

		/**
		 * 获取某一层级所有节点
		 * */
		public static function getProductsByLayer(_productTreeRoot:BProduct, _productLayer:BProductLayer):ArrayCollection
		{
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		begin
			
			_productTreeRoot = getProductInTreeByRecursion( _productTreeRoot, ClientEnvironment.getProductTreeRoot() );
			
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		end
			
			return getProductsByLayer4Recursion( _productTreeRoot, _productLayer );
		}
		
		/**
		 * 获取参数product下的所有明细产品
		 * */
		public static function getDetailProducts( _product:BProduct ):ArrayCollection
		{
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		begin
			
			_product = getProductInTreeByRecursion( _product, ClientEnvironment.getProductTreeRoot() );
			
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		end
			return getDetailProducts4Recursion( _product );
		}
		
		/**
		 * 获得 _detailProduct 的 _productLayerValue 层次的祖先,算法前提是: 1. _detailBProduct 是明细产品
		 **/
		public static function getProjectProductByLayer( _detailProduct:BProduct, _productLayerValue:int ):BProduct
		{
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		begin
			
			_detailProduct = getProductInTreeByRecursion( _detailProduct, ClientEnvironment.getProductTreeRoot() );
			
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		end
			
			if( _detailProduct == null )
			{
				return null;
			}
			
			if( _detailProduct.productLayer.value <= _productLayerValue )
			{
				return _detailProduct;
			}
			
			var projectProduct:BProduct = _detailProduct.parentProduct;
			while( projectProduct != null )
			{
				if( projectProduct.productLayer.value == _productLayerValue )
				{
					return projectProduct;
				}	
				
				projectProduct = projectProduct.parentProduct;
			}
			
			return null; // impossible result
		}	
		
		/**
		 * 获取产品的默认计量单位
		 * */
		public static function getDefaultUnit( _product:BProduct ):BUnit
		{
			if( _product == null )
			{
				return null;
			}	
			
			if( _product.unitGroup == null )
			{
				return null;
			}
			
			if( _product.unitGroup.units == null )
			{
				return null;
			}
			
			var i:int;
			for( i=0; i<_product.unitGroup.units.length; i=i+1 )
			{
				var unit:BUnit = BUnit( _product.unitGroup.units.getItemAt(i) );
				if( unit.isBase == BizConst.GLOBAL_YESNO_YES )
				{
					return unit;
				}	
			}
			
			return null;
		}			
	
		/**
		 * 从root递归查询指定层级的所有产品
		 * */
		private static function getProductsByLayer4Recursion(_productTreeRoot:BProduct, _productLayer:BProductLayer):ArrayCollection
		{
			var rstAC:ArrayCollection = new ArrayCollection();
			
			if( _productTreeRoot == null )
			{
				return rstAC;
			}
			
			if( _productLayer == null )
			{
				return rstAC;
			}
			
			if( _productLayer.value < _productTreeRoot.productLayer.value )
			{
				return rstAC;
			}
			
			if( _productLayer.value == _productTreeRoot.productLayer.value )
			{	
				rstAC.addItem( _productTreeRoot );
				return rstAC;
			}
			
			if( _productTreeRoot.subProducts != null )
			{
				for(var i:int=0; i<_productTreeRoot.subProducts.length; i=i+1)
				{
					var subRstAC:ArrayCollection = getProductsByLayer4Recursion(BProduct(_productTreeRoot.subProducts.getItemAt(i)) ,_productLayer);
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

		
		/**
		 * 获得参数 _product 下的所有明细产品
		 * */
		public static function getDetailProducts4Recursion( _product:BProduct ):ArrayCollection
		{
			var rstDetailProducts:ArrayCollection = new ArrayCollection();
			
			if( _product == null )
			{
				return rstDetailProducts;
			}

			if( _product.isCatalog == BizConst.GLOBAL_YESNO_NO )
			{
				rstDetailProducts.addItem( _product );
				return rstDetailProducts;
			}

			if( _product.subProducts != null )
			{
				var i:int;
				for( i=0; i<_product.subProducts.length; i=i+1 )
				{
					var subProduct:BProduct = BProduct( _product.subProducts.getItemAt( i ) );
					var subDetailProducts:ArrayCollection = getDetailProducts4Recursion(subProduct);
					if( subDetailProducts != null && subDetailProducts.length > 0 )
					{
						rstDetailProducts.addAll( subDetailProducts );
					}
				}	
				return rstDetailProducts;
			}

			return rstDetailProducts;
		}
		
		
		/**
		 * 在 _productTreeRoot 为根的树中寻找 id = _tagrgetProductId 的树节点
		 * @param _tagrgetProductId 是一个目标结点
		 * @param _productTreeRoot 是一个具有完整树形结构子树的结点
		 * @return
		 */
		public static function getProductInTreeByRecursion( _tagrgetProduct:BProduct, _productTreeRoot:BProduct ):BProduct
		{
			//zhangzy 2013-8-28 采用HashMap方式查询,该方法被调用频繁，保证效率
			var rstTargetProduct:BProduct = ClientEnvironment.productIdMap.getValue(_tagrgetProduct.id);
			return rstTargetProduct;
			
			/** 旧的查找方式，在产品数量量在时效率很低
			if( _tagrgetProduct == null )
			{
				return null;
			}
			
			if( _productTreeRoot == null )
			{
				return null;				
			}
			
			
			if( _productTreeRoot.id == _tagrgetProduct.id )
			{
				return _productTreeRoot;
			}
			else if( _productTreeRoot.subProducts == null )
			{
				return null;
			}
			else
			{
				
				var i:int;
				for( i=0; i<_productTreeRoot.subProducts.length; i=i+1 )
				{
					var subProduct:BProduct = BProduct( _productTreeRoot.subProducts.getItemAt( i ) );
					var rstTargetProduct:BProduct = getProductInTreeByRecursion(_tagrgetProduct,subProduct);
					if( rstTargetProduct != null )
					{
						return rstTargetProduct;
					}
				}
				return null;
				
			}
			*/
		}
		
		/**
		 * 获取 _product 下所有 具有 _productCharacter下明细特征 的明细产品
		 * 
		 */ 
		public static function getDetailProductsByProductCharacter(_product:BProduct,_productCharacter:BProductCharacter):ArrayCollection
		{	
			var arrRstDetailProduct:ArrayCollection = new ArrayCollection();
			var dateFormatter:DateFormatter = new DateFormatter(); 
			dateFormatter.formatString = "YYYY-MM-DD JJ:NN:SS";
			//	明细产品	begin
			trace("产品 分解开始:"+dateFormatter.format(new Date()));
			var arrDetailProduct:ArrayCollection = UtilProduct.getDetailProducts(_product);
			trace("产品 分解结束:"+dateFormatter.format(new Date()));
			if( arrDetailProduct == null || arrDetailProduct.length <= 0 )
			{
				return arrRstDetailProduct;
			}
			//	明细产品	end
			
			//	明细产品特征	begin
			var arrDetailProductCharacterId:ArrayCollection = new ArrayCollection();
			trace("产品特征 分解开始:"+dateFormatter.format(new Date()));
			var arrDetailProductCharacter:ArrayCollection= UtilProductCharacter.getDetailProductCharacters( _productCharacter );
			trace("产品特征 分解结束:"+dateFormatter.format(new Date()));
			if( arrDetailProductCharacter == null || arrDetailProductCharacter.length <= 0 )
			{
				return arrRstDetailProduct;
			}
			for each( var detailProductCharacter:BProductCharacter in arrDetailProductCharacter )
			{
				arrDetailProductCharacterId.addItem(detailProductCharacter.id);
			}			
			//	明细产品特征	end
			
			trace("产品-产品特征 判断开始:"+dateFormatter.format(new Date()));
			for(var i:int=0;i<arrDetailProduct.length;i++)
			{
				var product:BProduct = BProduct(arrDetailProduct.getItemAt(i));
				var product_productCharacters:ArrayCollection = product.productProCharacters;
				var contains:Boolean = false;
				if(product_productCharacters!=null && product_productCharacters.length>0)
				{	
					for(var j:int=0;j<product_productCharacters.length;j++)
					{
						var product_productProCharacter:BProductProCharacter = BProductProCharacter(product_productCharacters.getItemAt(j));
						if(arrDetailProductCharacterId.contains(product_productProCharacter.productCharacter.id))
						{
							contains=true;
							break;
						}
					}
					if(contains)
					{
						arrRstDetailProduct.addItem(product);
					}	
				}
			}
			trace("产品-产品特征 判断结束:"+dateFormatter.format(new Date()));
			return arrRstDetailProduct;
		}		
		
		public static function getBProductByNameAndCode(name:String,code:String):BProduct
		{
			var arr4detailproducts:ArrayCollection = getDetailProducts(ClientEnvironment.getProductTreeRoot());
			var bProduct:BProduct = null;
			for(var i:int =0;i< arr4detailproducts.length;i++)
			{
				bProduct = arr4detailproducts.getItemAt(i) as BProduct;
				if(bProduct.name==name && bProduct.code==code)
				{
					return bProduct;
				}
			}
			return null;
		}
		
		public static function getBProductById(Id:Number):BProduct
		{
			var arr4detailproducts:ArrayCollection = getDetailProducts(ClientEnvironment.getProductTreeRoot());
			var bProduct:BProduct = null;
			for(var i:int =0;i< arr4detailproducts.length;i++)
			{
				bProduct = arr4detailproducts.getItemAt(i) as BProduct;
				if(bProduct.id==Id)
				{
					return bProduct;
				}
			}
			return null;
		}
		
		public static function getBProductByCode(product:BProduct,code:String):BProduct
		{
			if(product==null )
				return null;
			if(product.code == code)
				return product;
			if(product.subProducts !=null && product.subProducts.length>0)
			{
				var bProduct:BProduct = null;
				var length:int = product.subProducts.length;
				for(var i:int =0;i< length;i++)
				{
					bProduct = product.subProducts.getItemAt(i) as BProduct;
					var _bProduct:BProduct = null;
					_bProduct = getBProductByCode(bProduct,code);
					if(_bProduct!=null)
						return _bProduct;
				}
			}
			return null;
//			var arr4detailproducts:ArrayCollection = getDetailProducts(ClientEnvironment.getProductTreeRoot());
//			var bProduct:BProduct = null;
//			for(var i:int =0;i< arr4detailproducts.length;i++)
//			{
//				bProduct = arr4detailproducts.getItemAt(i) as BProduct;
//				if( bProduct.code==code)
//				{
//					return bProduct;
//				}
//			}
//			return null;
		}
		
		/**
		 * 求产品并集
		 * */
		public static function getUnion4arrProduct(_arrProduct1:ArrayCollection,_product:BProduct):ArrayCollection
		{
			var bProduct:BProduct = null;
			for(var i:int =0;i< _arrProduct1.length;i++)
			{
				bProduct = _arrProduct1.getItemAt(i) as BProduct;
				if(relationOf(bProduct,_product) == UIConst.RELATION_FIRST2SECOND_COVERED)
				{
					_arrProduct1.removeItemAt(i);
					_arrProduct1.addItem(_product);	
					return _arrProduct1;
				}
				if(relationOf(bProduct,_product) == UIConst.RELATION_FIRST2SECOND_COVERING)
				{
					return _arrProduct1;
				}
			}
			_arrProduct1.addItem(_product);	
			return _arrProduct1;
		}
		
		/**
		 * 获取产品ID集合
		 * */
		public static function getIds(_arrProduct:ArrayCollection):ArrayCollection
		{
			var bProduct:BProduct = null;
			var result:ArrayCollection = new ArrayCollection();
			for(var i:int =0;i< _arrProduct.length;i++)
			{
				bProduct = _arrProduct.getItemAt(i) as BProduct;
				result.addItem(bProduct.id);
			}
			return result;
		}
		
		/**
		 * 根据productCode判断重复，合并两个Product集合数据,
		 * */
		public static function getUnionProductArr( arrPro1:ArrayCollection, arrPro2:ArrayCollection ):ArrayCollection
		{
			var arr4Rst:ArrayCollection = new ArrayCollection();
			
			if( arrPro1 == null || arrPro1.length <= 0 )
			{
				if( arrPro2 == null || arrPro2.length <=0 )
				{
					return arr4Rst;	
				}
				else
				{
					return arrPro2;
				}
			}
			else if( arrPro2 == null || arrPro2.length <= 0 )
			{
				return arrPro1;
			}
			
			
			// 二者都不为空
			var hmap4ProOrg:HashMap = new HashMap();
			
			// 先放到一起，过滤掉完全一样的    begin
			var i:int;
			var product:BProduct = null;
			for( i=0; i<arrPro1.length; i=i+1 )
			{
				product = arrPro1.getItemAt( i ) as BProduct;
				hmap4ProOrg.put( product.code, product );				
			}
			for( i=0; i<arrPro2.length; i=i+1 )
			{
				product = arrPro2.getItemAt( i ) as BProduct;
				hmap4ProOrg.put( product.code, product );
			}			
			// 先放到一起，过滤掉完全一样的    end
			
			arr4Rst = hmap4ProOrg.getValues();
			
			return arr4Rst;
		}
		
		//function end
	}
}

