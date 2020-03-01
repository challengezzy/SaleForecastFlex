package dmdd.dmddas.dataaccess.aidobject
{
	import aks.aksas.collections.HashMap;
	
	import dmdd.dmddas.dataaccess.bizobject.BOrganization;
	import dmdd.dmddas.dataaccess.bizobject.BOrganizationCharacter;
	import dmdd.dmddas.dataaccess.bizobject.BProduct;
	import dmdd.dmddas.dataaccess.bizobject.BProductCharacter;
	
	import mx.collections.ArrayCollection;

	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.aidobject.ABUiRowDataProOrg")]		
	public class ABUiRowDataProOrg
	{
		public function ABUiRowDataProOrg()
		{
		}
		
		public var product:BProduct = null;
		public var productCharacter:BProductCharacter = null;
		public var organization:BOrganization = null;
		public var organizationCharacter:BOrganizationCharacter = null;
		
		/**
		 * 存放明细ProOrg的Id字符串，元素形式为 (pid,oid)，例如 (101,909)
		 * 没有直接以字符串形式存放，是考虑到万一字符串过长导致查询不支持的时候，可以分部进行
		 */ 
		public var detailProOrgIds:ArrayCollection = new ArrayCollection();
		
		public  function copy(_obj:ABUiRowDataProOrg):void
		{
			if(_obj.product!=null)
			{
				this.product = new BProduct();
				this.product.copyShallow(_obj.product);
				this.product.parentProduct=new BProduct();
			}
			if(_obj.productCharacter!=null)
			{
				this.productCharacter = new BProductCharacter();
				this.productCharacter.copyShallow(_obj.productCharacter);
				this.productCharacter.parentProductCharacter=new BProductCharacter();
			}
			if(_obj.organization!=null)
			{
				this.organization = new BOrganization();
				this.organization.copyShallow(_obj.organization);
				this.organization.parentOrganization=new BOrganization();
			}
			if(_obj.organizationCharacter!=null)
			{
				this.organizationCharacter = new BOrganizationCharacter();
				this.organizationCharacter.copyShallow(_obj.organizationCharacter);
				this.organizationCharacter.parentOrganizationCharacter=new BOrganizationCharacter();
			}
			this.detailProOrgIds = _obj.detailProOrgIds;
		}
	}
}