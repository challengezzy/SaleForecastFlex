package dmdd.dmddas.common.utils
{
	import dmdd.dmddas.dataaccess.bizobject.BBizData;
	import dmdd.dmddas.dataaccess.bizobject.BOrganization;
	import dmdd.dmddas.dataaccess.bizobject.BOrganizationCharacter;
	import dmdd.dmddas.dataaccess.bizobject.BProduct;
	import dmdd.dmddas.dataaccess.bizobject.BProductCharacter;

	public class UtilStrKey
	{
		public function UtilStrKey()
		{
		}
		
		public static function getStrKey4PPcOOc( _product:BProduct, _productCharacter:BProductCharacter, 
												 _organization:BOrganization, _organizationCharacter:BOrganizationCharacter ):String
		{
			
			var strKey:String = "";
			if( _product != null )
			{
				strKey = strKey + "_" + _product.id;
			}
			else
			{
				strKey = strKey + "_" + "-1";
			}
			
			if( _productCharacter != null )
			{
				strKey = strKey + "_" + _productCharacter.id;
			}
			else
			{
				strKey = strKey + "_" + "-1";
			}
			
			if( _organization != null )
			{
				strKey = strKey + "_" + _organization.id;
			}
			else
			{
				strKey = strKey + "_" + "-1";
			}
			
			if( _organizationCharacter != null )
			{
				strKey = strKey + "_" + _organizationCharacter.id;
			}
			else
			{
				strKey = strKey + "_" + "-1";
			}
			
			return strKey;											
		}		
		
		public static function getStrKey4PPcOOcB( _product:BProduct, _productCharacter:BProductCharacter, 
													_organization:BOrganization, _organizationCharacter:BOrganizationCharacter,
													_bizData:BBizData	):String
		{
			
			var strKey:String = "";
			if( _product != null )
			{
				strKey = strKey + "_" + _product.id;
			}
			else
			{
				strKey = strKey + "_" + "-1";
			}
			
			if( _productCharacter != null )
			{
				strKey = strKey + "_" + _productCharacter.id;
			}
			else
			{
				strKey = strKey + "_" + "-1";
			}
			
			if( _organization != null )
			{
				strKey = strKey + "_" + _organization.id;
			}
			else
			{
				strKey = strKey + "_" + "-1";
			}
			
			if( _organizationCharacter != null )
			{
				strKey = strKey + "_" + _organizationCharacter.id;
			}
			else
			{
				strKey = strKey + "_" + "-1";
			}
			
			if( _bizData != null )
			{
				strKey = strKey + "_" + _bizData.id;
			}
			else
			{
				strKey = strKey + "_" + "-1";
			}
			
			return strKey;											
		}
		
		public static function getStrKey4PPcOOcPB( _product:BProduct, _productCharacter:BProductCharacter, 
												  _organization:BOrganization, _organizationCharacter:BOrganizationCharacter,
												  _period:int,
												  _bizData:BBizData	):String
		{
			
			var strKey:String = "";
			if( _product != null )
			{
				strKey = strKey + "_" + _product.id;
			}
			else
			{
				strKey = strKey + "_" + "-1";
			}
			
			if( _productCharacter != null )
			{
				strKey = strKey + "_" + _productCharacter.id;
			}
			else
			{
				strKey = strKey + "_" + "-1";
			}
			
			if( _organization != null )
			{
				strKey = strKey + "_" + _organization.id;
			}
			else
			{
				strKey = strKey + "_" + "-1";
			}
			
			if( _organizationCharacter != null )
			{
				strKey = strKey + "_" + _organizationCharacter.id;
			}
			else
			{
				strKey = strKey + "_" + "-1";
			}
			
			strKey = strKey + "_" + _period;
			
			if( _bizData != null )
			{
				strKey = strKey + "_" + _bizData.id;
			}
			else
			{
				strKey = strKey + "_" + "-1";
			}
			
			return strKey;											
		}		
		
	}
}