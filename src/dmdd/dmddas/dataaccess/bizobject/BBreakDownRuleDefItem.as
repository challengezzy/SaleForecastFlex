package dmdd.dmddas.dataaccess.bizobject
{
	import dmdd.dmddas.common.constant.SysConst;
	
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.bizobject.BBreakDownRuleDefItem")]
	public class BBreakDownRuleDefItem
	{	
		public function BBreakDownRuleDefItem()
		{
		}
		
		public var id:Number = SysConst.NULL_NUMERICAL_FIELD;
		public var isConnected:int;
		
		public var period:int;
		public var week1:int;
		public var week2:int;
		public var week3:int;
		public var week4:int;
		public var week5:int;
		public var week6:int;
		public var comments:String="";
		public var version:Number;
		public var weekCode:String="";
		public var breakDownRule:BBreakDownRule;
		
		
		public var firstDay:int ;//当为工作周时，判断是否第一天是礼拜六
		
		public var num_week:int;//当为工作周时，判断是否第一天是礼拜六
		
		public function copyShallow( _obj:Object ):void
		{
			var sourceObj:BBreakDownRuleDefItem = BBreakDownRuleDefItem(_obj);
			this.version = sourceObj.version;
			this.isConnected = sourceObj.isConnected;
			this.id = sourceObj.id;
			this.period = sourceObj.period;
			this.breakDownRule = sourceObj.breakDownRule;
			this.week1 = sourceObj.week1;
			this.week2 = sourceObj.week2;
			this.week3 = sourceObj.week3;
			this.week4 = sourceObj.week4;
			this.week5 = sourceObj.week5;
			this.week6 = sourceObj.week6;
			this.comments = sourceObj.comments;
			this.firstDay = sourceObj.firstDay;
			this.weekCode = sourceObj.weekCode;
			this.num_week = sourceObj.num_week;
		}
		
		public function copyDeep( _obj:Object ):void
		{
			var sourceObj:BBreakDownRuleDefItem = BBreakDownRuleDefItem(_obj);
			this.copyShallow( sourceObj );
		}
		
		public function getPercentValue(_num:Number):int
		{
			if(_num==1)
				return this.week1;
			if(_num==2)
				return this.week2;
			if(_num==3)
				return this.week3;
			if(_num==4)
				return this.week4;
			if(_num==5)
				return this.week5;
			if(_num==6)
				return this.week6;
			return 0;
		}
	}
}