package dmdd.dmddas.common.utils
{
	import com.cool.utils.StringUtils;

	public class UtilImport
	{
		public function UtilImport()
		{
		}
		
		/**
		 * 对于数据字体串中包含
		 * */
		public static function splitDataByTab(dataStr:String):Array{
			//把双引号去掉
			var row:String = StringUtils.StringReplaceAll( dataStr,"\"","" );
			//使用正则表达式分割，一个或多个制表符视为一个
			var reg:RegExp = /\t+/;
			var fields:Array = row.split(reg);
			
			return fields;
		}
		
		
	}
}