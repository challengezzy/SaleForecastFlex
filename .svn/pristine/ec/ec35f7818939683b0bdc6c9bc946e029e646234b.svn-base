package dmdd.dmddas.common.utils
{
	import aks.aksas.utils.UtilUi;
	
	import com.cool.collections.HashMap;
	import com.cool.utils.AlertUtil;
	
	import dmdd.dmddas.common.constant.BizConst;
	import dmdd.dmddas.common.constant.SysConst;
	import dmdd.dmddas.common.constant.UIConst;
	import dmdd.dmddas.common.system.ClientEnvironment;
	import dmdd.dmddas.common.utils.UtilChartExport;
	import dmdd.dmddas.common.utils.UtilExceptionLocale;
	import dmdd.dmddas.common.utils.UtilOrganization;
	import dmdd.dmddas.common.utils.UtilOrganizationCharacter;
	import dmdd.dmddas.common.utils.UtilPeriod;
	import dmdd.dmddas.common.utils.UtilProOrg;
	import dmdd.dmddas.common.utils.UtilProduct;
	import dmdd.dmddas.common.utils.UtilProductCharacter;
	import dmdd.dmddas.common.utils.UtilStrKey;
	import dmdd.dmddas.common.vo.UiCondVo;
	import dmdd.dmddas.dataaccess.aidobject.ABProOrg;
	import dmdd.dmddas.dataaccess.aidobject.ABUiRowData;
	import dmdd.dmddas.dataaccess.aidobject.ABUiRowDataProOrg;
	import dmdd.dmddas.dataaccess.bizobject.BOrganization;
	import dmdd.dmddas.dataaccess.bizobject.BOrganizationCharacter;
	import dmdd.dmddas.dataaccess.bizobject.BOrganizationCharacterLayer;
	import dmdd.dmddas.dataaccess.bizobject.BOrganizationLayer;
	import dmdd.dmddas.dataaccess.bizobject.BProduct;
	import dmdd.dmddas.dataaccess.bizobject.BProductCharacter;
	import dmdd.dmddas.dataaccess.bizobject.BProductCharacterLayer;
	import dmdd.dmddas.dataaccess.bizobject.BProductLayer;
	import dmdd.dmddas.dataaccess.bizobject.BUiPopbScope;
	import dmdd.dmddas.dataaccess.bizobject.BUiPopbScopeBizData;
	import dmdd.dmddas.dataaccess.bizobject.BUiPopbScopeProOrg;
	import dmdd.dmddas.dataaccess.bizobject.BUnit;
	import dmdd.dmddas.dataaccess.bizobject.BUnitGroup;
	
	import mx.collections.ArrayCollection;
	import mx.core.UIComponent;
	import mx.resources.ResourceManager;

	public class UtilUiPopbScope
	{
		public function UtilUiPopbScope()
		{
		}
		
		/** 获取快速条件中的业务数据 */
		public static function getBizDatasArrByUiScope(uiPopbScope:BUiPopbScope):ArrayCollection{
			var arrBizDatas:ArrayCollection = new ArrayCollection();
			
			var uiPopbScopeBizData:BUiPopbScopeBizData = null;
			var i:int =0;
			
			for( i=0; i<uiPopbScope.uiPopbScopeBizDatas.length; i=i+1 )
			{
				uiPopbScopeBizData = BUiPopbScopeBizData(uiPopbScope.uiPopbScopeBizDatas.getItemAt(i) );				
				arrBizDatas.addItem( uiPopbScopeBizData.bizData );
			}
			
			return arrBizDatas; 
		}
		
		/**
		 * 获取快速条件中的业务范围
		 * */
		public static function getProOrgsArrByUiScope(uiPopbScope:BUiPopbScope):ArrayCollection{
			var arrProOrgs:ArrayCollection = new ArrayCollection();	
			var i:int;
			var uiPopbScopeProOrg:BUiPopbScopeProOrg = null;
			var proOrg:ABProOrg = null;
			//1 业务范围
			for( i=0; i<uiPopbScope.uiPopbScopeProOrgs.length; i=i+1 )
			{
				uiPopbScopeProOrg = BUiPopbScopeProOrg(uiPopbScope.uiPopbScopeProOrgs.getItemAt(i) );
				
				proOrg = new ABProOrg();
				proOrg.product = uiPopbScopeProOrg.product;
				proOrg.organization = uiPopbScopeProOrg.organization;
				
				arrProOrgs.addItem( proOrg );
			}
			
			return arrProOrgs;
		}
		
		/** 将uiPopbScope 数据整理成 UiCondVo形式,便于使用*/
		public static function getUiScopeCondVo(uiPopbScope:BUiPopbScope,parentComp:UIComponent):UiCondVo{
			
			//返回数据 begin
			var condVo:UiCondVo = new UiCondVo;
			var unitGroup:BUnitGroup = null; //单位组
			var unit:BUnit = null;	
			
			//返回数据 end
			var alert_msg:String = null;
			var i:int;
			var uiPopbScopeProOrg:BUiPopbScopeProOrg = null;
			var uiPopbScopeBizData:BUiPopbScopeBizData = null;
			var proOrg:ABProOrg = null;
			
			//	业务范围、业务数据、显示控制、期间控制在保存的时候确保了正确性，直接取值 	begin
			var arrProOrgs:ArrayCollection = new ArrayCollection();			
			if( uiPopbScope == null || uiPopbScope.uiPopbScopeProOrgs == null || uiPopbScope.uiPopbScopeProOrgs.length<1
				|| uiPopbScope.uiPopbScopeBizDatas == null || uiPopbScope.uiPopbScopeBizDatas.length < 1){
				condVo.setInvalid("业务数据范围为空！");
				return condVo;
			}
			
			//1 业务范围
			for( i=0; i<uiPopbScope.uiPopbScopeProOrgs.length; i=i+1 )
			{
				uiPopbScopeProOrg = BUiPopbScopeProOrg(uiPopbScope.uiPopbScopeProOrgs.getItemAt(i) );
				
				proOrg = new ABProOrg();
				proOrg.product = uiPopbScopeProOrg.product;
				proOrg.organization = uiPopbScopeProOrg.organization;
				
				arrProOrgs.addItem( proOrg );
			}
			
			//2, 业务数据
			var arrBizDatas:ArrayCollection = new ArrayCollection();
			for( i=0; i<uiPopbScope.uiPopbScopeBizDatas.length; i=i+1 )
			{
				uiPopbScopeBizData = BUiPopbScopeBizData(uiPopbScope.uiPopbScopeBizDatas.getItemAt(i) );				
				arrBizDatas.addItem( uiPopbScopeBizData.bizData );
			}				
			
			var periodBegin:int = UtilPeriod.getPeriod( ClientEnvironment.getSysPeriod().compilePeriod, uiPopbScope.periodOffsetBegin );
			var periodEnd:int = UtilPeriod.getPeriod( ClientEnvironment.getSysPeriod().compilePeriod, uiPopbScope.periodOffsetEnd );
			
			//求解范围覆盖的明细范围并投影到显示层次		begin 				
			var arrDetailProOrgs:ArrayCollection = UtilProOrg.getDetailProOrgs( arrProOrgs, true );
			
			var arrUiRowDataProOrgs:ArrayCollection = new ArrayCollection();
			var projectProduct:BProduct = null;
			var projectProductCharacter:BProductCharacter = null;			
			var projectOrganization:BOrganization = null;
			var projectOrganizationCharacter:BOrganizationCharacter = null;
			
			var strKey4Product:String = "";
			var strKey4Organization:String = "";
			
			var hmap_detailProduct_projectProduct:HashMap = new HashMap(); // 明细产品到投影产品的映射 
			var hmap_detailProduct_projectProductCharacter:HashMap = new HashMap(); // 明细产品到投影产品的映射				
			var hmap_detailOrganization_projectOrganization:HashMap = new HashMap(); // 明细组织到投影组织的映射 
			var hmap_detailOrganization_projectOrganizationCharacter:HashMap = new HashMap(); // 明细组织到投影组织的映射
			
			var detailProOrg:ABProOrg = null;
			var detailProductCharacter:BProductCharacter = null;
			var detailOrganizationCharacter:BOrganizationCharacter;
			
			/** 映射后的proorg map */
			var hmap_uiRowDataProOrgs:HashMap = new HashMap();
			var strKey4uiRowDataProOrg:String = null;
			var uiRowDataProOrg:ABUiRowDataProOrg = null;
			
			/** 映射后的proorg的Key 对应的明细proorg map */
			var hmap_uiRowData_detailProOrgs:HashMap = new HashMap();
			var arr4ProOrg:ArrayCollection = null;
			
			var baseUnit:BUnit = null;
			var nonBaseUnit:BUnit = null; //非基准单位
			var num4NonBaseUnit:int = 0;		
			
			if( arrDetailProOrgs != null && arrDetailProOrgs.length > 0 )
			{
				for( i=0; i<arrDetailProOrgs.length; i=i+1 )
				{
					detailProOrg = ABProOrg( arrDetailProOrgs.getItemAt(i) );
					
					//	单位组	begin
					if( detailProOrg.product.unitGroup == null )
					{
						alert_msg = ResourceManager.getInstance().getString('alert','alter_msg_unitgroupisnull');
						condVo.setInvalid(alert_msg);
						return condVo;							
					}
					if( unitGroup == null )
					{
						unitGroup = detailProOrg.product.unitGroup;
						baseUnit = unitGroup.getBaseUnit();
					}
					else if( detailProOrg.product.unitGroup.id != unitGroup.id )
					{
						alert_msg = ResourceManager.getInstance().getString('alert','alter_msg_multiunitgroup');
						condVo.setInvalid(alert_msg);
						return condVo;									
					}
					if( detailProOrg.product.unit.isBase == BizConst.GLOBAL_YESNO_NO )
					{
						if( nonBaseUnit == null ){
							nonBaseUnit = detailProOrg.product.unit; //产品中的unit下unitGroup 可能会为空
							nonBaseUnit.unitGroup = detailProOrg.product.unitGroup;
							num4NonBaseUnit = 1;								
						}else{
							if( detailProOrg.product.unit.id != nonBaseUnit.id )
							{
								num4NonBaseUnit = 2;	//	just means multiple									
							}
						}
					}
					//	单位组	end
					
					//	计算投影		begin
					strKey4Product = "" + detailProOrg.product.id;
					strKey4Organization = "" + detailProOrg.organization.id;
					var layerValue:Number;
					
					if( uiPopbScope.isShowProduct == BizConst.GLOBAL_YESNO_YES )
					{
						projectProduct = BProduct( hmap_detailProduct_projectProduct.getValue(strKey4Product) );
						if( projectProduct == null )
						{
							//因为uiPopbScope从不同途径获取，productLayer对象可能为空，其它的layer对象类似
							if(uiPopbScope.productLayer != null){
								condVo.productLayer = uiPopbScope.productLayer;
								layerValue = uiPopbScope.productLayer.value;
							}else{
								condVo.productLayer = UtilLayer.getProductLayerById(uiPopbScope.productLayerId);
								layerValue = condVo.productLayer.value;
							}
							
							projectProduct = UtilProduct.getProjectProductByLayer( detailProOrg.product, layerValue  );
							if( projectProduct == null  )
							{
								// should not happen
								continue;
							}							
							hmap_detailProduct_projectProduct.put( strKey4Product, projectProduct ); 
						}
					}else{
						// 不需要显示product
						projectProduct = null;
					}
					
					if( uiPopbScope.isShowProductCharacter == BizConst.GLOBAL_YESNO_YES )
					{
						projectProductCharacter = BProductCharacter( hmap_detailProduct_projectProductCharacter.getValue( strKey4Product ) );
						if( projectProductCharacter == null )
						{
							detailProductCharacter = UtilProductCharacter.getDetailProductCharacter( detailProOrg.product, uiPopbScope.productCharacterType );
							if( detailProductCharacter != null )
							{
								if(uiPopbScope.productCharacterLayer != null){
									condVo.productCharacterLayer = uiPopbScope.productCharacterLayer;
									layerValue = uiPopbScope.productCharacterLayer.value;
								}else{
									condVo.productCharacterLayer = UtilLayer.getProductCharacterLayerById(uiPopbScope.productCharacterLayerId);
									layerValue = condVo.productCharacterLayer.value;
								}
								
								projectProductCharacter = UtilProductCharacter.getProjectProductCharacterByLayer( detailProductCharacter,layerValue );
								if( projectProductCharacter == null )
								{
									// should not happen
									continue;	
								}
								hmap_detailProduct_projectProductCharacter.put( strKey4Product, projectProductCharacter );
							}
							else
							{
								// 明细产品没有被指定该类型的特征，投影到一个特殊的产品特征上
								projectProductCharacter = null;
							}
						}
					}else{
						// 不需要显示productCharacter
						projectProductCharacter = null;
					}					
					
					if( uiPopbScope.isShowOrganization == BizConst.GLOBAL_YESNO_YES )
					{
						projectOrganization = BOrganization( hmap_detailOrganization_projectOrganization.getValue(strKey4Organization) );
						if( projectOrganization == null )
						{
							if(uiPopbScope.organizationLayer != null){
								condVo.organizationLayer = uiPopbScope.organizationLayer;
								layerValue = uiPopbScope.organizationLayer.value;
							}else{
								condVo.organizationLayer = UtilLayer.getOrganizationLayerById(uiPopbScope.organizationLayerId);
								layerValue = condVo.organizationLayer.value;
							}
							
							projectOrganization = UtilOrganization.getProjectOrganizationByLayer( detailProOrg.organization, layerValue);
							if( projectOrganization == null )
							{
								// should not happen
								continue;
							}							
							hmap_detailOrganization_projectOrganization.put( strKey4Organization, projectOrganization ); 
						}
					}else{
						// 不需要显示organization
						projectOrganization = null;
					}
					
					if( uiPopbScope.isShowOrganizationCharacter == BizConst.GLOBAL_YESNO_YES )
					{
						projectOrganizationCharacter = BOrganizationCharacter( hmap_detailOrganization_projectOrganizationCharacter.getValue( strKey4Organization ) );
						if( projectOrganizationCharacter == null )
						{
							detailOrganizationCharacter = UtilOrganizationCharacter.getDetailOrganizationCharacter( detailProOrg.organization, uiPopbScope.organizationCharacterType );
							if( detailOrganizationCharacter != null )
							{
								if(uiPopbScope.organizationCharacterLayer != null){
									condVo.organizationCharacterLayer = uiPopbScope.organizationCharacterLayer; 
									layerValue = uiPopbScope.organizationCharacterLayer.value;
								}else{
									condVo.organizationCharacterLayer = UtilLayer.getOrganizationCharacterLayerById(uiPopbScope.organizationCharacterLayerId);
									layerValue = condVo.organizationCharacterLayer.value;
								}
								projectOrganizationCharacter = UtilOrganizationCharacter.getProjectOrganizationCharacterByLayer( detailOrganizationCharacter, layerValue);
								if( projectOrganizationCharacter == null )
								{
									// should not happen
									continue;	
								}
								hmap_detailOrganization_projectOrganizationCharacter.put( strKey4Organization, projectOrganizationCharacter );
							}else{
								// 明细组织没有被指定该类型的特征，投影到一个特殊的组织特征上
								projectOrganizationCharacter = null;
							}
						}
					}else{
						// 不需要显示organizationCharacter
						projectOrganizationCharacter = null;
					}
					//	计算投影	end						
					
					strKey4uiRowDataProOrg = UtilStrKey.getStrKey4PPcOOcB( projectProduct, projectProductCharacter, projectOrganization, projectOrganizationCharacter, null );
					uiRowDataProOrg = ABUiRowDataProOrg( hmap_uiRowDataProOrgs.getValue( strKey4uiRowDataProOrg ) );
					if( uiRowDataProOrg == null )
					{
						uiRowDataProOrg = new ABUiRowDataProOrg();
						uiRowDataProOrg.product = projectProduct;
						uiRowDataProOrg.productCharacter = projectProductCharacter;
						uiRowDataProOrg.organization = projectOrganization;
						uiRowDataProOrg.organizationCharacter = projectOrganizationCharacter;
						uiRowDataProOrg.detailProOrgIds = new ArrayCollection();
					}
					
					uiRowDataProOrg.detailProOrgIds.addItem( UtilProOrg.getProOrgId( detailProOrg.product, detailProOrg.organization ) );
					
					hmap_uiRowDataProOrgs.put( strKey4uiRowDataProOrg , uiRowDataProOrg );
					
					//记录映射后对proorgkey与原明细proorg的对应关系
					arr4ProOrg = ArrayCollection(hmap_uiRowData_detailProOrgs.getValue(strKey4uiRowDataProOrg));
					if(arr4ProOrg == null|| arr4ProOrg.length==0)
					{
						arr4ProOrg = new ArrayCollection();
						arr4ProOrg.addItem(detailProOrg);
					}
					else
					{
						arr4ProOrg.addItem(detailProOrg);
					}
					hmap_uiRowData_detailProOrgs.put(strKey4uiRowDataProOrg,arr4ProOrg);
				}
			}
			if( num4NonBaseUnit == 1 )
			{
				unit = nonBaseUnit;
			}else{
				unit = baseUnit;
			}
			
			arrUiRowDataProOrgs = hmap_uiRowDataProOrgs.getValues();
			//求解范围覆盖的明细范围并投影到显示层次end
			
			condVo.arrProOrgs = arrProOrgs;
			condVo.arrBizDatas = arrBizDatas;
			condVo.arrUiRowDataProOrgs = arrUiRowDataProOrgs;
			condVo.hmap_uiRowData_detailProOrgs = hmap_uiRowData_detailProOrgs;
			condVo.periodBegin = periodBegin;
			condVo.periodEnd = periodEnd;
			condVo.unitGroup = unitGroup;
			condVo.unit = unit;
			
			condVo.isShowProduct = uiPopbScope.isShowProduct==BizConst.GLOBAL_YESNO_YES ?true:false;
			condVo.isShowProductCharacter = uiPopbScope.isShowProductCharacter==BizConst.GLOBAL_YESNO_YES ?true:false;
			condVo.isShowOrganization = uiPopbScope.isShowOrganization==BizConst.GLOBAL_YESNO_YES ?true:false;
			condVo.isShowOrganizationCharacter = uiPopbScope.isShowOrganizationCharacter==BizConst.GLOBAL_YESNO_YES ?true:false;
			
			//计算查询条件	end
			
			return condVo;
		}
		//方法结束 getUiScopeCondVo
		
		/** 将UiRowData中的proorg数据，按照uipopbscope中的显示设置进行映射， 数据整理成 UiCondVo形式,便于使用*/
		public static function getUiRowDataCondVo(uiPopbScope:BUiPopbScope,uiRowData:ABUiRowData,parentComp:UIComponent):UiCondVo{
			
			//返回数据 begin
			var condVo:UiCondVo = new UiCondVo;
			var unitGroup:BUnitGroup = null; //单位组
			var unit:BUnit = null;	
			
			//返回数据 end
			var alert_msg:String = null;
			var i:int;
			var uiPopbScopeProOrg:BUiPopbScopeProOrg = null;
			var uiPopbScopeBizData:BUiPopbScopeBizData = null;
			
			//	业务范围、业务数据、显示控制、期间控制在保存的时候确保了正确性，直接取值 	begin
			
			var arrProOrgs:ArrayCollection = UtilProOrg.getDetailProOrgsByIds(uiRowData.detailProOrgIds,true);	
			if( uiPopbScope == null || uiPopbScope.uiPopbScopeProOrgs == null){
				condVo.setInvalid("业务数据范围为空！");
				return condVo;
			}
			
			
			//2, 业务数据
			var arrBizDatas:ArrayCollection = new ArrayCollection();
			arrBizDatas.addItem(uiRowData.bizData);	
			
			var periodBegin:int = UtilPeriod.getPeriod( ClientEnvironment.getSysPeriod().compilePeriod, uiPopbScope.periodOffsetBegin );
			var periodEnd:int = UtilPeriod.getPeriod( ClientEnvironment.getSysPeriod().compilePeriod, uiPopbScope.periodOffsetEnd );
			
			//求解范围覆盖的明细范围并投影到显示层次		begin 				
			var arrDetailProOrgs:ArrayCollection = UtilProOrg.getDetailProOrgs( arrProOrgs, true );
			
			var arrUiRowDataProOrgs:ArrayCollection = new ArrayCollection();
			var projectProduct:BProduct = null;
			var projectProductCharacter:BProductCharacter = null;			
			var projectOrganization:BOrganization = null;
			var projectOrganizationCharacter:BOrganizationCharacter = null;
			
			var strKey4Product:String = "";
			var strKey4Organization:String = "";
			
			var hmap_detailProduct_projectProduct:HashMap = new HashMap(); // 明细产品到投影产品的映射 
			var hmap_detailProduct_projectProductCharacter:HashMap = new HashMap(); // 明细产品到投影产品的映射				
			var hmap_detailOrganization_projectOrganization:HashMap = new HashMap(); // 明细组织到投影组织的映射 
			var hmap_detailOrganization_projectOrganizationCharacter:HashMap = new HashMap(); // 明细组织到投影组织的映射
			
			var detailProOrg:ABProOrg = null;
			var detailProductCharacter:BProductCharacter = null;
			var detailOrganizationCharacter:BOrganizationCharacter;
			
			/** 映射后的proorg map */
			var hmap_uiRowDataProOrgs:HashMap = new HashMap();
			var strKey4uiRowDataProOrg:String = null;
			var uiRowDataProOrg:ABUiRowDataProOrg = null;
			
			/** 映射后的proorg的Key 对应的明细proorg map */
			var hmap_uiRowData_detailProOrgs:HashMap = new HashMap();
			var arr4ProOrg:ArrayCollection = null;
			
			var baseUnit:BUnit = null;
			var nonBaseUnit:BUnit = null; //非基准单位
			var num4NonBaseUnit:int = 0;				
			
			if( arrDetailProOrgs != null && arrDetailProOrgs.length > 0 )
			{
				for( i=0; i<arrDetailProOrgs.length; i=i+1 )
				{
					detailProOrg = ABProOrg( arrDetailProOrgs.getItemAt(i) );
					
					//	单位组	begin
					if( detailProOrg.product.unitGroup == null )
					{
						alert_msg = ResourceManager.getInstance().getString('mod_homepage','alter_msg_unitgroupisnull');
						condVo.setInvalid(alert_msg);
						return condVo;							
					}
					if( unitGroup == null )
					{
						unitGroup = detailProOrg.product.unitGroup;
						baseUnit = unitGroup.getBaseUnit();
					}
					else if( detailProOrg.product.unitGroup.id != unitGroup.id )
					{
						alert_msg = ResourceManager.getInstance().getString('mod_homepage','alter_msg_multiunitgroup');
						condVo.setInvalid(alert_msg);
						return condVo;									
					}
					if( detailProOrg.product.unit.isBase == BizConst.GLOBAL_YESNO_NO )
					{
						if( nonBaseUnit == null ){
							nonBaseUnit = detailProOrg.product.unit; //产品中的unit下unitGroup 可能会为空
							nonBaseUnit.unitGroup = detailProOrg.product.unitGroup;
							num4NonBaseUnit = 1;								
						}else{
							if( detailProOrg.product.unit.id != nonBaseUnit.id )
							{
								num4NonBaseUnit = 2;	//	just means multiple									
							}
						}
					}
					//	单位组	end
					
					//	计算投影		begin
					strKey4Product = "" + detailProOrg.product.id;
					strKey4Organization = "" + detailProOrg.organization.id;
					var layerValue:Number;
					
					if( uiPopbScope.isShowProduct == BizConst.GLOBAL_YESNO_YES )
					{
						projectProduct = BProduct( hmap_detailProduct_projectProduct.getValue(strKey4Product) );
						if( projectProduct == null )
						{
							//因为uiPopbScope从不同途径获取，productLayer对象可能为空，其它的layer对象类似
							if(uiPopbScope.productLayer != null){
								layerValue = uiPopbScope.productLayer.value;
							}else{
								layerValue = UtilLayer.getProductLayerValueById(uiPopbScope.productLayerId);
							}
							
							projectProduct = UtilProduct.getProjectProductByLayer( detailProOrg.product, layerValue  );
							if( projectProduct == null  )
							{
								// should not happen
								continue;
							}							
							hmap_detailProduct_projectProduct.put( strKey4Product, projectProduct ); 
						}
					}else{
						// 不需要显示product
						projectProduct = null;
					}
					
					if( uiPopbScope.isShowProductCharacter == BizConst.GLOBAL_YESNO_YES )
					{
						projectProductCharacter = BProductCharacter( hmap_detailProduct_projectProductCharacter.getValue( strKey4Product ) );
						if( projectProductCharacter == null )
						{
							detailProductCharacter = UtilProductCharacter.getDetailProductCharacter( detailProOrg.product, uiPopbScope.productCharacterType );
							if( detailProductCharacter != null )
							{
								if(uiPopbScope.productCharacterLayer != null){
									layerValue = uiPopbScope.productCharacterLayer.value;
								}else{
									layerValue = UtilLayer.getProductCharacterLayerValueById(uiPopbScope.productCharacterLayerId);
								}
								
								projectProductCharacter = UtilProductCharacter.getProjectProductCharacterByLayer( detailProductCharacter,layerValue );
								if( projectProductCharacter == null )
								{
									// should not happen
									continue;	
								}
								hmap_detailProduct_projectProductCharacter.put( strKey4Product, projectProductCharacter );
							}
							else
							{
								// 明细产品没有被指定该类型的特征，投影到一个特殊的产品特征上
								projectProductCharacter = null;
							}
						}
					}else{
						// 不需要显示productCharacter
						projectProductCharacter = null;
					}					
					
					if( uiPopbScope.isShowOrganization == BizConst.GLOBAL_YESNO_YES )
					{
						projectOrganization = BOrganization( hmap_detailOrganization_projectOrganization.getValue(strKey4Organization) );
						if( projectOrganization == null )
						{
							if(uiPopbScope.organizationLayer != null){
								layerValue = uiPopbScope.organizationLayer.value;
							}else{
								layerValue = UtilLayer.getOrganizationLayerValueById(uiPopbScope.organizationLayerId);
							}
							
							projectOrganization = UtilOrganization.getProjectOrganizationByLayer( detailProOrg.organization, layerValue);
							if( projectOrganization == null )
							{
								// should not happen
								continue;
							}							
							hmap_detailOrganization_projectOrganization.put( strKey4Organization, projectOrganization ); 
						}
					}else{
						// 不需要显示organization
						projectOrganization = null;
					}
					
					if( uiPopbScope.isShowOrganizationCharacter == BizConst.GLOBAL_YESNO_YES )
					{
						projectOrganizationCharacter = BOrganizationCharacter( hmap_detailOrganization_projectOrganizationCharacter.getValue( strKey4Organization ) );
						if( projectOrganizationCharacter == null )
						{
							detailOrganizationCharacter = UtilOrganizationCharacter.getDetailOrganizationCharacter( detailProOrg.organization, uiPopbScope.organizationCharacterType );
							if( detailOrganizationCharacter != null )
							{
								if(uiPopbScope.organizationCharacterLayer != null){
									layerValue = uiPopbScope.organizationCharacterLayer.value;
								}else{
									layerValue = UtilLayer.getOrgCharacterLayerValueById(uiPopbScope.organizationCharacterLayerId);
								}
								projectOrganizationCharacter = UtilOrganizationCharacter.getProjectOrganizationCharacterByLayer( detailOrganizationCharacter, layerValue);
								if( projectOrganizationCharacter == null )
								{
									// should not happen
									continue;	
								}
								hmap_detailOrganization_projectOrganizationCharacter.put( strKey4Organization, projectOrganizationCharacter );
							}else{
								// 明细组织没有被指定该类型的特征，投影到一个特殊的组织特征上
								projectOrganizationCharacter = null;
							}
						}
					}else{
						// 不需要显示organizationCharacter
						projectOrganizationCharacter = null;
					}
					//	计算投影	end						
					
					strKey4uiRowDataProOrg = UtilStrKey.getStrKey4PPcOOcB( projectProduct, projectProductCharacter, projectOrganization, projectOrganizationCharacter, null );
					uiRowDataProOrg = ABUiRowDataProOrg( hmap_uiRowDataProOrgs.getValue( strKey4uiRowDataProOrg ) );
					if( uiRowDataProOrg == null )
					{
						uiRowDataProOrg = new ABUiRowDataProOrg();
						uiRowDataProOrg.product = projectProduct;
						uiRowDataProOrg.productCharacter = projectProductCharacter;
						uiRowDataProOrg.organization = projectOrganization;
						uiRowDataProOrg.organizationCharacter = projectOrganizationCharacter;
						uiRowDataProOrg.detailProOrgIds = new ArrayCollection();
					}
					
					uiRowDataProOrg.detailProOrgIds.addItem( UtilProOrg.getProOrgId( detailProOrg.product, detailProOrg.organization ) );
					hmap_uiRowDataProOrgs.put( strKey4uiRowDataProOrg , uiRowDataProOrg );
					
					//记录映射后对proorgkey与原明细proorg的对应关系
					arr4ProOrg = ArrayCollection(hmap_uiRowData_detailProOrgs.getValue(strKey4uiRowDataProOrg));
					if(arr4ProOrg == null|| arr4ProOrg.length==0)
					{
						arr4ProOrg = new ArrayCollection();
						arr4ProOrg.addItem(detailProOrg);
					}
					else
					{
						arr4ProOrg.addItem(detailProOrg);
					}
					hmap_uiRowData_detailProOrgs.put(strKey4uiRowDataProOrg,arr4ProOrg);
					
				}
			}
			if( num4NonBaseUnit == 1 )
			{
				unit = nonBaseUnit;
			}else{
				unit = baseUnit;
			}
			
			arrUiRowDataProOrgs = hmap_uiRowDataProOrgs.getValues();
			//求解范围覆盖的明细范围并投影到显示层次end
			
			condVo.arrBizDatas = arrBizDatas;
			condVo.arrUiRowDataProOrgs = arrUiRowDataProOrgs;
			condVo.hmap_uiRowData_detailProOrgs = hmap_uiRowData_detailProOrgs;
			
			condVo.periodBegin = periodBegin;
			condVo.periodEnd = periodEnd;
			condVo.unitGroup = unitGroup;
			condVo.unit = unit;
			
			condVo.isShowProduct = uiPopbScope.isShowProduct==BizConst.GLOBAL_YESNO_YES ?true:false;
			condVo.isShowProductCharacter = uiPopbScope.isShowProductCharacter==BizConst.GLOBAL_YESNO_YES ?true:false;
			condVo.isShowOrganization = uiPopbScope.isShowOrganization==BizConst.GLOBAL_YESNO_YES ?true:false;
			condVo.isShowOrganizationCharacter = uiPopbScope.isShowOrganizationCharacter==BizConst.GLOBAL_YESNO_YES ?true:false;
			
			//计算查询条件	end
			
			return condVo;
		}
		//方法结束 getUiRowDataCondVo
		
	}
}