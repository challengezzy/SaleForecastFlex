package dmdd.dmddas.dataaccess.utils
{ 
	import dmdd.dmddas.dataaccess.bizobject.BBizDataDefItem;
	import dmdd.dmddas.dataaccess.bizobject.BBizDataDefItemAddFc;
	import dmdd.dmddas.dataaccess.bizobject.BBizDataDefItemAddHis;
	import dmdd.dmddas.dataaccess.bizobject.BBizDataDefItemAvgHis;
	import dmdd.dmddas.dataaccess.bizobject.BBizDataDefItemFcComb;
	import dmdd.dmddas.dataaccess.bizobject.BBizDataDefItemFcHand;
	import dmdd.dmddas.dataaccess.bizobject.BBizDataDefItemForecastAssessment;
	import dmdd.dmddas.dataaccess.bizobject.BBizDataDefItemHistoryAd;
	import dmdd.dmddas.dataaccess.bizobject.BBizDataDefItemHistoryAdR;
	import dmdd.dmddas.dataaccess.bizobject.BBizDataDefItemKpi;
	import dmdd.dmddas.dataaccess.bizobject.BBizDataDefItemMoney;
	import dmdd.dmddas.dataaccess.bizobject.BBizDataDefItemMoneyComb;
	import dmdd.dmddas.dataaccess.bizobject.BBizDataDefItemPeriodVersion;
	import dmdd.dmddas.dataaccess.bizobject.BBizDataDefItemTimeFc;
	import dmdd.dmddas.dataaccess.bizobject.BBizDataDefItemTimeHis;
	
	public class UtilFactoryBizDataDefItem
	{
		public function UtilFactoryBizDataDefItem()
		{
			//TODO: implement function
		}
		
		public static function getNewBizDataDefItemInstance( _bizDataDefitem:BBizDataDefItem ):BBizDataDefItem
		{
			if( _bizDataDefitem == null )
			{
				return new BBizDataDefItem(); 
			}
			
			if( _bizDataDefitem is BBizDataDefItemFcComb )
			{
				return new BBizDataDefItemFcComb();
			}
			
			if( _bizDataDefitem is BBizDataDefItemFcHand )
			{
				return new BBizDataDefItemFcHand();
			}
						
			if( _bizDataDefitem is BBizDataDefItemHistoryAd )
			{
				return new BBizDataDefItemHistoryAd();
			}

			if( _bizDataDefitem is BBizDataDefItemHistoryAdR )
			{
				return new BBizDataDefItemHistoryAdR();
			}
		
			
			if( _bizDataDefitem is BBizDataDefItemTimeHis )
			{
				return new BBizDataDefItemTimeHis();
			}						
			
			if( _bizDataDefitem is BBizDataDefItemTimeFc )
			{
				return new BBizDataDefItemTimeFc();
			}
						
						
			if( _bizDataDefitem is BBizDataDefItemKpi )
			{
				return new BBizDataDefItemKpi();
			}	
			
			if( _bizDataDefitem is BBizDataDefItemMoney )
			{
				return new BBizDataDefItemMoney();
			}	
			
			if( _bizDataDefitem is BBizDataDefItemMoneyComb )
			{
				return new BBizDataDefItemMoneyComb();
			}			
			if( _bizDataDefitem is BBizDataDefItemForecastAssessment)
			{
				return new BBizDataDefItemForecastAssessment();
			}
			
			//增加历史平均、预测累积、预测累积
			if( _bizDataDefitem is BBizDataDefItemAvgHis )
			{
				return new BBizDataDefItemAvgHis();
			}
			if( _bizDataDefitem is BBizDataDefItemAddHis )
			{
				return new BBizDataDefItemAddHis();
			}
			if( _bizDataDefitem is BBizDataDefItemAddFc )
			{
				return new BBizDataDefItemAddFc();
			}
			
			//m-n版本预测
			if( _bizDataDefitem is BBizDataDefItemPeriodVersion )
			{
				return new BBizDataDefItemPeriodVersion ();
			}
			
			return new BBizDataDefItem();
			
		}

	}
}