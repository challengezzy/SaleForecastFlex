package dmdd.dmddas.common.utils
{
	import dmdd.dmddas.dataaccess.bizobject.BBizData;
	import dmdd.dmddas.dataaccess.bizobject.BOrganization;
	import dmdd.dmddas.dataaccess.bizobject.BOrganizationCharacter;
	import dmdd.dmddas.dataaccess.bizobject.BProduct;
	import dmdd.dmddas.dataaccess.bizobject.BProductCharacter;

	public class UtilUiRowData
	{
		public function UtilUiRowData()
		{
		}
		
		public static function getDisplayName4Chart( 	_blDispProduct:Boolean, _product:BProduct, 
														_blDispProductCharacter:Boolean, _productCharacter:BProductCharacter,
														_blDispOrganization:Boolean, _organization:BOrganization, 
														_blDispOrganizationCharacter:Boolean, _organizationCharacter:BOrganizationCharacter,															   
														_blDispBizData:Boolean, _bizData:BBizData
		):String
		{
			var displayName:String = "";
			
			if( _blDispProduct == true )
			{
				if( _product != null )
				{
					displayName = displayName + "_" + _product.toString();
				}
				else
				{
					displayName = displayName + "_" + " ";
				}
			}
			if( _blDispProductCharacter == true )
			{
				if( _productCharacter != null )
				{
					displayName = displayName + "_" + _productCharacter.toString();
				}
				else
				{
					displayName = displayName + "_" + " ";
				}					
			}						
			if( _blDispOrganization == true )
			{
				if( _organization != null )
				{
					displayName = displayName + "_" + _organization.toString();
				}
				else
				{
					displayName = displayName + "_" + " ";
				}					
			}
			if( _blDispOrganizationCharacter == true )
			{
				if( _organizationCharacter != null )
				{
					displayName = displayName + "_" + _organizationCharacter.toString();
				}
				else
				{
					displayName = displayName + "_" + " ";
				}					
			}	
			
			if( _blDispBizData == true )
			{
				if( _bizData != null )
				{
					displayName = displayName + "_" + _bizData.toString();
				}
				else
				{
					displayName = displayName + "_" + " ";
				}					
			}	
			
			return displayName;		
		}			
	}
}