package dmdd.dmddas.common.utils
{
	import dmdd.dmddas.dataaccess.aidobject.ABProOrg;
	import dmdd.dmddas.dataaccess.bizobject.BForecastInst;
	import dmdd.dmddas.dataaccess.bizobject.BForecastInstNextProOrg;
	import dmdd.dmddas.dataaccess.bizobject.BForecastInstProOrg;
	
	import mx.collections.ArrayCollection;

	public class UtilForecastInst
	{
		public function UtilForecastInst()
		{
		}
		
		/**
		 * 
		 */ 
		public static function addProOrgsToForecastInstProOrg( _forecastInst:BForecastInst, _arr4ProOrg:ArrayCollection ):void
		{
			if( _arr4ProOrg == null )
			{
				return;
			}
			
			if( _forecastInst == null )
			{
				return;
			}
			
			var arr4OldProOrg:ArrayCollection = getProOrgs( _forecastInst );
			var arr4RstProOrg:ArrayCollection = UtilProOrg.getUnion4arrProOrg( arr4OldProOrg, _arr4ProOrg );
			
			var i:int;
			var proOrg:ABProOrg = null;
			var forecastInstProOrg:BForecastInstProOrg = null;
		
			if( _forecastInst.forecastInstProOrgs == null )
			{
				_forecastInst.forecastInstProOrgs = new ArrayCollection();
			}
			else
			{
				_forecastInst.forecastInstProOrgs.removeAll();
			}
		
			if( arr4RstProOrg != null )
			{
				for( i=0; i<arr4RstProOrg.length; i=i+1 )
				{
					proOrg = ABProOrg( arr4RstProOrg.getItemAt( i ) );
					
					forecastInstProOrg = new BForecastInstProOrg();
					forecastInstProOrg.product = proOrg.product;
					forecastInstProOrg.organization = proOrg.organization;
					forecastInstProOrg.forecastInst = _forecastInst;
					
					_forecastInst.forecastInstProOrgs.addItem( forecastInstProOrg );
				}	
			}				
			
		}		
		
		/**
		 * 
		 */ 
		public static function addProOrgsToForecastInstNextProOrg( _forecastInst:BForecastInst, _arr4ProOrg:ArrayCollection ):void
		{
			if( _arr4ProOrg == null )
			{
				return;
			}
			
			if( _forecastInst == null )
			{
				return;
			}
			
			var arr4OldProOrg:ArrayCollection = getNextProOrgs(_forecastInst );
			var arr4RstProOrg:ArrayCollection = UtilProOrg.getUnion4arrProOrg( arr4OldProOrg, _arr4ProOrg );
			
			var i:int;
			var proOrg:ABProOrg = null;
			var forecastInstNextProOrg:BForecastInstNextProOrg = null;
			
			if( _forecastInst.forecastInstNextProOrgs == null )
			{
				_forecastInst.forecastInstNextProOrgs = new ArrayCollection();
			}
			else
			{
				_forecastInst.forecastInstNextProOrgs.removeAll();
			}
			
			var arr4ForecastInstNextProOrg:ArrayCollection = new ArrayCollection();
			if( arr4RstProOrg != null )
			{
				for( i=0; i<arr4RstProOrg.length; i=i+1 )
				{
					proOrg = arr4RstProOrg.getItemAt( i ) as ABProOrg;
					
					forecastInstNextProOrg = new BForecastInstNextProOrg();
					forecastInstNextProOrg.product = proOrg.product;
					forecastInstNextProOrg.organization = proOrg.organization;
					forecastInstNextProOrg.forecastInst = _forecastInst;
					
					_forecastInst.forecastInstNextProOrgs.addItem( forecastInstNextProOrg );
				}	
			}						
		}
		
		private static function getProOrgs( _forecastInst:BForecastInst ):ArrayCollection
		{
			var arr4Rst:ArrayCollection = new ArrayCollection();
			if( _forecastInst == null || _forecastInst.forecastInstProOrgs == null )
			{
				return arr4Rst;
			}
			
			var i:int;
			var newProOrg:ABProOrg = null;
			var forecastInstProOrg:BForecastInstProOrg = null;
			
			var arr4forecastInstProOrg:ArrayCollection = _forecastInst.forecastInstProOrgs;
			for( i=0; i<arr4forecastInstProOrg.length; i=i+1 )
			{
				forecastInstProOrg = arr4forecastInstProOrg.getItemAt( i ) as BForecastInstProOrg;
				
				newProOrg = new ABProOrg();
				newProOrg.product = forecastInstProOrg.product;
				newProOrg.organization = forecastInstProOrg.organization;
				
				arr4Rst.addItem( newProOrg );
			}
			
			return arr4Rst;
		}		
		
		private static function getNextProOrgs( _forecastInst:BForecastInst ):ArrayCollection
		{
			var arr4Rst:ArrayCollection = new ArrayCollection();
			if( _forecastInst == null || _forecastInst.forecastInstProOrgs == null )
			{
				return arr4Rst;
			}
			
			var i:int;
			var newProOrg:ABProOrg = null;
			var forecastInstNextProOrg:BForecastInstNextProOrg = null;
			
			var arr4forecastInstNextProOrg:ArrayCollection = _forecastInst.forecastInstNextProOrgs;
			for( i=0; i<arr4forecastInstNextProOrg.length; i=i+1 )
			{
				forecastInstNextProOrg = arr4forecastInstNextProOrg.getItemAt( i ) as BForecastInstNextProOrg;
				
				newProOrg = new ABProOrg();
				newProOrg.product = forecastInstNextProOrg.product;
				newProOrg.organization = forecastInstNextProOrg.organization;
				
				arr4Rst.addItem( newProOrg );
			}
			
			return arr4Rst;
		}	
		
	}
}