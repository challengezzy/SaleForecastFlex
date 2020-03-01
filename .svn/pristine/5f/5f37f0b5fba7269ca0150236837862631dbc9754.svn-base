package dmdd.dmddas.common.utils
{
	import aks.aksas.collections.HashMap;
	
	import dmdd.dmddas.common.constant.BizConst;
	import dmdd.dmddas.common.constant.SysConst;
	import dmdd.dmddas.common.system.ClientEnvironment;
	
	import mx.collections.ArrayCollection;
	import mx.formatters.DateFormatter;
	import mx.utils.StringUtil;
	
	public class UtilPeriod
	{
		public function UtilPeriod()
		{
			//TODO: implement function
		}
		
		public static function checkPeriod( _period:int ):Boolean
		{
			if( _period < 1 )
			{
				return false;
			}
			
			var strPeriod:String = "" + _period;
			if( strPeriod.length != 6 )
			{
				return false;	
			}
			
			var year:Number = Number(strPeriod.substring(0,4));	
			if( isNaN(year) )
			{
				return false;
			}
			
			var pno:Number = Number(strPeriod.substring(4));	
			
			if( isNaN(pno) || pno < 1 || pno > ClientEnvironment.getSysPeriod().periodNumPerYear )
			{
				return false;
			}	
			
			return true;	
		}
		
		public static function parse( _strPeriod:String ):int
		{
			var strPeriod:String = StringUtil.trim( _strPeriod );
			
			//	check	begin
			if( strPeriod.length != 6 )
			{
				return SysConst.PERIOD_NULL;	
			}
			
			var year:Number = Number(strPeriod.substring(0,4));	
			if( isNaN(year) )
			{
				return SysConst.PERIOD_NULL;
			}
			
			var pno:Number = Number(strPeriod.substring(4));	
			
			if( isNaN(pno) || pno < 1 || pno > ClientEnvironment.getSysPeriod().periodNumPerYear )
			{
				return SysConst.PERIOD_NULL;
			}	
			//	check	end
			
			return year*100 + pno;				
		}
		
		public static function getPeriod( _period:int, _addNum:int ):int
		{		
			//	check	begin
			if( _period < 1 )
			{
				return SysConst.PERIOD_NULL;
			}
			
			var strPeriod:String = "" + _period;
			if( strPeriod.length != 6 )
			{
				return SysConst.PERIOD_NULL;	
			}
			
			var year:Number = Number(strPeriod.substring(0,4));	
			if( isNaN(year) )
			{
				return SysConst.PERIOD_NULL;
			}
			
			var pno:Number = Number(strPeriod.substring(4));	
			if( isNaN(pno) || pno < 1 || pno > ClientEnvironment.getSysPeriod().periodNumPerYear )
			{
				return SysConst.PERIOD_NULL;
			}	
			//	check	end
			
			pno = pno + _addNum;
			while( pno > ClientEnvironment.getSysPeriod().periodNumPerYear || pno < 1 )
			{
				if( pno > ClientEnvironment.getSysPeriod().periodNumPerYear )
				{
					pno = pno - ClientEnvironment.getSysPeriod().periodNumPerYear;
					year = year + 1;
				}
				else
				{
					pno = pno + ClientEnvironment.getSysPeriod().periodNumPerYear;
					year = year - 1;	
				}	
			}
			
			return year*100 + pno;	
						
		}		
		
		public static function getPeriodYear( _period:int ):int
		{
			if( _period < 1 )
			{
				return -1;
			}
			
			var strPeriod:String = "" + _period;
			if( strPeriod.length != 6 )
			{
				return -1;	
			}
			
			var year:Number = Number(strPeriod.substring(0,4));	
			if( isNaN(year) )
			{
				return -1;
			}
						
			var pno:Number = Number(strPeriod.substring(4));	
			if( isNaN(pno) || pno < 1 || pno > ClientEnvironment.getSysPeriod().periodNumPerYear )
			{
				return -1;
			}
				
			return year;
		}
		
		public static function getPeriodNo( _period:int ):int
		{
			if( _period < 1 )
			{
				return -1;
			}
			
			var strPeriod:String = "" + _period;
			if( strPeriod.length != 6 )
			{
				return -1;	
			}
			
			var year:Number = Number(strPeriod.substring(0,4));	
			if( isNaN(year) )
			{
				return -1;
			}
						
			var pno:Number = Number(strPeriod.substring(4));	
			if( isNaN(pno) || pno < 1 || pno > ClientEnvironment.getSysPeriod().periodNumPerYear )
			{
				return -1;
			}
			
			return pno;
			
		}
				

		public static function getPeriodDifference(_period_1:int, _period_2:int):int
		{			
			//	period_1	begin
			if( _period_1 < 1 )
			{
				return SysConst.PERIOD_DIFF_NULL;
			}
			
			var strPeriod_1:String = "" + _period_1;
			if( strPeriod_1.length != 6 )
			{
				return SysConst.PERIOD_DIFF_NULL;	
			}
			
			var year_1:Number = Number(strPeriod_1.substring(0,4));
			if( isNaN(year_1) )
			{
				return SysConst.PERIOD_DIFF_NULL;
			}
			
			var pno_1:Number = Number(strPeriod_1.substring(4));	
			if( isNaN(pno_1) || pno_1 < 1 || pno_1 > ClientEnvironment.getSysPeriod().periodNumPerYear )
			{
				return SysConst.PERIOD_DIFF_NULL;
			}							
			//	period_1	end
			
			//	period_2	begin
			if( _period_2 < 1 )
			{
				return SysConst.PERIOD_DIFF_NULL;
			}
			
			var strPeriod_2:String = "" + _period_2;
			if( strPeriod_2.length != 6 )
			{
				return SysConst.PERIOD_DIFF_NULL;	
			}
			
			var year_2:Number = Number(strPeriod_2.substring(0,4));
			if( isNaN(year_2) )
			{
				return SysConst.PERIOD_DIFF_NULL;
			}
			
			var pno_2:Number = Number(strPeriod_2.substring(4));	
			if( isNaN(pno_2) || pno_2 < 1 || pno_2 > ClientEnvironment.getSysPeriod().periodNumPerYear )
			{
				return SysConst.PERIOD_DIFF_NULL;
			}							
			//	period_2	end			
			
			var periodDifference:int = (year_2 - year_1) * ClientEnvironment.getSysPeriod().periodNumPerYear + (pno_2 - pno_1);
			
			return periodDifference;
		}
				
		
		public static function getHeaderTextPeriod( _period:int, _addPeriodNum:int ):String
		{			
			if( _period < 1 )
			{
				return null;
			}
			
			var strPeriod:String = "" + _period;
			if( strPeriod.length != 6 )
			{
				return null;	
			}
			
			var year:Number = Number(strPeriod.substring(0,4));	
			if( isNaN(year) )
			{
				return null;
			}
						
			var pno:Number = Number(strPeriod.substring(4));	
			if( isNaN(pno) || pno < 1 || pno > ClientEnvironment.getSysPeriod().periodNumPerYear )
			{
				return null;
			}		
						
			pno = pno + _addPeriodNum;
			while( pno > ClientEnvironment.getSysPeriod().periodNumPerYear || pno < 1 )
			{
				if( pno > ClientEnvironment.getSysPeriod().periodNumPerYear )
				{
					pno = pno - ClientEnvironment.getSysPeriod().periodNumPerYear;
					year = year + 1;
				}
				else
				{
					pno = pno + ClientEnvironment.getSysPeriod().periodNumPerYear;
					year = year - 1;	
				}	
			}
			
			if( pno < 10 )
			{
				return "" + year + "\n" + "0" + pno;
			} 			
			else
			{
				return "" + year + "\n" + pno;
			}			
		}

//		
//		public static function buildPeriod(arr:ArrayCollection,periodtype:int):HashMap
//		{
//			var result:HashMap = new HashMap();
//			var seeting:ABPeriodBreakDownSetting = new ABPeriodBreakDownSetting();
//			var num_week:int = 0;
//			var diff:int= 0 ;
//			var i:int ;
//			var period:String;
//			if(periodtype==BizConst.REPORT_PERIOD_BREAKDOWN_TYPE_WORKWEEK)
//			{
//				for each( period in arr)
//				{
//					seeting = new ABPeriodBreakDownSetting();
//					seeting.period = int(period);
//					num_week = calculateNumOfPeriodByWork(period);
//					var checkFirstDay:Boolean = checkFirstDayByWork(period);
//					seeting.num_week = num_week;
//					seeting.firstweekisreal = checkFirstDay;
//					seeting.isconnected = calculateIsConnectByCalcuate(period);
//					diff = 100/num_week;
//					if(checkFirstDay==true )
//					{
//						seeting.arr4weekPercent.addItem(0);
//						for( i= 0;i<5;i++)
//						{
//							if(i<num_week)
//							{
//								seeting.arr4weekPercent.addItem(diff);
//							}
//							else
//							{
//								seeting.arr4weekPercent.addItem(0);
//							}	
//						}	
//					}
//					else
//					{
//						for( i= 0;i<6;i++)
//						{							
//							if(i<num_week)
//							{
//								seeting.arr4weekPercent.addItem(diff);
//							}
//							else
//							{
//								seeting.arr4weekPercent.addItem(0);
//							}
//						}
//					}
//					
//					result.put(period,seeting);
//				}	
//			}
//			else if(periodtype==BizConst.REPORT_PERIOD_BREAKDOWN_TYPE_CALENDARWEK)
//			{
//				for each( period in arr)
//				{
//					seeting = new ABPeriodBreakDownSetting();
//					seeting.period = int(period);
//					num_week = calculateNumOfPeriodByCalndar(period);
//					seeting.num_week = num_week;
//					seeting.isconnected = calculateIsConnectByWork(period);
//					diff = 100/num_week;
//					for( i = 0;i<6;i++)
//					{
//						if(i<num_week)
//						{
//							seeting.arr4weekPercent.addItem(diff);
//						}
//						else
//						{
//							seeting.arr4weekPercent.addItem(0);
//						}
//					}
//					result.put(period,seeting);
//				}	
//			}
//			
//			return result;
//		}	
		//计算当前期间有多少周，日历周计算
		public static function calculateNumOfPeriodByCalndar(period:String):int
		{
			//先计算当月有多少天
			var date:Number = calculateNumOfMonth(period);
			//计算当月有几周
			var year:Number =new Number(period.substring(0,4));
			var month:Number = new Number(period.substring(4,6));
			var num_week:int = 0;
			num_week = weekOfMonthByCalendar(year,month,date);
			return num_week;
		}
		//计算当前期间有多少周，工作周计算，并且需要告知第一周是否是非工作周（是否为礼拜六或者礼拜天，如果日历的第一周不作为工作周第一周计算）
		public static function calculateNumOfPeriodByWork(period:String):int
		{
			//先计算当月有多少天
			var date:Number = calculateNumOfMonth(period);
			//计算当月有几周
			var year:Number =new Number(period.substring(0,4));
			var month:Number = new Number(period.substring(4,6));
			var num_week:int = 0;
			num_week = weekOfMonthByWeek(year,month,date);
			return num_week;
		}
		
		//计算当期期间有多少周，日历周计算（包含双休日，礼拜天算作下一周)
		public static function weekOfMonthByCalendar(year:Number, month:Number, dd:Number):int
		{
			var day:Number;
			var num:Number= 0;
			for(var date:int=1;date<=dd;date++)
			{
				day = new Date(year,month-1,date).day;
				if(date==1 )
				{
					num++;
				}
				else if(day==0)//礼拜天,为一周开始
				{
					num++;
				}
				else
				{
					continue;
				}				
			}			
			return num;			
		}
		
		//计算当前期间有多少周，工作周计算（礼拜六和礼拜天不算周内计算)
		public static function weekOfMonthByWeek(year:Number,month:Number, dd:Number):int
		{
			var day:Number;
			var num:Number= 0;
			for(var date:int=1;date<=dd;date++)
			{
				day = new Date(year,month-1,date).day;
				if(date==1 && day>0 && day<6)
				{
					num++;
				}
				else if(day==1)//礼拜一,为一周开始
				{
					num++;
				}
				else
				{
					continue;
				}				
			}			
			return num;
		}
		
		//判断工作周的第一天是否是礼拜六,如果是礼拜六，则第一周不计算
		public static function checkFirstDayByWork(period:String):Number
		{
			var year:Number =new Number(period.substring(0,4));
			var month:Number = new Number(period.substring(4,6));
			var day:Number = new Date(year,month-1,1).day;
			if(day==6)
			{
				return BizConst.GLOBAL_YESNO_YES;
			}
			else 
			{
				return BizConst.GLOBAL_YESNO_NO;
			}
		}
		
		//计算当前期间有多少天
		public static function calculateNumOfMonth(period:String):int
		{
			var year:int = int(period.substring(0,4));
			var month:int = int(period.substring(4,6));
			var date:Number = new Date(year,month,0).getDate();	
			return date;
		}
		
		// 判断当前期间最后一天是否跨周-日历周
		public static function calculateIsConnectByCalcuate(period:String):Number
		{
			var year:Number =new Number(period.substring(0,4));
			var month:Number = new Number(period.substring(4,6));
			var num_week:int = 0;
			var day:Number = new Date(year,month-1,1).day;
			if(day==0)
				return BizConst.GLOBAL_YESNO_NO;
			else
			{
				return BizConst.GLOBAL_YESNO_YES;
			}
			return BizConst.GLOBAL_YESNO_NO;
		}
		
		// 判断当前期间最后一天是否跨周-工作周 
		public static function calculateIsConnectByWork(period:String):Number
		{
			var year:Number =new Number(period.substring(0,4));
			var month:Number = new Number(period.substring(4,6));
			var num_week:int = 0;
			var day:Number = new Date(year,month-1,1).day;
			if(day==6 || day==1 || day==0)
				return BizConst.GLOBAL_YESNO_NO;
			else
			{
				return BizConst.GLOBAL_YESNO_YES;
			}
			return BizConst.GLOBAL_YESNO_NO;
		}
		//返回日期的下一天
		public static function nextday(day:int):int
		{
			var strDay:String = ""+day;
			if(strDay.length!=8)
			{
				return -1;
			}
			
			var year:Number =new Number(strDay.substring(0,4));
			var month:Number = new Number(strDay.substring(4,6));
		    var date:Number = new Number(strDay.substring(6,8));
			var _date:Date= new Date(year,month-1,date);	
			_date["date"]+=1;
			var format:DateFormatter =new DateFormatter();
			format.formatString="YYYYMMDD";
			var _strDay:String = format.format(_date);
			return int(_strDay);
		}
	}
}