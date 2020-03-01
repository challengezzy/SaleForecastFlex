package aks.aksas.utils
{
	import mx.formatters.DateFormatter;
	
	//	描述		begin
	//	描述		end	
	public class UtilTime
	{
		public function UtilTime()
		{
			//TODO: implement function
		}
		
		/**
		 * YYYY-MM-DD JJ:NN:SS
		 */ 
		public static function formatDate( _dateTime:Date, _formatStr:String ):String
		{
			if( _dateTime == null )
			{
				return null;	
			}
			else
			{
				var dateTimeFormatter:DateFormatter = new DateFormatter();
				dateTimeFormatter.formatString = _formatStr;
				return dateTimeFormatter.format( _dateTime );
			}
		}	
		
		//	dateStr 的格式为 "YYYY-MM-DD"
		public static function sql4StrToDate4MySql( _dateStr:String ):String
		{
			var rstStr:String = null;
			rstStr = "date('" + _dateStr + "')";
			return rstStr;		
		}	
		
		//	dateStr 的格式为 "YYYY-MM-DD HH:MM:SS"
		public static function sql4StrToDateTime4MySql( _dateTimeStr:String ):String
		{
			var rstStr:String = null;
			rstStr = "datetime('" + _dateTimeStr + "')";
			return rstStr;		
		}
		

		//	dateStr 的格式为 "YYYY-MM-DD"
		/**
		 * _dateStr 的格式为 "YYYY-MM-DD"
		 */ 
		public static function sql4StrToDate4Oracle( _dateStr:String ):String
		{
			var rstStr:String = null;
			rstStr = "to_date('" + _dateStr + "', 'YYYY-MM-DD')";
			return rstStr;		
		}	
		
		/**
		 * _dateTimeStr 的格式为 "YYYY-MM-DD HH:MM:SS"
		 */ 
		public static function sql4StrToDateTime4Oracle( _dateTimeStr:String ):String
		{
			var rstStr:String = null;
			rstStr = "to_date(" + _dateTimeStr + ", 'YYYY-MM-DD HH24:mi:ss')";
			return rstStr;		
		}
		

	}
}