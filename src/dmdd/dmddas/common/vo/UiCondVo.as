package dmdd.dmddas.common.vo
{
	import com.cool.collections.HashMap;
	
	import dmdd.dmddas.common.utils.UtilOrganizationCharacter;
	import dmdd.dmddas.common.utils.UtilProOrg;
	import dmdd.dmddas.common.utils.UtilProductCharacter;
	import dmdd.dmddas.dataaccess.aidobject.ABProOrg;
	import dmdd.dmddas.dataaccess.aidobject.ABUiRowDataProOrg;
	import dmdd.dmddas.dataaccess.bizobject.BOrganization;
	import dmdd.dmddas.dataaccess.bizobject.BOrganizationCharacter;
	import dmdd.dmddas.dataaccess.bizobject.BOrganizationCharacterLayer;
	import dmdd.dmddas.dataaccess.bizobject.BOrganizationLayer;
	import dmdd.dmddas.dataaccess.bizobject.BProduct;
	import dmdd.dmddas.dataaccess.bizobject.BProductCharacter;
	import dmdd.dmddas.dataaccess.bizobject.BProductCharacterLayer;
	import dmdd.dmddas.dataaccess.bizobject.BProductLayer;
	import dmdd.dmddas.dataaccess.bizobject.BUnit;
	import dmdd.dmddas.dataaccess.bizobject.BUnitGroup;
	
	import mx.collections.ArrayCollection;

	/** 查询条件解析后的对象 */
	[Bindable]
	public class UiCondVo
	{	
		public var isValid:Boolean = true;
		public var inValidStr:String = ""; //不合法条件的原因
		
		public var unitGroup:BUnitGroup = null; //单位组
		public var unit:BUnit = null;
		
		public var periodBegin:int; //开始期间
		public var periodEnd:int; //结束期间
		
		public var isDisplayControl:Boolean = false;
		
		//产品显示选项
		public var isShowProduct:Boolean = false;
		public var isShowProductCharacter:Boolean = false;
		public var productLayer:BProductLayer = null;			
		public var productCharacterLayer:BProductCharacterLayer = null;
		public var productCharacterType:String = null;
		
		//组织显示选项
		public var isShowOrganization:Boolean = false;
		public var isShowOrganizationCharacter:Boolean = false;
		public var organizationLayer:BOrganizationLayer = null;			
		public var organizationCharacterType:String = null;
		public var organizationCharacterLayer:BOrganizationCharacterLayer = null;
		
		/** 映射后的proorg的Key 对应的明细proorg map */
		public var hmap_uiRowData_detailProOrgs:HashMap = null;
		
		/** ABUiRowDataProOrg 数组 */
		public var arrUiRowDataProOrgs:ArrayCollection = new ArrayCollection();
		
		/** BBizData */
		public var arrBizDatas:ArrayCollection = new ArrayCollection();
		
		/** ABProOrg */
		public var arrProOrgs:ArrayCollection = new ArrayCollection();
		
		/** 条件不合法 */
		public function setInvalid(reasonStr:String):void{
			isValid = false;
			inValidStr = reasonStr;
		}
		
		/**
		 * 根据当前的产品、组织显示条件，获取uirowdata .
		 * */
		public function getUiRowDataProOrgs(paramProOrgs:ArrayCollection):ArrayCollection{				
			var projectProduct:BProduct = null;
			var projectProductCharacter:BProductCharacter = null;			
			var projectOrganization:BOrganization = null;
			var projectOrganizationCharacter:BOrganizationCharacter = null;
			
			var i:int;
			var detailProOrg:ABProOrg = null;
			
			var uiRowDataProOrg:ABUiRowDataProOrg = null;
			var paramOut4DetailUiRowDatas:ArrayCollection = new ArrayCollection();
			
			if( paramProOrgs != null && paramProOrgs.length > 0 )
			{
				for( i=0; i<paramProOrgs.length; i=i+1 )
				{
					detailProOrg = ABProOrg( paramProOrgs.getItemAt(i) );
					//	计算投影		begin			
					projectProduct =detailProOrg.product;
					
					if( this.isShowProductCharacter == true )
					{		
						projectProductCharacter = UtilProductCharacter.getDetailProductCharacter( detailProOrg.product, productCharacterType );								
					}
					else
					{
						// 不需要显示productCharacter
						projectProductCharacter = null;
					}					
					
					if( this.isShowOrganization == true )
					{
						projectOrganization = detailProOrg.organization;
					}
					else
					{
						// 不需要显示organization
						projectOrganization = null;
					}
					
					if( this.isShowOrganizationCharacter == true )
					{
						projectOrganizationCharacter = UtilOrganizationCharacter.getDetailOrganizationCharacter( detailProOrg.organization, organizationCharacterType );								
					}
					else
					{
						// 不需要显示organizationCharacter
						projectOrganizationCharacter = null;
					}
					//	计算投影		end			
					
					uiRowDataProOrg = new ABUiRowDataProOrg();
					uiRowDataProOrg.product = projectProduct;
					uiRowDataProOrg.productCharacter = projectProductCharacter;
					uiRowDataProOrg.organization = projectOrganization;
					uiRowDataProOrg.organizationCharacter = projectOrganizationCharacter;
					uiRowDataProOrg.detailProOrgIds = new ArrayCollection();
					uiRowDataProOrg.detailProOrgIds.addItem( UtilProOrg.getProOrgId( detailProOrg.product, detailProOrg.organization ) );
					paramOut4DetailUiRowDatas.addItem(uiRowDataProOrg);
				}
			}
			
			return paramOut4DetailUiRowDatas;
		}

	}
}
