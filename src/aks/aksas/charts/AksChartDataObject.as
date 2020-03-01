package aks.aksas.charts
{
	import mx.collections.ArrayCollection;

	[Bindable]
	public class AksChartDataObject
	{
		public static var MAX_DATA_NUM:int = 30;
		
		public static var CATEGORYFIELD:String = "categoryFieldValue";	//	横轴显示属性
		
		
		public function AksChartDataObject()
		{
			//TODO: implement function
		}

		public var categoryFieldValue:String;
		public var data_00:Number = NaN;
		public var data_01:Number = NaN;
		public var data_02:Number = NaN;
		public var data_03:Number = NaN;
		public var data_04:Number = NaN;
		public var data_05:Number = NaN;
		public var data_06:Number = NaN;
		public var data_07:Number = NaN;
		public var data_08:Number = NaN;
		public var data_09:Number = NaN;
		public var data_10:Number = NaN;
		public var data_11:Number = NaN;
		public var data_12:Number = NaN;
		public var data_13:Number = NaN;
		public var data_14:Number = NaN;
		public var data_15:Number = NaN;
		public var data_16:Number = NaN;
		public var data_17:Number = NaN;
		public var data_18:Number = NaN;
		public var data_19:Number = NaN;
		public var data_20:Number = NaN;
		public var data_21:Number = NaN;
		public var data_22:Number = NaN;
		public var data_23:Number = NaN;
		public var data_24:Number = NaN;
		public var data_25:Number = NaN;
		public var data_26:Number = NaN;
		public var data_27:Number = NaN;
		public var data_28:Number = NaN;
		public var data_29:Number = NaN;
		
		
		public function setData( ith:int, value:Number ):void
		{
			switch( ith )
			{
				case	 0	:	this.data_00 = value; return;
				case	 1	:	this.data_01 = value; return;
				case	 2	:	this.data_02 = value; return;
				case	 3	:	this.data_03 = value; return;
				case	 4	:	this.data_04 = value; return;
				case	 5	:	this.data_05 = value; return;
				case	 6	:	this.data_06 = value; return;
				case	 7	:	this.data_07 = value; return;
				case	 8	:	this.data_08 = value; return;
				case	 9	:	this.data_09 = value; return;	
				case	 10	:	this.data_10 = value; return;
				case	 11	:	this.data_11 = value; return;
				case	 12	:	this.data_12 = value; return;
				case	 13	:	this.data_13 = value; return;
				case	 14	:	this.data_14 = value; return;
				case	 15	:	this.data_15 = value; return;
				case	 16	:	this.data_16 = value; return;
				case	 17	:	this.data_17 = value; return;
				case	 18	:	this.data_18 = value; return;
				case	 19	:	this.data_19 = value; return;
				case	 20	:	this.data_20 = value; return;
				case	 21	:	this.data_21 = value; return;
				case	 22	:	this.data_22 = value; return;
				case	 23	:	this.data_23 = value; return;
				case	 24	:	this.data_24 = value; return;
				case	 25	:	this.data_25 = value; return;
				case	 26	:	this.data_26 = value; return;
				case	 27	:	this.data_27 = value; return;
				case	 28	:	this.data_28 = value; return;
				case	 29	:	this.data_29 = value; return;
					
			}
		}
		
		public function getData( ith:int ):Number
		{
			switch( ith )
			{
				case	 0	:	return this.data_00;
				case	 1	:	return this.data_01;
				case	 2	:	return this.data_02;
				case	 3	:	return this.data_03;
				case	 4	:	return this.data_04;
				case	 5	:	return this.data_05;
				case	 6	:	return this.data_06;
				case	 7	:	return this.data_07;
				case	 8	:	return this.data_08;
				case	 9	:	return this.data_09;
				case	 10	:	return this.data_10;
				case	 11	:	return this.data_11;
				case	 12	:	return this.data_12;
				case	 13	:	return this.data_13;
				case	 14	:	return this.data_14;
				case	 15	:	return this.data_15;
				case	 16	:	return this.data_16;
				case	 17	:	return this.data_17;
				case	 18	:	return this.data_18;
				case	 19	:	return this.data_19;
				case	 20	:	return this.data_20;
				case	 21	:	return this.data_21;
				case	 22	:	return this.data_22;
				case	 23	:	return this.data_23;
				case	 24	:	return this.data_24;
				case	 25	:	return this.data_25;
				case	 26	:	return this.data_26;
				case	 27	:	return this.data_27;
				case	 28	:	return this.data_28;
				case	 29	:	return this.data_29;
			}
			
			return NaN;			
		}
		
		public static function getFiledName( ith:int ):String
		{
			if( ith >= 0 && ith <=9 )
			{
				return "data_0" + ith;	
			}
			else if(ith >= 10 && ith <=19)
			{
				return "data_" + ith;				
			}
			else 
			{
				return "";
			}

		}
		
		//增加了线条可拖动信息begin
		public static function getIndex(_data:String):int
		{
			switch( _data )
			{
				case	"data_00"	:	return 0;
				case	"data_01"	:	return 1;
				case	"data_02"	:	return 2;
				case	"data_03"	:	return 3;
				case	"data_04"	:	return 4;
				case	"data_05"	:	return 5;
				case	"data_06"	:	return 6;
				case	"data_07"	:	return 7;
				case	"data_08"	:	return 8;
				case	"data_09"	:	return 9;
				case	"data_10"	:	return 10;
				case	"data_11"	:	return 11;
				case	"data_12"	:	return 12;
				case	"data_13"	:	return 13;
				case	"data_14"	:	return 14;
				case	"data_15"	:	return 15;
				case	"data_16"	:	return 16;
				case	"data_17"	:	return 17;
				case	"data_18"	:	return 18;
				case	"data_19"	:	return 19;
				case	"data_20"	:	return 20;
				case	"data_21"	:	return 21;
				case	"data_22"	:	return 22;
				case	"data_23"	:	return 23;
				case	"data_24"	:	return 24;
				case	"data_25"	:	return 25;
				case	"data_26"	:	return 26;
				case	"data_27"	:	return 27;
				case	"data_28"	:	return 28;
				case	"data_29"	:	return 29;
					
			}
			
			return -1;	
		}	
		
		
		//增加了线条可拖动信息end
	}
}