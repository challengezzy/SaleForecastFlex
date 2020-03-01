package aks.aksas.utils
{
	import mx.charts.chartClasses.DataDescription;
	import mx.collections.ArrayCollection;
	import mx.controls.DataGrid;
	
	public class UtilArrayCollection
	{

		public static function removeItems( _arr4source:ArrayCollection, _arr4remove:ArrayCollection ):ArrayCollection
		{
			if( _arr4source == null || _arr4remove == null )
			{
				return _arr4source;
			}
			
			var begin:Date = new Date();
			//modify zhangzy 20150510 由于_arr4source和datagrid绑定，数据量大时响应很慢，改进先复制出来再编辑
			var arrResult:ArrayCollection = new ArrayCollection();
			
			var i:int;
			var idx:int;
			/*旧处理方法
			for( i=0; i<_arr4remove.length; i=i+1 )
			{
				idx = _arr4source.getItemIndex( _arr4remove.getItemAt(i) );
				if( idx >= 0 )
				{
					_arr4source.removeItemAt( idx );
				}
			}*/
			
			for(i=0; i<_arr4source.length; i++){
				idx = _arr4remove.getItemIndex( _arr4source.getItemAt(i) );
				//不包含在删除列表中的数据都添加
				if(idx < 0 ){
					arrResult.addItem(_arr4source.getItemAt(i));
				}
			}
			
			var now:Date = new Date();
			trace("处理数据["+_arr4remove.length+"]个，耗时 "+(now.valueOf()-begin.valueOf())+"  ms")
			
			_arr4source = new ArrayCollection(arrResult.toArray());
			
			return _arr4source;
		}
		
		public static function removeSelectedItems( _arr4source:ArrayCollection, _arr4remove:Array ):ArrayCollection
		{
			if( _arr4source == null || _arr4remove == null )
			{
				return _arr4source;
			}
			var arr4remove:ArrayCollection = new ArrayCollection(_arr4remove);
			var i:int;
			var idx:int;
			for( i=0; i<arr4remove.length; i=i+1 )
			{
				idx = _arr4source.getItemIndex( arr4remove.getItemAt(i) );
				if( idx >= 0 )
				{
					_arr4source.removeItemAt( idx );
				}
			}
			
			return _arr4source;
		}
	}
}