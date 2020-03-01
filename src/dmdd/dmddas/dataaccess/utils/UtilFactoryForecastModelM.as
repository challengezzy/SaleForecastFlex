package dmdd.dmddas.dataaccess.utils
{
	import dmdd.dmddas.dataaccess.bizobject.BForecastModelM;
	import dmdd.dmddas.dataaccess.bizobject.BForecastModelMAAnalog;
	import dmdd.dmddas.dataaccess.bizobject.BForecastModelMLEs;
	import dmdd.dmddas.dataaccess.bizobject.BForecastModelMLEso;
	import dmdd.dmddas.dataaccess.bizobject.BForecastModelMLMa;
	import dmdd.dmddas.dataaccess.bizobject.BForecastModelMLWma;
	import dmdd.dmddas.dataaccess.bizobject.BForecastModelMSLEs;
	import dmdd.dmddas.dataaccess.bizobject.BForecastModelMSLEso;
	import dmdd.dmddas.dataaccess.bizobject.BForecastModelMSLMa;
	import dmdd.dmddas.dataaccess.bizobject.BForecastModelMSLWma;
	import dmdd.dmddas.dataaccess.bizobject.BForecastModelMSTCply;
	import dmdd.dmddas.dataaccess.bizobject.BForecastModelMSTEsa;
	import dmdd.dmddas.dataaccess.bizobject.BForecastModelMSTEsao;
	import dmdd.dmddas.dataaccess.bizobject.BForecastModelMSTEsm;
	import dmdd.dmddas.dataaccess.bizobject.BForecastModelMSTEsmo;
	import dmdd.dmddas.dataaccess.bizobject.BForecastModelMSTLa;
	import dmdd.dmddas.dataaccess.bizobject.BForecastModelMSTPly;
	import dmdd.dmddas.dataaccess.bizobject.BForecastModelMTCply;
	import dmdd.dmddas.dataaccess.bizobject.BForecastModelMTEs;
	import dmdd.dmddas.dataaccess.bizobject.BForecastModelMTEso;
	import dmdd.dmddas.dataaccess.bizobject.BForecastModelMTLa;
	import dmdd.dmddas.dataaccess.bizobject.BForecastModelMTPly;
	
	
	public class UtilFactoryForecastModelM
	{
		public function UtilFactoryForecastModelM()
		{
			//TODO: implement function
		}
		
		public static function getNewInstance( _forecastModelM:BForecastModelM ):BForecastModelM
		{
			if( _forecastModelM is BForecastModelMLMa )
			{
				return new BForecastModelMLMa();
			}	
			if( _forecastModelM is BForecastModelMLWma )
			{
				return new BForecastModelMLWma();
			}	
			if( _forecastModelM is BForecastModelMLEs )
			{
				return new BForecastModelMLEs();	
			}		
			if( _forecastModelM is BForecastModelMLEso )
			{
				return new BForecastModelMLEso();	
			}					
			
			if( _forecastModelM is BForecastModelMTPly )
			{
				return new BForecastModelMTPly();	
			}	
			if( _forecastModelM is BForecastModelMTCply )
			{
				return new BForecastModelMTCply();	
			}							
			if( _forecastModelM is BForecastModelMTEs )
			{
				return new BForecastModelMTEs();	
			}					
			if( _forecastModelM is BForecastModelMTEso )
			{
				return new BForecastModelMTEso();	
			}								
			if( _forecastModelM is BForecastModelMTLa )
			{
				return new BForecastModelMTLa();
			}	
			
			if( _forecastModelM is BForecastModelMSLMa )
			{
				return new BForecastModelMSLMa();
			}
			if( _forecastModelM is BForecastModelMSLWma )
			{
				return new BForecastModelMSLWma();
			}	
			if( _forecastModelM is BForecastModelMSLEs )
			{
				return new BForecastModelMSLEs();	
			}		
			if( _forecastModelM is BForecastModelMSLEso )
			{
				return new BForecastModelMSLEso();	
			}					
			
			if( _forecastModelM is BForecastModelMSTPly )
			{
				return new BForecastModelMSTPly();	
			}	
			if( _forecastModelM is BForecastModelMSTCply )
			{
				return new BForecastModelMSTCply();	
			}												
			if( _forecastModelM is BForecastModelMSTEsa )
			{
				return new BForecastModelMSTEsa();
			}
			if( _forecastModelM is BForecastModelMSTEsao )
			{
				return new BForecastModelMSTEsao();
			}			
			if( _forecastModelM is BForecastModelMSTEsm )
			{
				return new BForecastModelMSTEsm();
			}			
			if( _forecastModelM is BForecastModelMSTEsmo )
			{
				return new BForecastModelMSTEsmo();
			}						
			if( _forecastModelM is BForecastModelMSTLa )
			{
				return new BForecastModelMSTLa();
			}			
			
			if( _forecastModelM is BForecastModelMAAnalog )
			{
				return new BForecastModelMAAnalog();
			}						
			return new BForecastModelM();
			
		}

	}
}