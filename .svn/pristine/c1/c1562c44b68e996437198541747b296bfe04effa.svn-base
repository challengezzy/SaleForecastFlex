package aks.aksas.charts
{
	import mx.collections.ArrayCollection;

	public class AksChartObject
	{
		public function AksChartObject()
		{
		}
		
		/**
		 * 随机产生指定数量颜色的方法
		 * 产生一个集合每个颜色不相同
		 * @param num 指定产生多少个颜色Number
		 * @return 指定数量的颜色集合Array(uint)
		 * */
		public static function getRandomColor(num:Number):ArrayCollection
		{
			
			var arrColor:ArrayCollection=new ArrayCollection();
			
			arrColor.addItem(uint(Math.random()*0xffffff));
			
			for(var i:Number=0;i<10000;i++)
			{
				/**标记是否产生元素与arrColor中元素系统，达到每次产生不同的元素*/
				var sign:Boolean=false;
				
				var q:uint=uint(Math.random()*0xffffff);
				
				for(var j:Number=0;j<arrColor.length;j++)
				{
					if(arrColor.getItemAt(j)==q)
					{
						sign=true;
					}
				}
				if(sign==false)
				{
					arrColor.addItem(q+10);
				}
				if(arrColor.length==num)
				{
					break;
				}
			}
			return arrColor;
		}
		
		/**
		 * 获取指定数量颜色的方法
		 * 如果数量小于20则颜色固定，超过20则颜色随机
		 * @param num 指定产生多少个颜色Number
		 * @return 指定数量的颜色集合Array(uint)
		 * */
		public static function getColor(num:Number):ArrayCollection
		{
			var arrColor:ArrayCollection = new ArrayCollection();
			
			arrColor.addItem(0xE48701);
			arrColor.addItem(0xa5bc4e);
			arrColor.addItem(0x1b95d9);
			arrColor.addItem(0xcaca9e);
			arrColor.addItem(0x6693b0);
			arrColor.addItem(0xf05e27);
			arrColor.addItem(0x86d1e4);
			arrColor.addItem(0xe4f9a0);
			arrColor.addItem(0xffd512);
			arrColor.addItem(0x75b000);
			arrColor.addItem(0x0662b0);
			arrColor.addItem(0xede8c6);
			arrColor.addItem(0xcc3300);
			arrColor.addItem(0xd1dfe7);
			arrColor.addItem(0x52d4ca);
			arrColor.addItem(0xc5e05d);
			arrColor.addItem(0xe7c174);
			arrColor.addItem(0xfff797);
			arrColor.addItem(0xc5f68f);
			arrColor.addItem(0xbdf1e6);
			arrColor.addItem(0x9e987d);
			arrColor.addItem(0xeb988d);
			arrColor.addItem(0x91c9e5);
			arrColor.addItem(0x93dc4a);
			arrColor.addItem(0xffb900);
			arrColor.addItem(0x9ebbcd);
			arrColor.addItem(0x009797);
			arrColor.addItem(0x0db2c2);
			
			//			
			//			arrColor.addItem(0xf47920);
			//			arrColor.addItem(0x2a5caa);
			//			arrColor.addItem(0x7fb80e);
			//			arrColor.addItem(0x412f1f);
			//			arrColor.addItem(0xdf9464);
			//			arrColor.addItem(0xfdb933);
			//			arrColor.addItem(0x76becc);
			//			arrColor.addItem(0xae5039);
			//			arrColor.addItem(0x596032);
			//			arrColor.addItem(0xf173ac);
			//			arrColor.addItem(0x401c44);
			//			arrColor.addItem(0x2e3a1f);
			//			arrColor.addItem(0x4e72b8);
			//			arrColor.addItem(0x1d953f);
			//			arrColor.addItem(0xf15a22);
			//			arrColor.addItem(0x6a3427);
			//			arrColor.addItem(0x7a1723);
			//			arrColor.addItem(0x007947);
			//			arrColor.addItem(0xed1941);
			//			arrColor.addItem(0x444693);
			//		
			if(num>28)
			{
				var num_ :Number = num-28;
				arrColor.addAll(getRandomColor(num_));
			}
			return arrColor;
		}

	}
}