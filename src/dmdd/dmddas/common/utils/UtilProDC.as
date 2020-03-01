package dmdd.dmddas.common.utils
{
	import dmdd.dmddas.dataaccess.aidobject.ABProDC;
	
	import mx.collections.ArrayCollection;

	public class UtilProDC
	{
		public function UtilProDC()
		{
		}
		
		//将两组ProDC合并，product都是SKU
		public static function getUnionProDCs( _arr1:ArrayCollection,_arr2:ArrayCollection ):ArrayCollection
		{
			if(_arr1==null || _arr1.length<1)
			{	if(_arr2 ==null || _arr2.length<1)
					return null;
				else
					return _arr2;
			}
			else
			{
				if(_arr2 ==null || _arr2.length<1)
					return _arr1;				
			}
			var arr4temp:ArrayCollection = new ArrayCollection();
			for each(var prodc:ABProDC in _arr1)
			{
				if(!checkRef(prodc,_arr2))// if not in
				{
					arr4temp.addItem(prodc);
				}			
			}
			arr4temp.addAll(_arr2);
			return arr4temp;
		}
		
		//判断prodc是否包含在arr中
		public static function checkRef(_prodc:ABProDC,arr:ArrayCollection):Boolean
		{
			if(_prodc == null)
				return false;
			if(arr==null || arr.length<1)
				return false;
			for each(var prodc:ABProDC in arr)
			{
				if(prodc.getStringCode() == _prodc.getStringCode())
					return true;
				
			}
			return false;
		}
		
	}
}