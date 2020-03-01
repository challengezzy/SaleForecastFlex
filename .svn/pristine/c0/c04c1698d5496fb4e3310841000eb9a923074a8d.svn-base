package dmdd.dmddas.common.utils
{
	import aks.aksas.collections.HashMap;
	import aks.aksas.utils.UtilArrayCollection;
	
	import dmdd.dmddas.common.constant.BizConst;
	import dmdd.dmddas.common.constant.UIConst;
	import dmdd.dmddas.common.system.ClientEnvironment;
	import dmdd.dmddas.dataaccess.aidobject.ABProOrg;
	import dmdd.dmddas.dataaccess.bizobject.BOrganization;
	import dmdd.dmddas.dataaccess.bizobject.BProduct;
	import dmdd.dmddas.dataaccess.bizobject.BUnitGroup;
	
	import mx.collections.ArrayCollection;
	import mx.utils.StringUtil;
	
	
	public class UtilProOrg
	{
		public function UtilProOrg()
		{
			//TODO: implement function
		}
			
		/**
		 * 以 (101,202) 形式返回ProOrg的联合ID
		 */ 
		public static function getProOrgId( _product:BProduct, _organization:BOrganization ):String
		{
			var rstStr:String = " ( ";
			if( _product != null )
			{
				rstStr = rstStr + _product.id;	
			}
			else
			{
				rstStr = rstStr + "-1";
			}
			rstStr = rstStr + ",";
			if( _organization != null )
			{
				rstStr = rstStr + _organization.id;	
			}
			else
			{
				rstStr = rstStr + "-1";
			}			
			rstStr = rstStr + " ) ";
			
			return rstStr;
		}
		
		/**
		 * 以 ( (-1,-1), (101,202) ) 形式返回ProOrg 范围ID字符串
		 */ 
		public static function getIdsScopeStr4ProOrgs( _arrABProOrg:ArrayCollection ):String
		{
			var rstStr:String = "( (-1,-1) ";
			
			var i:int;
			var aBProOrg:ABProOrg = null;
			if (_arrABProOrg != null && _arrABProOrg.length > 0 )
			{
				for( i=0; i<_arrABProOrg.length; i=i+1 )
				{
					aBProOrg = ABProOrg( _arrABProOrg.getItemAt(i) );
					rstStr = rstStr + " , (" + aBProOrg.product.id + ","
						+ aBProOrg.organization.id + ") ";
				}
			}
			rstStr = rstStr + " )";
			return rstStr;
		}		
		
		/**
		 * 求解 _scopeProOrgs 覆盖的明细范围
		 * 根据传入的高层的组织产品，返回明细的组织产品
		 */ 
		public static function getDetailProOrgs( _scopeProOrgs:ArrayCollection, _only4ValidProOrg:Boolean ):ArrayCollection
		{
			if( _scopeProOrgs == null )
			{
				return null;
			}

			var rstDetailProOrgs:ArrayCollection = new ArrayCollection();
			
			var i:int;
			var j:int;
			var k:int;	

			var proOrg:ABProOrg = null;
			var detailProducts:ArrayCollection = null;
			var detailOrganizations:ArrayCollection = null;
			var detailProduct:BProduct = null;
			var detailOrganization:BOrganization = null;	
			var detailProOrg:ABProOrg = null;
			
			var skrKey4ProOrg:String = null;
			var hmap4ProOrg:HashMap = new HashMap();	
		
			for(i=0; i<_scopeProOrgs.length; i++)
			{
				proOrg = ABProOrg( _scopeProOrgs.getItemAt(i) );
				detailProducts = UtilProduct.getDetailProducts( proOrg.product );				
				detailOrganizations = UtilOrganization.getDetailOrganizations( proOrg.organization );
				if( detailProducts != null && detailOrganizations != null )
				{
					for( j=0; j<detailProducts.length; j=j+1 )
					{
						detailProduct = BProduct( detailProducts.getItemAt(j) );
						if( _only4ValidProOrg == true )
						{
							if( detailProduct.isValid == BizConst.GLOBAL_YESNO_NO )
							{
								continue;
							}
						}
						
						for( k=0; k<detailOrganizations.length; k=k+1 )
						{
							detailOrganization = BOrganization( detailOrganizations.getItemAt(k) );
							
							if( _only4ValidProOrg == true )
							{
								if( detailOrganization.isValid == BizConst.GLOBAL_YESNO_NO )
								{
									continue;
								}
							}
							
							detailProOrg = new ABProOrg();
							detailProOrg.organization = detailOrganization;
							detailProOrg.product = detailProduct;	
							
							skrKey4ProOrg = getStrKey4ProOrg( detailProOrg );
							hmap4ProOrg.put( skrKey4ProOrg, detailProOrg );						
						}							
					}	
				}
			}
			
			rstDetailProOrgs = hmap4ProOrg.getValues();
			return rstDetailProOrgs;
		}
		
		//根据ids获取明细组合
		//
		public static function getDetailProOrgsByIds( _scopeProOrgIds:ArrayCollection, _only4ValidProOrg:Boolean ):ArrayCollection
		{
			if( _scopeProOrgIds == null )
			{
				return null;
			}
			
			var rstDetailProOrgs:ArrayCollection = new ArrayCollection();
			
			var i:int;
			var j:int;
			var k:int;	
			
			var proorgids:String =null;
			var ProId:String = null;
			var OrgId:String = null;
			var detailProducts:ArrayCollection = null;
			var detailOrganizations:ArrayCollection = null;
			var detailProduct:BProduct = null;
			var detailOrganization:BOrganization = null;	
			var detailProOrg:ABProOrg = null;
			
			var skrKey4ProOrg:String = null;
			var hmap4ProOrg:HashMap = new HashMap();	
			
			for(i=0; i<_scopeProOrgIds.length; i++)
			{
				proorgids = String(_scopeProOrgIds.getItemAt(i)) ;
				proorgids = StringUtil.trim(proorgids);
				ProId = proorgids.substring(1,proorgids.indexOf(","));
				OrgId = proorgids.substring(proorgids.indexOf(",")+1,proorgids.length-1);
				detailProduct = UtilProduct.getBProductById(Number(ProId));		
				if(detailProduct==null)
				{
					continue;
				}
				detailProducts = UtilProduct.getDetailProducts(detailProduct);
				detailOrganization = UtilOrganization.getBOrganziationById(Number(OrgId));
				if(detailOrganization==null)
				{
					continue;
				}
				detailOrganizations = UtilOrganization.getDetailOrganizations( detailOrganization);
				if( detailProducts != null && detailOrganizations != null )
				{
					for( j=0; j<detailProducts.length; j=j+1 )
					{
						detailProduct = BProduct( detailProducts.getItemAt(j) );
						if( _only4ValidProOrg == true )
						{
							if( detailProduct.isValid == false )
							{
								continue;
							}
						}
						
						for( k=0; k<detailOrganizations.length; k=k+1 )
						{
							detailOrganization = BOrganization( detailOrganizations.getItemAt(k) );
							
							if( _only4ValidProOrg == true )
							{
								if( detailOrganization.isValid == false )
								{
									continue;
								}
							}
							
							detailProOrg = new ABProOrg();
							detailProOrg.organization = detailOrganization;
							detailProOrg.product = detailProduct;	
							
							skrKey4ProOrg = getStrKey4ProOrg( detailProOrg );
							hmap4ProOrg.put( skrKey4ProOrg, detailProOrg );						
						}							
					}	
				}
			}
			
			rstDetailProOrgs = hmap4ProOrg.getValues();
			return rstDetailProOrgs;
		}
		
		/**
		 * 根据当前的proorg列表中，过滤出权限范围内的后的产品组织
		 * */
		public static function getAuthorizedProOrg( _arr4ProOrg:ArrayCollection):ArrayCollection
		{
			var arr4Rst:ArrayCollection = new ArrayCollection();
			
			if( _arr4ProOrg == null){
				return arr4Rst;
			}
			
			var i:int;
			var proOrg_1:ABProOrg = null; //列表中的
			var proOrg_2:ABProOrg = null; //权限范围的
			//遍历每个proorg，判断是否在用户的权限范围内
			for(i=0;i<_arr4ProOrg.length;i++){
				proOrg_1 = _arr4ProOrg.getItemAt(i) as ABProOrg;
				
				proOrg_2 = ClientEnvironment.hmapPermPorOrg.getValue( getStrKey4ProOrg(proOrg_1) );
				
				if(proOrg_2 != null){
					arr4Rst.addItem(proOrg_1);
				}
			}
			
			return arr4Rst;
		}
			
		/**
		 *  求两个ProOrg集合的交集 (性能很差)
		 * _arr4ProOrg_1 内部的 ProOrg 两两之间都是不相交的 
		 * _arr4ProOrg_2 内部的 ProOrg 两两之间都是不相交的
		 * */
		public static function getIntersect4Arr4ProOrg( _arr4ProOrg_1:ArrayCollection, _arr4ProOrg_2:ArrayCollection ):ArrayCollection
		{
			var arr4Rst:ArrayCollection = new ArrayCollection();
			
			if( _arr4ProOrg_1 == null || _arr4ProOrg_2 == null )
			{
				return arr4Rst;
			}
			
			var i_1:int;
			var i_2:int;
			var proOrg_1:ABProOrg = null;
			var proOrg_2:ABProOrg = null;
			var proOrg_intersect:ABProOrg = null;
			var strKey4ProOrg:String = "";
			var hmap4ProOrg:HashMap = new HashMap();
			for( i_1=0; i_1<_arr4ProOrg_1.length; i_1=i_1+1 )
			{
				proOrg_1 = _arr4ProOrg_1.getItemAt( i_1 ) as ABProOrg;
				
				for( i_2=0; i_2<_arr4ProOrg_2.length; i_2=i_2+1 )
				{
					proOrg_2 = _arr4ProOrg_2.getItemAt( i_2 ) as ABProOrg;
					
					proOrg_intersect = getIntersect4ProOrg( proOrg_1, proOrg_2 );
					if( proOrg_intersect != null )
					{
						strKey4ProOrg = getStrKey4ProOrg( proOrg_intersect );
						hmap4ProOrg.put( strKey4ProOrg, proOrg_intersect );
					}
				}
			}
			
			arr4Rst = hmap4ProOrg.getValues();
			
			return arr4Rst;
		}
		
		// 求两个ProOrg集合的并集
		// _arr4ProOrg_1 内部的 ProOrg 两两之间都是不相交的 
		// _arr4ProOrg_2 内部的 ProOrg 两两之间都是不相交的		
		public static function getUnion4arrProOrg_old( _arr4ProOrg_1:ArrayCollection, _arr4ProOrg_2:ArrayCollection ):ArrayCollection
		{
			var arr4Rst:ArrayCollection = new ArrayCollection();
			
			if( _arr4ProOrg_1 == null || _arr4ProOrg_1.length <= 0 )
			{
				if( _arr4ProOrg_2 == null || _arr4ProOrg_2.length <=0 )
				{
					return arr4Rst;	
				}
				else
				{
					return _arr4ProOrg_2;
				}
			}
			else if( _arr4ProOrg_2 == null || _arr4ProOrg_2.length <= 0 )
			{
				return _arr4ProOrg_1;
			}
			
			// 二者都不为空
			var hmap4ProOrg:HashMap = new HashMap();
			var strKey4ProOrg:String = null;
			
			// 先放到一起，过滤掉完全一样的    begin
			var i:int;
			var proOrg:ABProOrg = null;
			for( i=0; i<_arr4ProOrg_1.length; i=i+1 )
			{
				proOrg = _arr4ProOrg_1.getItemAt( i ) as ABProOrg;
				strKey4ProOrg = getStrKey4ProOrg(proOrg);	
				hmap4ProOrg.put( strKey4ProOrg, proOrg );				
			}
			for( i=0; i<_arr4ProOrg_2.length; i=i+1 )
			{
				proOrg = _arr4ProOrg_2.getItemAt( i ) as ABProOrg;
				strKey4ProOrg = getStrKey4ProOrg(proOrg);	
				hmap4ProOrg.put( strKey4ProOrg, proOrg );				
			}			
			// 先放到一起，过滤掉完全一样的    end
			
			var proOrg_i:ABProOrg = null;
			var proOrg_k:ABProOrg = null;
			var relation:String = null;
			
			var arr4ProOrg4Union:ArrayCollection = null;
			
			var k:int;
			var t:int;

			var blRemove_i:Boolean = false;
			var blRemove_k:Boolean = false;
			var blReInit:Boolean = false;
			var blGoon:Boolean = true;
			arr4Rst = hmap4ProOrg.getValues();
			while( blGoon == true )
			{
				blGoon = false;
				blReInit = false;
				blRemove_i = false;
				blRemove_k = false;
				
				for( i=0; i<arr4Rst.length; i=i+1 )
				{
					proOrg_i = arr4Rst.getItemAt( i ) as ABProOrg;	
					for( k=0; k<i; k=k+1 )
					{
						proOrg_k = arr4Rst.getItemAt( k ) as ABProOrg;
						
						relation = UtilProOrg.relationOf( proOrg_i, proOrg_k );
						if( relation == UIConst.RELATION_FIRST2SECOND_COVERING )
						{
							blRemove_k = true;
							blGoon = true;
							break;
						}
						else if( relation == UIConst.RELATION_FIRST2SECOND_EQUAL )
						{
							blRemove_k = true;
							blGoon = true;
							break;							
						}						
						else if( relation == UIConst.RELATION_FIRST2SECOND_COVERED )
						{
							blRemove_i = true; 
							blGoon = true;
							break;							
						}
						else if( relation == UIConst.RELATION_FIRST2SECOND_INTERSECT_1 )
						{
							arr4ProOrg4Union = getUnion4ProOrg4IntersectedProOrgs(proOrg_i,proOrg_k);
							blReInit = true;
							blGoon = true;
							break;								
						}
						else if( relation == UIConst.RELATION_FIRST2SECOND_INTERSECT_2 )
						{
							arr4ProOrg4Union = getUnion4ProOrg4IntersectedProOrgs(proOrg_k,proOrg_i);
							blReInit = true;
							blGoon = true;
							break;								
						}
						else if( relation == UIConst.RELATION_FIRST2SECOND_IRRELATED )
						{
							// good, do nothing
						}																		
					}
					
					if( blRemove_i == true )
					{
						arr4Rst.removeItemAt( i );
					}
					else if( blRemove_k == true )
					{
						arr4Rst.removeItemAt( k );
					}
					else if( blReInit == true )
					{
						hmap4ProOrg = new HashMap();
						if( arr4ProOrg4Union != null )
						{
							for( t=0; t<arr4ProOrg4Union.length; t=t+1 )
							{
								proOrg = arr4ProOrg4Union.getItemAt( t ) as ABProOrg;
								strKey4ProOrg = getStrKey4ProOrg(proOrg);	
								hmap4ProOrg.put( strKey4ProOrg, proOrg );
							}
						}
						for( t=0; t<arr4Rst.length; t=t+1 )
						{
							if( (t != i) && (t != k) )
							{
								proOrg = arr4Rst.getItemAt( t ) as ABProOrg;
								strKey4ProOrg = getStrKey4ProOrg(proOrg);	
								hmap4ProOrg.put( strKey4ProOrg, proOrg );								
							}
						}
						
						arr4Rst = hmap4ProOrg.getValues();
					}
					
				}					
			}
			
			return arr4Rst;
		}
		
		// 求两个ProOrg集合的并集
		// _arr4ProOrg_1 内部的 ProOrg 两两之间都是不相交的 
		// _arr4ProOrg_2 内部的 ProOrg 两两之间都是不相交的		
		public static function getUnion4arrProOrg( _arr4ProOrg_1:ArrayCollection, _arr4ProOrg_2:ArrayCollection ):ArrayCollection
		{
			/**
			 * modify by zhangzy 20130718 这里求并集，两个数组可能包含相同的数据，把相交的PROORG数据去除即可.
			 * 相同的数据包含几种情况：1, 两个proorg完全相同, 去除一个 2,proorg包含关系，去除范围小的那个  
			 * 3，两个proorg相交，但不包含。 两个数据都保留，其实多保留的相交部分的数据，不过数据过滤条件，没有关系啦！！
			 * 4，两个proorg不相交，均保留
			 * */ 
			var arr4Rst:ArrayCollection = new ArrayCollection();
			
			if( _arr4ProOrg_1 == null || _arr4ProOrg_1.length <= 0 )
			{
				if( _arr4ProOrg_2 == null || _arr4ProOrg_2.length <=0 )
				{
					return arr4Rst;	
				}
				else
				{
					return _arr4ProOrg_2;
				}
			}
			else if( _arr4ProOrg_2 == null || _arr4ProOrg_2.length <= 0 )
			{
				return _arr4ProOrg_1;
			}
			
			
			// 二者都不为空
			var hmap4ProOrg:HashMap = new HashMap();
			var strKey4ProOrg:String = null;
			
			// 先放到一起，过滤掉完全一样的    begin
			var i:int;
			var proOrg:ABProOrg = null;
			for( i=0; i<_arr4ProOrg_1.length; i=i+1 )
			{
				proOrg = _arr4ProOrg_1.getItemAt( i ) as ABProOrg;
				strKey4ProOrg = getStrKey4ProOrg(proOrg);	
				hmap4ProOrg.put( strKey4ProOrg, proOrg );				
			}
			for( i=0; i<_arr4ProOrg_2.length; i=i+1 )
			{
				proOrg = _arr4ProOrg_2.getItemAt( i ) as ABProOrg;
				strKey4ProOrg = getStrKey4ProOrg(proOrg);	
				hmap4ProOrg.put( strKey4ProOrg, proOrg );
			}			
			// 先放到一起，过滤掉完全一样的    end
			
			arr4Rst = hmap4ProOrg.getValues();
			
			//TODO 暂时不考虑覆盖的情况 
			
			/**
			var hmap4ProOrg:HashMap = new HashMap();
			var strKey4ProOrg:String = null;
			
			var i:int =0;
			var proOrg:ABProOrg = null;
			//先把数组1加入到结果集中
			for( i=0; i<_arr4ProOrg_1.length; i=i+1 )
			{
				proOrg = _arr4ProOrg_1.getItemAt( i ) as ABProOrg;
				strKey4ProOrg = getStrKey4ProOrg(proOrg);	
				hmap4ProOrg.put( strKey4ProOrg, proOrg );				
			}
			
			var proOrg1:ABProOrg = null;
			var proOrg2:ABProOrg = null;
			var proOrgKey1:String = null;
			var proOrgKey2:String = null;
			
			//对数组2进行遍历比较
			var isNeedAdd:Boolean = true;//是否需要将数据2的查找数据添加到结果集
			var relation:String = null;
			for( i=0; i<_arr4ProOrg_2.length; i=i+1 )
			{
				proOrg2 = _arr4ProOrg_2.getItemAt( i ) as ABProOrg;
				proOrgKey2 = getStrKey4ProOrg(proOrg2);	
				
				isNeedAdd = true;
				for(var j:int=0;j< hmap4ProOrg.getValues().length;j++){
					proOrg1 = hmap4ProOrg.getValues().getItemAt(j) as ABProOrg;
					proOrgKey1 = getStrKey4ProOrg(proOrg1);	
					
					relation = UtilProOrg.relationOf( proOrg1, proOrg2 );
					if( relation == UIConst.RELATION_FIRST2SECOND_COVERING || relation == UIConst.RELATION_FIRST2SECOND_EQUAL)
					{
						//数据2的数据范围已经被包含,该数据不用加入到结果集,停止查找
						isNeedAdd = false;
						break;
					}
					else if( relation == UIConst.RELATION_FIRST2SECOND_COVERED )
					{
						//数据2的范围包含数据1，将数据1的移除
						hmap4ProOrg.remove(proOrgKey1);
						
					}else{
						//其它的,继续查找
					}
				}
				
				if(isNeedAdd == true){ //数组2的数据没有被包含，加入
					hmap4ProOrg.put(proOrgKey2,proOrg2);
				}
				
			}	*/
			
			/*
			// 二者都不为空
			var hmap4ProOrg:HashMap = new HashMap();
			var strKey4ProOrg:String = null;
			
			// 先放到一起，过滤掉完全一样的    begin
			var i:int;
			var proOrg:ABProOrg = null;
			for( i=0; i<_arr4ProOrg_1.length; i=i+1 )
			{
				proOrg = _arr4ProOrg_1.getItemAt( i ) as ABProOrg;
				strKey4ProOrg = getStrKey4ProOrg(proOrg);	
				hmap4ProOrg.put( strKey4ProOrg, proOrg );				
			}
			for( i=0; i<_arr4ProOrg_2.length; i=i+1 )
			{
				proOrg = _arr4ProOrg_2.getItemAt( i ) as ABProOrg;
				strKey4ProOrg = getStrKey4ProOrg(proOrg);	
				hmap4ProOrg.put( strKey4ProOrg, proOrg );				
			}			
			// 先放到一起，过滤掉完全一样的    end
			*/
			
			/**
			var proOrg_i:ABProOrg = null;
			var proOrg_k:ABProOrg = null;
			var relation:String = null;
			
			var arr4ProOrg4Union:ArrayCollection = null;
			
			var k:int;
			var t:int;
			
			var blRemove_i:Boolean = false;
			var blRemove_k:Boolean = false;
			var blReInit:Boolean = false;
			var blGoon:Boolean = true;
			arr4Rst = hmap4ProOrg.getValues();
			while( blGoon == true )
			{
				blGoon = false;
				blReInit = false;
				blRemove_i = false;
				blRemove_k = false;
				
				for( i=0; i<arr4Rst.length; i=i+1 )
				{
					proOrg_i = arr4Rst.getItemAt( i ) as ABProOrg;	
					for( k=0; k<i; k=k+1 )
					{
						proOrg_k = arr4Rst.getItemAt( k ) as ABProOrg;
						
						relation = UtilProOrg.relationOf( proOrg_i, proOrg_k );
						if( relation == UIConst.RELATION_FIRST2SECOND_COVERING )
						{
							blRemove_k = true;
							blGoon = true;
							break;
						}
						else if( relation == UIConst.RELATION_FIRST2SECOND_EQUAL )
						{
							blRemove_k = true;
							blGoon = true;
							break;							
						}						
						else if( relation == UIConst.RELATION_FIRST2SECOND_COVERED )
						{
							blRemove_i = true; 
							blGoon = true;
							break;							
						}
						else if( relation == UIConst.RELATION_FIRST2SECOND_INTERSECT_1 )
						{
							arr4ProOrg4Union = getUnion4ProOrg4IntersectedProOrgs(proOrg_i,proOrg_k);
							blReInit = true;
							blGoon = true;
							break;								
						}
						else if( relation == UIConst.RELATION_FIRST2SECOND_INTERSECT_2 )
						{
							arr4ProOrg4Union = getUnion4ProOrg4IntersectedProOrgs(proOrg_k,proOrg_i);
							blReInit = true;
							blGoon = true;
							break;								
						}
						else if( relation == UIConst.RELATION_FIRST2SECOND_IRRELATED )
						{
							// good, do nothing
						}																		
					}
					
					if( blRemove_i == true )
					{
						arr4Rst.removeItemAt( i );
					}
					else if( blRemove_k == true )
					{
						arr4Rst.removeItemAt( k );
					}
					else if( blReInit == true )
					{
						hmap4ProOrg = new HashMap();
						if( arr4ProOrg4Union != null )
						{
							for( t=0; t<arr4ProOrg4Union.length; t=t+1 )
							{
								proOrg = arr4ProOrg4Union.getItemAt( t ) as ABProOrg;
								strKey4ProOrg = getStrKey4ProOrg(proOrg);	
								hmap4ProOrg.put( strKey4ProOrg, proOrg );
							}
						}
						for( t=0; t<arr4Rst.length; t=t+1 )
						{
							if( (t != i) && (t != k) )
							{
								proOrg = arr4Rst.getItemAt( t ) as ABProOrg;
								strKey4ProOrg = getStrKey4ProOrg(proOrg);	
								hmap4ProOrg.put( strKey4ProOrg, proOrg );								
							}
						}
						
						arr4Rst = hmap4ProOrg.getValues();
					}
					
				}					
			}
			*/
			
			return arr4Rst;
		}
		
		
		public static function relationOf( _proOrg_1:ABProOrg, _proOrg_2:ABProOrg ):String
		{			
			if( _proOrg_1 == null || _proOrg_2 == null )
			{
				return UIConst.RELATION_FIRST2SECOND_IRRELATED;
			}
			if( _proOrg_1.product == null || _proOrg_1.organization == null || _proOrg_2.product == null || _proOrg_2.organization == null )
			{
				return UIConst.RELATION_FIRST2SECOND_IRRELATED;
			}			
			
			var product_1:BProduct = _proOrg_1.product;
			var product_2:BProduct = _proOrg_2.product;
			var organization_1:BOrganization = _proOrg_1.organization;
			var organization_2:BOrganization = _proOrg_2.organization;
			
			var relation_p1_p2:String = UtilProduct.relationOf( product_1, product_2 );
			var relation_o1_o2:String = UtilOrganization.relationOf( organization_1, organization_2 );

			if( relation_p1_p2 == UIConst.RELATION_FIRST2SECOND_COVERING )
			{
				if( relation_o1_o2 == UIConst.RELATION_FIRST2SECOND_COVERING )
				{
					// P1>P2 O1>O2
					return UIConst.RELATION_FIRST2SECOND_COVERING;
				}
				else if( relation_o1_o2 == UIConst.RELATION_FIRST2SECOND_EQUAL )
				{
					// P1>P2 O1=O2
					return UIConst.RELATION_FIRST2SECOND_COVERING;
				}
				else if( relation_o1_o2 == UIConst.RELATION_FIRST2SECOND_COVERED )
				{
					// P1>P2 O1<O2
					return UIConst.RELATION_FIRST2SECOND_INTERSECT_1;
				}
				else if( relation_p1_p2 == UIConst.RELATION_FIRST2SECOND_IRRELATED )
				{
					// P1>P2 O1nO2
					return UIConst.RELATION_FIRST2SECOND_IRRELATED;

				}									
			}
			else if( relation_p1_p2 == UIConst.RELATION_FIRST2SECOND_EQUAL )
			{
				if( relation_o1_o2 == UIConst.RELATION_FIRST2SECOND_COVERING )
				{
					// P1=P2 O1>O2
					return UIConst.RELATION_FIRST2SECOND_COVERING;
				}
				else if( relation_o1_o2 == UIConst.RELATION_FIRST2SECOND_EQUAL )
				{
					// P1=P2 O1=O2
					return UIConst.RELATION_FIRST2SECOND_EQUAL;
				}
				else if( relation_o1_o2 == UIConst.RELATION_FIRST2SECOND_COVERED )
				{
					// P1=P2 O1<O2
					return UIConst.RELATION_FIRST2SECOND_COVERED;
				}
				else if( relation_p1_p2 == UIConst.RELATION_FIRST2SECOND_IRRELATED )
				{
					// P1=P2 O1nO2
					return UIConst.RELATION_FIRST2SECOND_IRRELATED;
				}													
			}
			else if( relation_p1_p2 == UIConst.RELATION_FIRST2SECOND_COVERED )
			{
				if( relation_o1_o2 == UIConst.RELATION_FIRST2SECOND_COVERING )
				{
					// P1<P2 O1>O2
					return UIConst.RELATION_FIRST2SECOND_INTERSECT_2;
				}
				else if( relation_o1_o2 == UIConst.RELATION_FIRST2SECOND_EQUAL )
				{
					// P1<P2 O1=O2
					return UIConst.RELATION_FIRST2SECOND_COVERED;
				}
				else if( relation_o1_o2 == UIConst.RELATION_FIRST2SECOND_COVERED )
				{
					// P1<P2 O1<O2
					return UIConst.RELATION_FIRST2SECOND_COVERED;
				}
				else if( relation_p1_p2 == UIConst.RELATION_FIRST2SECOND_IRRELATED )
				{
					// P1<P2 O1nO2
					return UIConst.RELATION_FIRST2SECOND_IRRELATED;
				}									
			}
			else if( relation_p1_p2 == UIConst.RELATION_FIRST2SECOND_IRRELATED )
			{
				// P1nP2
				return UIConst.RELATION_FIRST2SECOND_IRRELATED;				
			}	
			
			return UIConst.RELATION_FIRST2SECOND_IRRELATED;					
		}	
		
		
		
		public static function getUnion4ProOrg( _proOrg_1:ABProOrg, _proOrg_2:ABProOrg ):ArrayCollection
		{
			var arr4Rst:ArrayCollection = new ArrayCollection();
			
			if( _proOrg_1 == null || _proOrg_2 == null )
			{
				return arr4Rst;
			}
			if( _proOrg_1.product == null || _proOrg_1.organization == null || _proOrg_2.product == null || _proOrg_2.organization == null )
			{
				return arr4Rst;
			}			
			
			var product_1:BProduct = _proOrg_1.product;
			var product_2:BProduct = _proOrg_2.product;
			var organization_1:BOrganization = _proOrg_1.organization;
			var organization_2:BOrganization = _proOrg_2.organization;
			
			var relation_p1_p2:String = UtilProduct.relationOf( product_1, product_2 );
			var relation_o1_o2:String = UtilOrganization.relationOf( organization_1, organization_2 );

			var rstProOrg:ABProOrg = new ABProOrg();
			if( relation_p1_p2 == UIConst.RELATION_FIRST2SECOND_COVERING )
			{
				if( relation_o1_o2 == UIConst.RELATION_FIRST2SECOND_COVERING )
				{
					// P1>P2 O1>O2
					arr4Rst.addItem( _proOrg_1 );
				}
				else if( relation_o1_o2 == UIConst.RELATION_FIRST2SECOND_EQUAL )
				{
					// P1>P2 O1=O2
					arr4Rst.addItem( _proOrg_1 );
				}
				else if( relation_o1_o2 == UIConst.RELATION_FIRST2SECOND_COVERED )
				{
					// P1>P2 O1<O2
					// complete subtree method
					arr4Rst = getUnion4ProOrg4IntersectedProOrgs( _proOrg_1, _proOrg_2 );
				}
				else if( relation_p1_p2 == UIConst.RELATION_FIRST2SECOND_IRRELATED )
				{
					// P1>P2 O1nO2
					arr4Rst.addItem( _proOrg_1 );
					arr4Rst.addItem( _proOrg_2 );
				}									
			}
			else if( relation_p1_p2 == UIConst.RELATION_FIRST2SECOND_EQUAL )
			{
				if( relation_o1_o2 == UIConst.RELATION_FIRST2SECOND_COVERING )
				{
					// P1=P2 O1>O2
					arr4Rst.addItem( _proOrg_1 );
				}
				else if( relation_o1_o2 == UIConst.RELATION_FIRST2SECOND_EQUAL )
				{
					// P1=P2 O1=O2
					arr4Rst.addItem( _proOrg_1 );
				}
				else if( relation_o1_o2 == UIConst.RELATION_FIRST2SECOND_COVERED )
				{
					// P1=P2 O1<O2
					arr4Rst.addItem( _proOrg_2 );
				}
				else if( relation_p1_p2 == UIConst.RELATION_FIRST2SECOND_IRRELATED )
				{
					// P1=P2 O1nO2
					arr4Rst.addItem( _proOrg_1 );
					arr4Rst.addItem( _proOrg_2 );
				}													
			}
			else if( relation_p1_p2 == UIConst.RELATION_FIRST2SECOND_COVERED )
			{
				if( relation_o1_o2 == UIConst.RELATION_FIRST2SECOND_COVERING )
				{
					// P1<P2 O1>O2
					// complete subtree method
					arr4Rst = getUnion4ProOrg4IntersectedProOrgs( _proOrg_2, _proOrg_1 );
				}
				else if( relation_o1_o2 == UIConst.RELATION_FIRST2SECOND_EQUAL )
				{
					// P1<P2 O1=O2
					arr4Rst.addItem( _proOrg_2 );
				}
				else if( relation_o1_o2 == UIConst.RELATION_FIRST2SECOND_COVERED )
				{
					// P1<P2 O1<O2
					arr4Rst.addItem( _proOrg_2 );
				}
				else if( relation_p1_p2 == UIConst.RELATION_FIRST2SECOND_IRRELATED )
				{
					// P1<P2 O1nO2
					arr4Rst.addItem( _proOrg_1 );
					arr4Rst.addItem( _proOrg_2 );
				}									
			}
			else if( relation_p1_p2 == UIConst.RELATION_FIRST2SECOND_IRRELATED )
			{
				// P1nP2
				arr4Rst.addItem( _proOrg_1 );
				arr4Rst.addItem( _proOrg_2 );				
			}	
			
			return arr4Rst;					
		}
		
		
		public static function getIntersect4ProOrg( _proOrg_1:ABProOrg, _proOrg_2:ABProOrg ):ABProOrg
		{
			if( _proOrg_1 == null || _proOrg_2 == null )
			{
				return null;
			}
			if( _proOrg_1.product == null || _proOrg_1.organization == null || _proOrg_2.product == null || _proOrg_2.organization == null )
			{
				return null;
			}			
			
			var product_1:BProduct = _proOrg_1.product;
			var product_2:BProduct = _proOrg_2.product;
			var organization_1:BOrganization = _proOrg_1.organization;
			var organization_2:BOrganization = _proOrg_2.organization;
			
			var relation_p1_p2:String = UtilProduct.relationOf( product_1, product_2 );
			var relation_o1_o2:String = UtilOrganization.relationOf( organization_1, organization_2 );

			var rstProOrg:ABProOrg = new ABProOrg();
			if( relation_p1_p2 == UIConst.RELATION_FIRST2SECOND_COVERING || relation_p1_p2 == UIConst.RELATION_FIRST2SECOND_EQUAL )
			{
				if( relation_o1_o2 == UIConst.RELATION_FIRST2SECOND_COVERING || relation_o1_o2 == UIConst.RELATION_FIRST2SECOND_EQUAL )
				{
					return _proOrg_2;
				}
				else if( relation_o1_o2 == UIConst.RELATION_FIRST2SECOND_COVERED )
				{
					rstProOrg.product = product_2;
					rstProOrg.organization = organization_1; 
					return rstProOrg;
				}
				else if( relation_p1_p2 == UIConst.RELATION_FIRST2SECOND_IRRELATED )
				{
					return null;
				}									
			}
			else if( relation_p1_p2 == UIConst.RELATION_FIRST2SECOND_COVERED )
			{
				if( relation_o1_o2 == UIConst.RELATION_FIRST2SECOND_COVERING || relation_o1_o2 == UIConst.RELATION_FIRST2SECOND_EQUAL )
				{
					rstProOrg.product = product_1;
					rstProOrg.organization = organization_2; 					
					return rstProOrg;
				}
				else if( relation_o1_o2 == UIConst.RELATION_FIRST2SECOND_COVERED )
				{
					return _proOrg_1;
				}
				else if( relation_p1_p2 == UIConst.RELATION_FIRST2SECOND_IRRELATED )
				{
					return null;
				}													
			}
			else if( relation_p1_p2 == UIConst.RELATION_FIRST2SECOND_IRRELATED )
			{
				return null;
			}	
			
			return null;					
		}
		
		// P1>P2 O1<O2 
		// 求出来的是一组互不相交的ProOrg
		private static function getUnion4ProOrg4IntersectedProOrgs( _proOrg_1:ABProOrg, _proOrg_2:ABProOrg ):ArrayCollection
		{
			
			var arr4Rst:ArrayCollection = new ArrayCollection();
			
			arr4Rst.addItem(_proOrg_1);
			arr4Rst.addItem(_proOrg_2);
			
			/**
			 * add by zhangzy 20130718 我理解的是求两个权限范围的并集，就是两个之和-两个之交。 界面中不在意出现隐式重复的部分，因为此结果最终要作为查询条件出现。
			 * 此方法不用那么复杂，直接返回_proOrg_1 和_proOrg_2 即可。
			 * 如果真要去除相交部分，也不用这么麻烦，直接把proorg分解到， p2_o1单位(最小单位)， 分解完后出现两个p2_o1，去除其中一个即可！！！！！
			 *
			var product_1:BProduct = _proOrg_1.product;
			var product_2:BProduct = _proOrg_2.product;
			var organization_1:BOrganization = _proOrg_1.organization;
			var organization_2:BOrganization = _proOrg_2.organization;
			
			var rstProOrg:ABProOrg = null;
			
			// (P2,O1)
			rstProOrg = new ABProOrg();
			rstProOrg.product = product_2;
			rstProOrg.organization = organization_1;
			arr4Rst.addItem( rstProOrg );
			
			var i:int;

			// (P?,O1)
			var parentProduct:BProduct = null;
			var pathProduct:BProduct = null;
			var siblingProduct:BProduct = null;
			var arr4SiblingProduct:ArrayCollection = null;	
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		begin
			//product_2 = UtilProduct.getProductInTreeByRecursion( product_2, ClientEnvironment.getProductTreeRoot() );
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		end
			// product_2不会为空
			pathProduct = product_2;
			while( pathProduct.id != product_1.id )
			{
				//找出该节点的兄弟节点，加入到结果中？？
				parentProduct = pathProduct.parentProduct;
 				arr4SiblingProduct = parentProduct.subProducts;
 				for( i=0; i<arr4SiblingProduct.length; i=i+1 )
 				{
 					siblingProduct = arr4SiblingProduct.getItemAt( i ) as BProduct;
 					if( siblingProduct.id != pathProduct.id )
 					{
						rstProOrg = new ABProOrg();
						rstProOrg.product = siblingProduct;
						rstProOrg.organization = organization_1;
						arr4Rst.addItem( rstProOrg ); 
 					}	
 				}

				pathProduct = pathProduct.parentProduct;
			}
			
			// (P2,O?)
			var parentOrganization:BOrganization = null;
			var pathOrganization:BOrganization = null;
			var siblingOrganization:BOrganization = null;
			var arr4SiblingOrganization:ArrayCollection = null;
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		begin
			//organization_1 = UtilOrganization.getOrganizationInTreeByRecursion( organization_1, ClientEnvironment.getOrganizationTreeRoot() );
			//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		end
			// organization_1 不会为空
			pathOrganization = organization_1;
			while( pathOrganization.id != organization_2.id )
			{
				parentOrganization = pathOrganization.parentOrganization;
				arr4SiblingOrganization = parentOrganization.subOrganizations;
				for( i=0; i<arr4SiblingOrganization.length; i=i+1 )
				{
					siblingOrganization = arr4SiblingOrganization.getItemAt( i ) as BOrganization;
					if( siblingOrganization.id != pathOrganization.id )
					{
						rstProOrg = new ABProOrg();
						rstProOrg.product = product_2;
						rstProOrg.organization = siblingOrganization;
						arr4Rst.addItem( rstProOrg ); 						
					}
				}
				
				pathOrganization = pathOrganization.parentOrganization;
			} 
			*/
			return arr4Rst;
		}			
		
		/**生成PROORG对象的KEY,
		 * */
		public static function getStrKey4ProOrg( _proOrg:ABProOrg ):String
		{
			if( _proOrg == null )
			{
				return "_-1_-1";
			}
			var strKey4ProOrg:String = "";
			if( _proOrg.product != null )
			{
				strKey4ProOrg = strKey4ProOrg + "_" +  _proOrg.product.id;	
			}
			else
			{
				strKey4ProOrg = strKey4ProOrg + "_" +  "-1";
			}
			if( _proOrg.organization != null )
			{
				strKey4ProOrg = strKey4ProOrg + "_" +  _proOrg.organization.id;	
			}
			else
			{
				strKey4ProOrg = strKey4ProOrg + "_" +  "-1";
			}	
			return strKey4ProOrg;	
			
		}
		public static function checkKey4ProOrg(_proKey:String,_proCodeKey:String,_orgKey:String,_orgCodeKey:String,_containsSubPro:Boolean,_containsSubOrg:Boolean,_sourceProOrg:ABProOrg):Boolean
		{
			var var4ProOk:Boolean= false;//标记产品是否符合关键字
			var var4OrgOk:Boolean=false;//标记组织是否符合关键字
			var var4ProCodeOk:Boolean= false;//标记产品编码是否符合关键字
			var var4OrgCodeOk:Boolean=false;//标记组织编码是否符合关键字
			var product:BProduct = _sourceProOrg.product;
			var organization:BOrganization = _sourceProOrg.organization;
			var productName:String="";
			var organizationName:String="";
			var productCode:String="";
			var organizationCode:String="";
			//先检查产品
			if(_containsSubPro)
			{
				if(_proKey=="")
					var4ProOk=true;
				else
				{
					//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		begin
					/*
					product=UtilProduct.getProductInTreeByRecursion( product, ClientEnvironment.getProductTreeRoot() );
					*/
					//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		end
					var arr4ProductPath:ArrayCollection = UtilProduct.getPathFromRoot(product);
					for each(var _product:BProduct in arr4ProductPath)
					{
						productName = _product.name;
						if(productName.toUpperCase().indexOf(_proKey)>-1)
						{	
							var4ProOk=true;
							break;
						}
					}	
				}
				if(_proCodeKey=="")
				{
					var4ProCodeOk = true;
				}
				else
				{
					var arr4ProductPath_:ArrayCollection = UtilProduct.getPathFromRoot(product);
					for each(var _product_:BProduct in arr4ProductPath_)
					{
						productCode = _product_.code;
						if(productCode.toUpperCase().indexOf(_proCodeKey)>-1)
						{	
							var4ProCodeOk=true;
							break;
						}
					}	
				}				
			}
			else
			{
				productName = product.name;
				if(productName.toUpperCase().indexOf(_proKey)>-1)
				{	
					var4ProOk=true;	
				}	
				productCode = product.code;
				if(productCode.toUpperCase().indexOf(_proCodeKey)>-1)
				{	
					var4ProCodeOk=true;	
				}
			}
			//检查组织
			if(_containsSubOrg)
			{
				if(_orgKey=="")
					var4OrgOk=true;
				else
				{
					//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		begin
					/*
					organization=UtilOrganization.getOrganizationInTreeByRecursion(organization,ClientEnvironment.getOrganizationTreeRoot());
					*/
					//	主数据常驻内存，UI端主数据全部是完整树上节点，2011.01.15 by liuzhen		end
					var arr4OrganizationPath:ArrayCollection = UtilOrganization.getPathFromRoot(organization);
					for each(var _organization:BOrganization in arr4OrganizationPath)
					{
						organizationName=_organization.name;
						if(organizationName.toUpperCase().indexOf(_orgKey)>-1)
						{
							var4OrgOk=true;
							break;
						}
					}
				}
				if(_orgCodeKey=="")
				{
					var4OrgCodeOk = true;
				}
				else
				{
					var arr4OrganizationPath_:ArrayCollection = UtilOrganization.getPathFromRoot(organization);
					for each(var _organization_:BOrganization in arr4OrganizationPath_)
					{
						organizationCode=_organization_.code;
						if(organizationCode.toUpperCase().indexOf(_orgCodeKey)>-1)
						{
							var4OrgCodeOk=true;
							break;
						}
					}
				}
			}
			else 
			{
				organizationName=organization.name;
				if(organizationName.toUpperCase().indexOf(_orgKey)>-1)
				{
					var4OrgOk=true;
				}
				organizationCode=organization.code;
				if(organizationCode.toUpperCase().indexOf(_orgCodeKey)>-1)
				{
					var4OrgCodeOk=true;
				}
				
			}
			if(var4ProOk&&var4OrgOk&&var4ProCodeOk&&var4OrgCodeOk)
				return true;
			else return false;
		}
		
		public static function filterProduct(arrDetailProOrgs:ArrayCollection,conversionHM:HashMap):ArrayCollection
		{
			var detailProOrg:ABProOrg = null;
			var arr4del:ArrayCollection = new ArrayCollection();
			var i:int;
			if( arrDetailProOrgs != null && arrDetailProOrgs.length > 0 && conversionHM!=null && conversionHM.size()>0)
			{
				for ( i=0; i<arrDetailProOrgs.length; i=i+1 )
				{
					detailProOrg = ABProOrg( arrDetailProOrgs.getItemAt(i) );
					if(!conversionHM.containsKey(detailProOrg.product.id))
					{
						arr4del.addItem(detailProOrg);
					}
				}
				arrDetailProOrgs = UtilArrayCollection.removeItems(arrDetailProOrgs,arr4del);
			}
			return arrDetailProOrgs;
		}
		
		
		//获取两者之并集，采用pathcode
		public static function getUnion4arrProOrg2( _arr4ProOrg_1:ArrayCollection, _arr4ProOrg_2:ArrayCollection ):ArrayCollection
		{
			var arr4Rst:ArrayCollection = new ArrayCollection();
			
			if( _arr4ProOrg_1 == null || _arr4ProOrg_1.length <= 0 )
			{
				if( _arr4ProOrg_2 == null || _arr4ProOrg_2.length <=0 )
				{
					return arr4Rst;	
				}
				else
				{
					return _arr4ProOrg_2;
				}
			}
			else if( _arr4ProOrg_2 == null || _arr4ProOrg_2.length <= 0 )
			{
				return _arr4ProOrg_1;
			}
			
			for each(var proorg:ABProOrg in _arr4ProOrg_1)
			{
				if(!checkRelation(_arr4ProOrg_2,proorg.product.pathCode,proorg.organization.pathCode))
				{
					arr4Rst.addItem(proorg);
				}
			}
			
			arr4Rst.addAll(_arr4ProOrg_2);
			return arr4Rst;			
		}
		
		public static function checkRelation( _arr4ProOrg:ArrayCollection,  proPathCode:String, orgPathCode:String):Boolean
		{
			if(_arr4ProOrg.length<1|| proPathCode=="" || orgPathCode=="")
			{
				return false;
			}
			for each(var proorg:ABProOrg in _arr4ProOrg)
			{
				if(proPathCode.indexOf(proorg.product.pathCode)>=0)//说明proPathCode是子节点
				{
					if(orgPathCode.indexOf(proorg.organization.pathCode)>=0)//说明orgPathCode是子节点
					{
						return true;
					}
				}
			}
			
			return false;
		}
	}
}
