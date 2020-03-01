package dmdd.dmddas.common.utils
{
	import dmdd.dmddas.common.system.ClientEnvironment;
	import dmdd.dmddas.dataaccess.bizobject.BOrganizationCharacterLayer;
	import dmdd.dmddas.dataaccess.bizobject.BOrganizationLayer;
	import dmdd.dmddas.dataaccess.bizobject.BProductCharacterLayer;
	import dmdd.dmddas.dataaccess.bizobject.BProductLayer;
	
	import mx.collections.ArrayCollection;

	/** 层次工具类
	 * */
	public class UtilLayer
	{
	
		public function UtilLayer()
		{
		}
		
		public static function getProductLayerById(productLayerId:Number):BProductLayer{
			var data_ProductLayer:ArrayCollection =  ClientEnvironment.getProductLayers();					
			var bProductLayer:BProductLayer = null;
			var i:int = 0;
			for(i=0;i<data_ProductLayer.length;i++)
			{
				bProductLayer = data_ProductLayer.getItemAt(i) as BProductLayer;
				if(bProductLayer.id == productLayerId)
				{
					break;
				}
				bProductLayer = null;
			}
			
			return bProductLayer;
		}
		
		public static function getProductLayerValueById(productLayerId:Number):Number{
			var bProductLayer:BProductLayer = null;
			bProductLayer = getProductLayerById(productLayerId);
			
			if(bProductLayer != null){
				return bProductLayer.value;
			}else{
				return 0;
			}
			
		}
		
		public static function getProductCharacterLayerById(productCharacterLayerId:Number):BProductCharacterLayer{
			var productCharacterLayer:BProductCharacterLayer = null;
			var data_ProductCharacterLayer:ArrayCollection= ClientEnvironment.getProductCharacterLayers();					
			var i:int = 0;
			
			for(i=0;i<data_ProductCharacterLayer.length;i++)
			{
				productCharacterLayer = data_ProductCharacterLayer.getItemAt(i) as BProductCharacterLayer;
				if(productCharacterLayer.id == productCharacterLayerId)
				{
					break;
				}
				productCharacterLayer = null;
			}
			
			return productCharacterLayer;
		}
		
		public static function getProductCharacterLayerValueById(productCharacterLayerId:Number):Number{
			var productCharacterLayer:BProductCharacterLayer = null;
			productCharacterLayer = getProductCharacterLayerById(productCharacterLayerId);
			
			if(productCharacterLayer != null){
				return productCharacterLayer.value;
			}else{
				return 0;
			}
		}
		
		public static function getOrganizationLayerById(organizationLayerId:Number):BOrganizationLayer{
			var orgLayer:BOrganizationLayer = null;
			var data_orgLayer:ArrayCollection = ClientEnvironment.getOrganizationLayers();
			var i:int;
			
			for(i=0;i<data_orgLayer.length;i++)
			{
				orgLayer= data_orgLayer.getItemAt(i) as BOrganizationLayer;
				if(orgLayer.id == organizationLayerId)
				{
					break;
				}
				orgLayer = null;
			}
			return orgLayer;
		}
		
		public static function getOrganizationLayerValueById(organizationLayerId:Number):Number{
			var orgLayer:BOrganizationLayer = null;
			orgLayer = getOrganizationLayerById(organizationLayerId);
			
			if(orgLayer != null){
				return orgLayer.value;
			}else{
				return 0;
			}
		}
		
		public static function getOrganizationCharacterLayerById(organizationCharacterLayerId:Number):BOrganizationCharacterLayer{
			
			var orgCharacterLayer:BOrganizationCharacterLayer = null;
			var data_orgCharacterLayer:ArrayCollection = ClientEnvironment.getOrganizationCharacterLayers();
			var i:int = 0;
			
			for(i=0;i<data_orgCharacterLayer.length;i++)
			{
				orgCharacterLayer = data_orgCharacterLayer.getItemAt(i) as BOrganizationCharacterLayer;
				if(orgCharacterLayer.id == organizationCharacterLayerId)
				{
					break;
				}
				orgCharacterLayer = null;
			}
			return orgCharacterLayer;
		}
		
		public static function getOrgCharacterLayerValueById(organizationCharacterLayerId:Number):Number{
			
			var orgCharacterLayer:BOrganizationCharacterLayer = null;
			if( orgCharacterLayer != null){
				return orgCharacterLayer.value;
			}else{
				return 0;
			}
		}
		
	}
}