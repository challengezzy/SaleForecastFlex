package dmdd.dmddas.common.utils
{
	import dmdd.dmddas.common.constant.BizConst;
	import dmdd.dmddas.dataaccess.aidobject.ABUiRowData;
	import dmdd.dmddas.dataaccess.bizobject.BBizDataDefItemKpi;
	
	import mx.formatters.NumberFormatter;

	public class UtilKpi
	{
		public function UtilKpi()
		{
		}
		
		public static function updateKpi4UiRowData(uiRowData:ABUiRowData):ABUiRowData{
			var periodDiff:int;
			var periodLoc:int;
			var aitemValue:Number;
			var bitemValue:Number;
			var kpiValue:Number;
			var kpiFormula:int;
			
			var numberFormatter:NumberFormatter = new NumberFormatter();
			numberFormatter.precision = 2;
			
			if( uiRowData.bizData.bizDataDefItems == null && uiRowData.bizData.bizDataDefItems.length < 1 ){
				trace("KPY定义数据为空，无法进行计算!");
				return uiRowData;
			}
			
			//计算公式
			kpiFormula = BBizDataDefItemKpi(uiRowData.bizData.bizDataDefItems.getItemAt(0)).kpiFormula;
			
			//	kpi数据，计算真正的Kpi值
			periodDiff = UtilPeriod.getPeriodDifference( uiRowData.periodBegin, uiRowData.periodEnd );
			for( periodLoc = 0; periodLoc <= periodDiff; periodLoc = periodLoc + 1 )
			{
				aitemValue = uiRowData.pubFun4getPeriodDataValue( periodLoc );
				bitemValue = uiRowData.pubFun4getPeriodDataValueBak( periodLoc );
				
				if( kpiFormula == BizConst.BIZDATADEFITEM_KPIFORMULA_RATIO )
				{
					if( isNaN(aitemValue) || isNaN(bitemValue) )
					{
						uiRowData.pubFun4setPeriodDataValue( periodLoc, NaN );
						uiRowData.pubFun4setPeriodDataValueBak( periodLoc, NaN );
					}
					else if( bitemValue == 0 )
					{
						uiRowData.pubFun4setPeriodDataValue( periodLoc, NaN );
						uiRowData.pubFun4setPeriodDataValueBak( periodLoc, NaN );								
					}
					else
					{
						kpiValue = aitemValue / bitemValue * 100.0;
						kpiValue = Number( numberFormatter.format( kpiValue ) );
						
						uiRowData.pubFun4setPeriodDataValue( periodLoc, kpiValue );
						uiRowData.pubFun4setPeriodDataValueBak( periodLoc, kpiValue );									
					}										
				}
				else if( kpiFormula == BizConst.BIZDATADEFITEM_KPIFORMULA_INCREMENTRATIO )
				{
					if( isNaN(aitemValue) || isNaN(bitemValue) )
					{
						uiRowData.pubFun4setPeriodDataValue( periodLoc, NaN );
						uiRowData.pubFun4setPeriodDataValueBak( periodLoc, NaN );
					}
					else if( bitemValue == 0 )
					{
						uiRowData.pubFun4setPeriodDataValue( periodLoc, NaN );
						uiRowData.pubFun4setPeriodDataValueBak( periodLoc, NaN );								
					}
					else
					{
						kpiValue = Math.abs( aitemValue - bitemValue ) / bitemValue * 100.0;
						kpiValue = Number( numberFormatter.format( kpiValue ) );
						
						uiRowData.pubFun4setPeriodDataValue( periodLoc, kpiValue );
						uiRowData.pubFun4setPeriodDataValueBak( periodLoc, kpiValue );									
					}											
				}
				else if( kpiFormula == BizConst.BIZDATADEFITEM_KPIFORMULA_INCREMENTRATIO_I )
				{
					if( isNaN(aitemValue) || isNaN(bitemValue) )
					{
						uiRowData.pubFun4setPeriodDataValue( periodLoc, NaN );
						uiRowData.pubFun4setPeriodDataValueBak( periodLoc, NaN );
					}
					else if( bitemValue == 0 )
					{
						uiRowData.pubFun4setPeriodDataValue( periodLoc, NaN );
						uiRowData.pubFun4setPeriodDataValueBak( periodLoc, NaN );								
					}
					else
					{
						kpiValue = (1 - Math.abs( aitemValue - bitemValue ) / bitemValue) * 100.0;
						kpiValue = Number( numberFormatter.format( kpiValue ) );
						
						uiRowData.pubFun4setPeriodDataValue( periodLoc, kpiValue );
						uiRowData.pubFun4setPeriodDataValueBak( periodLoc, kpiValue );									
					}											
				}
				else if( kpiFormula == BizConst.BIZDATADEFITEM_KPIFORMULA_INCREMENTRATIO_II )
				{
					if( isNaN(aitemValue) )
					{
						aitemValue = 0;
					}
					if( isNaN(bitemValue) )
					{
						bitemValue = 0;
					}
					
					if( aitemValue + bitemValue == 0 )
					{
						//	分母为0
						uiRowData.pubFun4setPeriodDataValue( periodLoc, NaN );
						uiRowData.pubFun4setPeriodDataValueBak( periodLoc, NaN );																		
					}
					else
					{
						kpiValue = 2.0 * Math.abs(aitemValue - bitemValue) / (aitemValue + bitemValue) * 100.0;
						kpiValue = Number( numberFormatter.format( kpiValue ) );
						
						uiRowData.pubFun4setPeriodDataValue( periodLoc, kpiValue );
						uiRowData.pubFun4setPeriodDataValueBak( periodLoc, kpiValue );									
					}									
				}
				else if(kpiFormula == BizConst.BIZDATADEFITEM_KPIFORMULA_INCREMENTRATIO_III)
				{
					kpiValue = (aitemValue - bitemValue) ;
					kpiValue = Number( numberFormatter.format( kpiValue ) );
					
					uiRowData.pubFun4setPeriodDataValue( periodLoc, kpiValue );
					uiRowData.pubFun4setPeriodDataValueBak( periodLoc, kpiValue );
				}
				else if(kpiFormula == BizConst.BIZDATADEFITEM_KPIFORMULA_INCREMENTRATIO_IV)
				{
					kpiValue =  Math.abs(aitemValue - bitemValue) ;
					kpiValue = Number( numberFormatter.format( kpiValue ) );
					
					uiRowData.pubFun4setPeriodDataValue( periodLoc, kpiValue );
					uiRowData.pubFun4setPeriodDataValueBak( periodLoc, kpiValue );
				}
				else if(kpiFormula == BizConst.BIZDATADEFITEM_KPIFORMULA_INCREMENTRATIO_V)
				{
					if( isNaN(aitemValue) || isNaN(bitemValue) )
					{
						uiRowData.pubFun4setPeriodDataValue( periodLoc, NaN );
						uiRowData.pubFun4setPeriodDataValueBak( periodLoc, NaN );
					}
					else if( bitemValue == 0 )
					{
						uiRowData.pubFun4setPeriodDataValue( periodLoc, NaN );
						uiRowData.pubFun4setPeriodDataValueBak( periodLoc, NaN );								
					}
					else
					{
						kpiValue = ( aitemValue - bitemValue ) / bitemValue * 100.0;
						kpiValue = Number( numberFormatter.format( kpiValue ) );
						
						uiRowData.pubFun4setPeriodDataValue( periodLoc, kpiValue );
						uiRowData.pubFun4setPeriodDataValueBak( periodLoc, kpiValue );									
					}
				}
				else if(kpiFormula == BizConst.BIZDATADEFITEM_KPIFORMULA_INCREMENTRATIO_VI)
				{
					if( isNaN(aitemValue) || isNaN(bitemValue) )
					{
						uiRowData.pubFun4setPeriodDataValue( periodLoc, NaN );
						uiRowData.pubFun4setPeriodDataValueBak( periodLoc, NaN );
					}
					else if( bitemValue == 0 )
					{
						uiRowData.pubFun4setPeriodDataValue( periodLoc, NaN );
						uiRowData.pubFun4setPeriodDataValueBak( periodLoc, NaN );								
					}
					else if(aitemValue<0 || bitemValue<0)
					{
						uiRowData.pubFun4setPeriodDataValue( periodLoc, 0 );
						uiRowData.pubFun4setPeriodDataValueBak( periodLoc, 0 );	
					}
					else
					{
						if(aitemValue<bitemValue)
						{
							kpiValue = aitemValue / bitemValue * 100.0;
							kpiValue = Number( numberFormatter.format( kpiValue ) );
						}
						else
						{
							kpiValue = bitemValue / aitemValue * 100.0;
							kpiValue = Number( numberFormatter.format( kpiValue ) );
						}
						
						uiRowData.pubFun4setPeriodDataValue( periodLoc, kpiValue );
						uiRowData.pubFun4setPeriodDataValueBak( periodLoc, kpiValue );									
					}	
				}
				else
				{
					//	out of design
					uiRowData.pubFun4setPeriodDataValue( periodLoc, NaN );
					uiRowData.pubFun4setPeriodDataValueBak( periodLoc, NaN );										
				}
				
			}
			
			return uiRowData;
		}
		//updateKpi4UiRowData 方法结束
	}
}