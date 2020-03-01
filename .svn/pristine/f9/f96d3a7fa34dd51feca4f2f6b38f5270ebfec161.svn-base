package dmdd.dmddas.dataaccess.bizobject
{

	import dmdd.dmddas.common.constant.SysConst;
	import dmdd.dmddas.common.system.ClientEnvironment;
	
	import mx.collections.ArrayCollection;
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BOrganization")]
		
	public class BOrganization
	{
		public function BOrganization()
		{
			//TODO: implement function
		}
		
		public var version:Number;
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var code:String = "";
		public var name:String = "";
		public var isCatalog:Number;
		public var isValid:Number;		
		public var description:String = "";
		public var comments:String = "";
		public var organizationLayer:BOrganizationLayer = null;
		public var parentOrganization:BOrganization = null;
		public var subOrganizations:ArrayCollection = null;
		public var organizationOrgCharacters:ArrayCollection = null;
		public var pathCode:String ="";
		public var dcId:Number;
		public var organizationLayerId:Number;
		
		public function toString():String
		{
			return this.name;
		}
		
		public function getDcName():String{
			if(dcId == 0 || dcId == -1)
				return null
			else{
				var dc:BDistributionCenter = ClientEnvironment.dcMap.getValue(dcId);
				
				if(dc == null )
					return null;
				else
					return dc.name;
			}
		}
		
		public function copyShallow( _obj:BOrganization ):void
		{
			this.version = _obj.version;
			this.id = _obj.id;
			this.code = _obj.code;
			this.name = _obj.name;
			this.isCatalog = _obj.isCatalog;
			this.isValid = _obj.isValid;
			this.description = _obj.description;
			this.comments = _obj.comments;
			this.pathCode = _obj.pathCode;
			this.dcId = _obj.dcId;
			
			this.parentOrganization = _obj.parentOrganization;
			this.organizationLayer = _obj.organizationLayer;	
			this.organizationLayerId=_obj. organizationLayerId;
		}
		
		// copyDeep 在编辑Organization的时候使用，所以要拷贝各引用属性和附属集合(organizationOrgCharacters)，
		// 但附属集合中subOrganizations不处理
		public function copyDeep( _obj:BOrganization ):void
		{
			this.copyShallow( _obj );

			// organizationOrgCharacters	
			var j:int;
			this.organizationOrgCharacters = new ArrayCollection();
			if( _obj.organizationOrgCharacters != null )
			{
				for(j=0; j<_obj.organizationOrgCharacters.length; j=j+1)
				{
					var originOrganizationOrgCharacter:BOrganizationOrgCharacter = BOrganizationOrgCharacter(_obj.organizationOrgCharacters.getItemAt(j));
					var organizationOrgCharacter:BOrganizationOrgCharacter = new BOrganizationOrgCharacter();

					organizationOrgCharacter.version = originOrganizationOrgCharacter.version;
					organizationOrgCharacter.id = originOrganizationOrgCharacter.id;
					organizationOrgCharacter.organizationCharacter = originOrganizationOrgCharacter.organizationCharacter;
					organizationOrgCharacter.organization = this;
					
					this.organizationOrgCharacters.addItem( organizationOrgCharacter );
				}				
			}			
		}
			
	}
}