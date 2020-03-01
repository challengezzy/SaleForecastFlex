package dmdd.dmddas.dataaccess.aidobject
{
	import dmdd.dmddas.common.constant.BizConst;
	import dmdd.dmddas.common.constant.SysConst;
	import dmdd.dmddas.common.utils.UtilPeriod;
	import dmdd.dmddas.dataaccess.bizobject.BBizData;
	import dmdd.dmddas.dataaccess.bizobject.BOrganization;
	import dmdd.dmddas.dataaccess.bizobject.BOrganizationCharacter;
	import dmdd.dmddas.dataaccess.bizobject.BProduct;
	import dmdd.dmddas.dataaccess.bizobject.BProductCharacter;
	
	import mx.collections.ArrayCollection;


	/**
	 * 界面行数据
	 * 每数据记录界面上一行数据，
	 * 数据的基本维度为 (产品,组织,产品特征,组织特征,业务数据)
	 * 期间范围指明了行中有效的数据起止
	 * 明细产品组织ID指明了该行数据覆盖的业务范围
	 * periodData记录了行中各列的数据值,如此记录是为了与界面上按期间做列显示
	 * periodDataBak纪录了相应数据值的备份,是为了支持数据修改时的对比来确定是否修改,以及到服务器端后做一定程度上的版本检查
	 * 数据修改时,对数据版本控制的机制：用明细产品组织ID重新查询数据与periodDataBak进行对比,没有变化的话，乐观的认为没有变化
	 * 如此乐观的版本检查机制的原因：把单个数据对象个体查询出来并传递到客户端处理后再传回服务器端保存来做严格版本控制,会产生性能问题
	 * 现行设计机制,则传和数据来进行,可以在一定程度上解决上述性能问题
	 * 2010.06.18 by liuzhen
	 */ 
	[Bindable]
	[RemoteClass(alias="dmdd.dmddjava.dataaccess.aidobject.ABUiRowData")]		
	public class ABUiRowData
	{
		public function ABUiRowData()
		{
		}
		
		public var product:BProduct = null;
		public var productCharacter:BProductCharacter = null;
		public var organization:BOrganization = null;
		public var organizationCharacter:BOrganizationCharacter = null;
		public var bizData:BBizData = null;
		public var periodBegin:int = SysConst.PERIOD_NULL;
		public var periodEnd:int = SysConst.PERIOD_NULL;	
		
		/**
		 * 存放明细ProOrg的Id字符串，元素形式为 (pid,oid)，例如 (101,909)
		 * 没有直接以字符串形式存放，是考虑到万一字符串过长导致查询不支持的时候，可以分部进行
		 */ 
		public var detailProOrgIds:ArrayCollection = new ArrayCollection();
		
		[Transient]
		public var isChecked:Boolean = false;
		
		/** 是否(1/0)以%显示 */
		public var showPercent:int = 0;
				
		public var periodDataValue00:Number = NaN;
		public var periodDataValue01:Number = NaN;
		public var periodDataValue02:Number = NaN;
		public var periodDataValue03:Number = NaN;
		public var periodDataValue04:Number = NaN;
		public var periodDataValue05:Number = NaN;
		public var periodDataValue06:Number = NaN;
		public var periodDataValue07:Number = NaN;
		public var periodDataValue08:Number = NaN;
		public var periodDataValue09:Number = NaN;
		public var periodDataValue10:Number = NaN;
		public var periodDataValue11:Number = NaN;
		public var periodDataValue12:Number = NaN;
		public var periodDataValue13:Number = NaN;
		public var periodDataValue14:Number = NaN;
		public var periodDataValue15:Number = NaN;
		public var periodDataValue16:Number = NaN;
		public var periodDataValue17:Number = NaN;
		public var periodDataValue18:Number = NaN;
		public var periodDataValue19:Number = NaN;
		public var periodDataValue20:Number = NaN;
		public var periodDataValue21:Number = NaN;
		public var periodDataValue22:Number = NaN;
		public var periodDataValue23:Number = NaN;
		public var periodDataValue24:Number = NaN;
		public var periodDataValue25:Number = NaN;
		public var periodDataValue26:Number = NaN;
		public var periodDataValue27:Number = NaN;
		public var periodDataValue28:Number = NaN;
		public var periodDataValue29:Number = NaN;	
		
		public var periodDataValue30:Number = NaN;
		public var periodDataValue31:Number = NaN;
		public var periodDataValue32:Number = NaN;
		public var periodDataValue33:Number = NaN;
		public var periodDataValue34:Number = NaN;
		public var periodDataValue35:Number = NaN;
		public var periodDataValue36:Number = NaN;
		public var periodDataValue37:Number = NaN;
		public var periodDataValue38:Number = NaN;
		public var periodDataValue39:Number = NaN;	
		
		public var periodDataValue40:Number = NaN;
		public var periodDataValue41:Number = NaN;
		public var periodDataValue42:Number = NaN;
		public var periodDataValue43:Number = NaN;
		public var periodDataValue44:Number = NaN;
		public var periodDataValue45:Number = NaN;
		public var periodDataValue46:Number = NaN;
		public var periodDataValue47:Number = NaN;
		public var periodDataValue48:Number = NaN;
		public var periodDataValue49:Number = NaN;			
		
		public var periodDataValue50:Number = NaN;
		public var periodDataValue51:Number = NaN;
		public var periodDataValue52:Number = NaN;
		public var periodDataValue53:Number = NaN;
		public var periodDataValue54:Number = NaN;
		public var periodDataValue55:Number = NaN;
		public var periodDataValue56:Number = NaN;
		public var periodDataValue57:Number = NaN;
		public var periodDataValue58:Number = NaN;
		public var periodDataValue59:Number = NaN;					
		
		public var periodDataValue60:Number = NaN;
		public var periodDataValue61:Number = NaN;
		public var periodDataValue62:Number = NaN;
		public var periodDataValue63:Number = NaN;
		public var periodDataValue64:Number = NaN;
		public var periodDataValue65:Number = NaN;
		public var periodDataValue66:Number = NaN;
		public var periodDataValue67:Number = NaN;
		public var periodDataValue68:Number = NaN;
		public var periodDataValue69:Number = NaN;
		public var periodDataValue70:Number = NaN;
		public var periodDataValue71:Number = NaN;
		public var periodDataValue72:Number = NaN;
		public var periodDataValue73:Number = NaN;
		public var periodDataValue74:Number = NaN;
		public var periodDataValue75:Number = NaN;
		public var periodDataValue76:Number = NaN;
		public var periodDataValue77:Number = NaN;
		
		public var periodDataValue00Bak:Number = NaN;
		public var periodDataValue01Bak:Number = NaN;
		public var periodDataValue02Bak:Number = NaN;
		public var periodDataValue03Bak:Number = NaN;
		public var periodDataValue04Bak:Number = NaN;
		public var periodDataValue05Bak:Number = NaN;
		public var periodDataValue06Bak:Number = NaN;
		public var periodDataValue07Bak:Number = NaN;
		public var periodDataValue08Bak:Number = NaN;
		public var periodDataValue09Bak:Number = NaN;
		public var periodDataValue10Bak:Number = NaN;
		public var periodDataValue11Bak:Number = NaN;
		public var periodDataValue12Bak:Number = NaN;
		public var periodDataValue13Bak:Number = NaN;
		public var periodDataValue14Bak:Number = NaN;
		public var periodDataValue15Bak:Number = NaN;
		public var periodDataValue16Bak:Number = NaN;
		public var periodDataValue17Bak:Number = NaN;
		public var periodDataValue18Bak:Number = NaN;
		public var periodDataValue19Bak:Number = NaN;
		public var periodDataValue20Bak:Number = NaN;
		public var periodDataValue21Bak:Number = NaN;
		public var periodDataValue22Bak:Number = NaN;
		public var periodDataValue23Bak:Number = NaN;	
		public var periodDataValue24Bak:Number = NaN;
		public var periodDataValue25Bak:Number = NaN;
		public var periodDataValue26Bak:Number = NaN;
		public var periodDataValue27Bak:Number = NaN;
		public var periodDataValue28Bak:Number = NaN;
		public var periodDataValue29Bak:Number = NaN;	
		
		public var periodDataValue30Bak:Number = NaN;
		public var periodDataValue31Bak:Number = NaN;
		public var periodDataValue32Bak:Number = NaN;
		public var periodDataValue33Bak:Number = NaN;
		public var periodDataValue34Bak:Number = NaN;
		public var periodDataValue35Bak:Number = NaN;
		public var periodDataValue36Bak:Number = NaN;
		public var periodDataValue37Bak:Number = NaN;
		public var periodDataValue38Bak:Number = NaN;
		public var periodDataValue39Bak:Number = NaN;	
		
		public var periodDataValue40Bak:Number = NaN;
		public var periodDataValue41Bak:Number = NaN;
		public var periodDataValue42Bak:Number = NaN;
		public var periodDataValue43Bak:Number = NaN;
		public var periodDataValue44Bak:Number = NaN;
		public var periodDataValue45Bak:Number = NaN;
		public var periodDataValue46Bak:Number = NaN;
		public var periodDataValue47Bak:Number = NaN;
		public var periodDataValue48Bak:Number = NaN;
		public var periodDataValue49Bak:Number = NaN;			
		
		public var periodDataValue50Bak:Number = NaN;
		public var periodDataValue51Bak:Number = NaN;
		public var periodDataValue52Bak:Number = NaN;
		public var periodDataValue53Bak:Number = NaN;
		public var periodDataValue54Bak:Number = NaN;
		public var periodDataValue55Bak:Number = NaN;
		public var periodDataValue56Bak:Number = NaN;
		public var periodDataValue57Bak:Number = NaN;
		public var periodDataValue58Bak:Number = NaN;
		public var periodDataValue59Bak:Number = NaN;		
		
		public var periodDataValue60Bak:Number = NaN;
		public var periodDataValue61Bak:Number = NaN;
		public var periodDataValue62Bak:Number = NaN;
		public var periodDataValue63Bak:Number = NaN;
		public var periodDataValue64Bak:Number = NaN;
		public var periodDataValue65Bak:Number = NaN;
		public var periodDataValue66Bak:Number = NaN;
		public var periodDataValue67Bak:Number = NaN;
		public var periodDataValue68Bak:Number = NaN;
		public var periodDataValue69Bak:Number = NaN;
		public var periodDataValue70Bak:Number = NaN;
		public var periodDataValue71Bak:Number = NaN;
		public var periodDataValue72Bak:Number = NaN;
		public var periodDataValue73Bak:Number = NaN;
		public var periodDataValue74Bak:Number = NaN;
		public var periodDataValue75Bak:Number = NaN;
		public var periodDataValue76Bak:Number = NaN;
		public var periodDataValue77Bak:Number = NaN;
		
		public function pubFun4getPeriodDataValue( _ithPeriod:int ):Number
		{
			switch( _ithPeriod )
			{
				case  0: return this.periodDataValue00;
				case  1: return this.periodDataValue01;
				case  2: return this.periodDataValue02;
				case  3: return this.periodDataValue03;
				case  4: return this.periodDataValue04;
				case  5: return this.periodDataValue05;
				case  6: return this.periodDataValue06;
				case  7: return this.periodDataValue07;
				case  8: return this.periodDataValue08;
				case  9: return this.periodDataValue09;
				case 10: return this.periodDataValue10;
				case 11: return this.periodDataValue11;
				case 12: return this.periodDataValue12;
				case 13: return this.periodDataValue13;
				case 14: return this.periodDataValue14;
				case 15: return this.periodDataValue15;
				case 16: return this.periodDataValue16;
				case 17: return this.periodDataValue17;
				case 18: return this.periodDataValue18;
				case 19: return this.periodDataValue19;
				case 20: return this.periodDataValue20;
				case 21: return this.periodDataValue21;
				case 22: return this.periodDataValue22;
				case 23: return this.periodDataValue23;
				case 24: return this.periodDataValue24;
				case 25: return this.periodDataValue25;
				case 26: return this.periodDataValue26;
				case 27: return this.periodDataValue27;
				case 28: return this.periodDataValue28;
				case 29: return this.periodDataValue29;		
					
				case 30: return this.periodDataValue30;
				case 31: return this.periodDataValue31;
				case 32: return this.periodDataValue32;
				case 33: return this.periodDataValue33;
				case 34: return this.periodDataValue34;
				case 35: return this.periodDataValue35;
				case 36: return this.periodDataValue36;
				case 37: return this.periodDataValue37;
				case 38: return this.periodDataValue38;
				case 39: return this.periodDataValue39;	
					
				case 40: return this.periodDataValue40;
				case 41: return this.periodDataValue41;
				case 42: return this.periodDataValue42;
				case 43: return this.periodDataValue43;
				case 44: return this.periodDataValue44;
				case 45: return this.periodDataValue45;
				case 46: return this.periodDataValue46;
				case 47: return this.periodDataValue47;
				case 48: return this.periodDataValue48;
				case 49: return this.periodDataValue49;		
					
				case 50: return this.periodDataValue50;
				case 51: return this.periodDataValue51;
				case 52: return this.periodDataValue52;
				case 53: return this.periodDataValue53;
				case 54: return this.periodDataValue54;
				case 55: return this.periodDataValue55;
				case 56: return this.periodDataValue56;
				case 57: return this.periodDataValue57;
				case 58: return this.periodDataValue58;
				case 59: return this.periodDataValue59;	
					
				case 60: return this.periodDataValue60;
				case 61: return this.periodDataValue61;
				case 62: return this.periodDataValue62;
				case 63: return this.periodDataValue63;
				case 64: return this.periodDataValue64;
				case 65: return this.periodDataValue65;
				case 66: return this.periodDataValue66;
				case 67: return this.periodDataValue67;
				case 68: return this.periodDataValue68;
				case 69: return this.periodDataValue69;	
				case 70: return this.periodDataValue70;
				case 71: return this.periodDataValue71;
				case 72: return this.periodDataValue72;
				case 73: return this.periodDataValue73;
				case 74: return this.periodDataValue74;
				case 75: return this.periodDataValue75;
				case 76: return this.periodDataValue76;
				case 77: return this.periodDataValue77;
			}
			
			return NaN;
		}
		
		
		public function pubFun4setPeriodDataValue( _ithPeriod:int, _value:Number ):void
		{
			switch( _ithPeriod )
			{
				case  0: this.periodDataValue00 = _value; return;
				case  1: this.periodDataValue01 = _value; return;
				case  2: this.periodDataValue02 = _value; return;
				case  3: this.periodDataValue03 = _value; return;
				case  4: this.periodDataValue04 = _value; return;
				case  5: this.periodDataValue05 = _value; return;
				case  6: this.periodDataValue06 = _value; return;
				case  7: this.periodDataValue07 = _value; return;
				case  8: this.periodDataValue08 = _value; return;
				case  9: this.periodDataValue09 = _value; return;
				case 10: this.periodDataValue10 = _value; return;
				case 11: this.periodDataValue11 = _value; return;
				case 12: this.periodDataValue12 = _value; return;
				case 13: this.periodDataValue13 = _value; return;
				case 14: this.periodDataValue14 = _value; return;
				case 15: this.periodDataValue15 = _value; return;
				case 16: this.periodDataValue16 = _value; return;
				case 17: this.periodDataValue17 = _value; return;
				case 18: this.periodDataValue18 = _value; return;
				case 19: this.periodDataValue19 = _value; return;
				case 20: this.periodDataValue20 = _value; return;
				case 21: this.periodDataValue21 = _value; return;
				case 22: this.periodDataValue22 = _value; return;
				case 23: this.periodDataValue23 = _value; return;
				case 24: this.periodDataValue24 = _value; return;
				case 25: this.periodDataValue25 = _value; return;
				case 26: this.periodDataValue26 = _value; return;
				case 27: this.periodDataValue27 = _value; return;
				case 28: this.periodDataValue28 = _value; return;
				case 29: this.periodDataValue29 = _value; return;
					
				case 30: this.periodDataValue30 = _value; return;
				case 31: this.periodDataValue31 = _value; return;
				case 32: this.periodDataValue32 = _value; return;
				case 33: this.periodDataValue33 = _value; return;
				case 34: this.periodDataValue34 = _value; return;
				case 35: this.periodDataValue35 = _value; return;
				case 36: this.periodDataValue36 = _value; return;
				case 37: this.periodDataValue37 = _value; return;
				case 38: this.periodDataValue38 = _value; return;
				case 39: this.periodDataValue39 = _value; return;
					
				case 40: this.periodDataValue40 = _value; return;
				case 41: this.periodDataValue41 = _value; return;
				case 42: this.periodDataValue42 = _value; return;
				case 43: this.periodDataValue43 = _value; return;
				case 44: this.periodDataValue44 = _value; return;
				case 45: this.periodDataValue45 = _value; return;
				case 46: this.periodDataValue46 = _value; return;
				case 47: this.periodDataValue47 = _value; return;
				case 48: this.periodDataValue48 = _value; return;
				case 49: this.periodDataValue49 = _value; return;		
					
				case 50: this.periodDataValue50 = _value; return;
				case 51: this.periodDataValue51 = _value; return;
				case 52: this.periodDataValue52 = _value; return;
				case 53: this.periodDataValue53 = _value; return;
				case 54: this.periodDataValue54 = _value; return;
				case 55: this.periodDataValue55 = _value; return;
				case 56: this.periodDataValue56 = _value; return;
				case 57: this.periodDataValue57 = _value; return;
				case 58: this.periodDataValue58 = _value; return;
				case 59: this.periodDataValue59 = _value; return;	
					
				case 60: this.periodDataValue60 = _value; return;
				case 61: this.periodDataValue61 = _value; return;
				case 62: this.periodDataValue62 = _value; return;
				case 63: this.periodDataValue63 = _value; return;
				case 64: this.periodDataValue64 = _value; return;
				case 65: this.periodDataValue65 = _value; return;
				case 66: this.periodDataValue66 = _value; return;
				case 67: this.periodDataValue67 = _value; return;
				case 68: this.periodDataValue68 = _value; return;
				case 69: this.periodDataValue69 = _value; return;
				case 70: this.periodDataValue70 = _value; return;
				case 71: this.periodDataValue71 = _value; return;
				case 72: this.periodDataValue72 = _value; return;
				case 73: this.periodDataValue73 = _value; return;
				case 74: this.periodDataValue74 = _value; return;
				case 75: this.periodDataValue75 = _value; return;
				case 76: this.periodDataValue76 = _value; return;
				case 77: this.periodDataValue77 = _value; return;
			}
		} 
		
		
		public function pubFun4getPeriodDataValueBak( _ithPeriod:int ):Number
		{
			switch( _ithPeriod )
			{
				case  0: return this.periodDataValue00Bak;
				case  1: return this.periodDataValue01Bak;
				case  2: return this.periodDataValue02Bak;
				case  3: return this.periodDataValue03Bak;
				case  4: return this.periodDataValue04Bak;
				case  5: return this.periodDataValue05Bak;
				case  6: return this.periodDataValue06Bak;
				case  7: return this.periodDataValue07Bak;
				case  8: return this.periodDataValue08Bak;
				case  9: return this.periodDataValue09Bak;
				case 10: return this.periodDataValue10Bak;
				case 11: return this.periodDataValue11Bak;
				case 12: return this.periodDataValue12Bak;
				case 13: return this.periodDataValue13Bak;
				case 14: return this.periodDataValue14Bak;
				case 15: return this.periodDataValue15Bak;
				case 16: return this.periodDataValue16Bak;
				case 17: return this.periodDataValue17Bak;
				case 18: return this.periodDataValue18Bak;
				case 19: return this.periodDataValue19Bak;
				case 20: return this.periodDataValue20Bak;
				case 21: return this.periodDataValue21Bak;
				case 22: return this.periodDataValue22Bak;
				case 23: return this.periodDataValue23Bak;
				case 24: return this.periodDataValue24Bak;
				case 25: return this.periodDataValue25Bak;
				case 26: return this.periodDataValue26Bak;
				case 27: return this.periodDataValue27Bak;
				case 28: return this.periodDataValue28Bak;
				case 29: return this.periodDataValue29Bak;		
					
				case 30: return this.periodDataValue30Bak;
				case 31: return this.periodDataValue31Bak;
				case 32: return this.periodDataValue32Bak;
				case 33: return this.periodDataValue33Bak;
				case 34: return this.periodDataValue34Bak;
				case 35: return this.periodDataValue35Bak;
				case 36: return this.periodDataValue36Bak;
				case 37: return this.periodDataValue37Bak;
				case 38: return this.periodDataValue38Bak;
				case 39: return this.periodDataValue39Bak;	
					
				case 40: return this.periodDataValue40Bak;
				case 41: return this.periodDataValue41Bak;
				case 42: return this.periodDataValue42Bak;
				case 43: return this.periodDataValue43Bak;
				case 44: return this.periodDataValue44Bak;
				case 45: return this.periodDataValue45Bak;
				case 46: return this.periodDataValue46Bak;
				case 47: return this.periodDataValue47Bak;
				case 48: return this.periodDataValue48Bak;
				case 49: return this.periodDataValue49Bak;		
					
				case 50: return this.periodDataValue50Bak;
				case 51: return this.periodDataValue51Bak;
				case 52: return this.periodDataValue52Bak;
				case 53: return this.periodDataValue53Bak;
				case 54: return this.periodDataValue54Bak;
				case 55: return this.periodDataValue55Bak;
				case 56: return this.periodDataValue56Bak;
				case 57: return this.periodDataValue57Bak;
				case 58: return this.periodDataValue58Bak;
				case 59: return this.periodDataValue59Bak;
					
				case 60: return this.periodDataValue60Bak;
				case 61: return this.periodDataValue61Bak;
				case 62: return this.periodDataValue62Bak;
				case 63: return this.periodDataValue63Bak;
				case 64: return this.periodDataValue64Bak;
				case 65: return this.periodDataValue65Bak;
				case 66: return this.periodDataValue66Bak;
				case 67: return this.periodDataValue67Bak;
				case 68: return this.periodDataValue68Bak;
				case 69: return this.periodDataValue69Bak;
				case 70: return this.periodDataValue70Bak;
				case 71: return this.periodDataValue71Bak;
				case 72: return this.periodDataValue72Bak;
				case 73: return this.periodDataValue73Bak;
				case 74: return this.periodDataValue74Bak;
				case 75: return this.periodDataValue75Bak;
				case 76: return this.periodDataValue76Bak;
				case 77: return this.periodDataValue77Bak;
			}
			
			return NaN;
		}
		
		
		public function pubFun4setPeriodDataValueBak( _ithPeriod:int, _value:Number ):void
		{
			switch( _ithPeriod )
			{
				case  0: this.periodDataValue00Bak = _value; return;
				case  1: this.periodDataValue01Bak = _value; return;
				case  2: this.periodDataValue02Bak = _value; return;
				case  3: this.periodDataValue03Bak = _value; return;
				case  4: this.periodDataValue04Bak = _value; return;
				case  5: this.periodDataValue05Bak = _value; return;
				case  6: this.periodDataValue06Bak = _value; return;
				case  7: this.periodDataValue07Bak = _value; return;
				case  8: this.periodDataValue08Bak = _value; return;
				case  9: this.periodDataValue09Bak = _value; return;
				case 10: this.periodDataValue10Bak = _value; return;
				case 11: this.periodDataValue11Bak = _value; return;
				case 12: this.periodDataValue12Bak = _value; return;
				case 13: this.periodDataValue13Bak = _value; return;
				case 14: this.periodDataValue14Bak = _value; return;
				case 15: this.periodDataValue15Bak = _value; return;
				case 16: this.periodDataValue16Bak = _value; return;
				case 17: this.periodDataValue17Bak = _value; return;
				case 18: this.periodDataValue18Bak = _value; return;
				case 19: this.periodDataValue19Bak = _value; return;
				case 20: this.periodDataValue20Bak = _value; return;
				case 21: this.periodDataValue21Bak = _value; return;
				case 22: this.periodDataValue22Bak = _value; return;
				case 23: this.periodDataValue23Bak = _value; return;
				case 24: this.periodDataValue24Bak = _value; return;
				case 25: this.periodDataValue25Bak = _value; return;
				case 26: this.periodDataValue26Bak = _value; return;
				case 27: this.periodDataValue27Bak = _value; return;
				case 28: this.periodDataValue28Bak = _value; return;
				case 29: this.periodDataValue29Bak = _value; return;
					
				case 30: this.periodDataValue30Bak = _value; return;
				case 31: this.periodDataValue31Bak = _value; return;
				case 32: this.periodDataValue32Bak = _value; return;
				case 33: this.periodDataValue33Bak = _value; return;
				case 34: this.periodDataValue34Bak = _value; return;
				case 35: this.periodDataValue35Bak = _value; return;
				case 36: this.periodDataValue36Bak = _value; return;
				case 37: this.periodDataValue37Bak = _value; return;
				case 38: this.periodDataValue38Bak = _value; return;
				case 39: this.periodDataValue39Bak = _value; return;
					
				case 40: this.periodDataValue40Bak = _value; return;
				case 41: this.periodDataValue41Bak = _value; return;
				case 42: this.periodDataValue42Bak = _value; return;
				case 43: this.periodDataValue43Bak = _value; return;
				case 44: this.periodDataValue44Bak = _value; return;
				case 45: this.periodDataValue45Bak = _value; return;
				case 46: this.periodDataValue46Bak = _value; return;
				case 47: this.periodDataValue47Bak = _value; return;
				case 48: this.periodDataValue48Bak = _value; return;
				case 49: this.periodDataValue49Bak = _value; return;		
					
				case 50: this.periodDataValue50Bak = _value; return;
				case 51: this.periodDataValue51Bak = _value; return;
				case 52: this.periodDataValue52Bak = _value; return;
				case 53: this.periodDataValue53Bak = _value; return;
				case 54: this.periodDataValue54Bak = _value; return;
				case 55: this.periodDataValue55Bak = _value; return;
				case 56: this.periodDataValue56Bak = _value; return;
				case 57: this.periodDataValue57Bak = _value; return;
				case 58: this.periodDataValue58Bak = _value; return;
				case 59: this.periodDataValue59Bak = _value; return;
					
				case 60: this.periodDataValue60Bak = _value; return;
				case 61: this.periodDataValue61Bak = _value; return;
				case 62: this.periodDataValue62Bak = _value; return;
				case 63: this.periodDataValue63Bak = _value; return;
				case 64: this.periodDataValue64Bak = _value; return;
				case 65: this.periodDataValue65Bak = _value; return;
				case 66: this.periodDataValue66Bak = _value; return;
				case 67: this.periodDataValue67Bak = _value; return;
				case 68: this.periodDataValue68Bak = _value; return;
				case 69: this.periodDataValue69Bak = _value; return;
				case 70: this.periodDataValue70Bak = _value; return;
				case 71: this.periodDataValue71Bak = _value; return;
				case 72: this.periodDataValue72Bak = _value; return;
				case 73: this.periodDataValue73Bak = _value; return;
				case 74: this.periodDataValue74Bak = _value; return;
				case 75: this.periodDataValue75Bak = _value; return;
				case 76: this.periodDataValue76Bak = _value; return;
				case 77: this.periodDataValue77Bak = _value; return;
			}
		} 
		
		
		public function exchangeUnit( _exchangeRate_old:Number, _exchangeRate_new:Number ):void
		{
			if( isNaN( _exchangeRate_old ) || isNaN( _exchangeRate_new ) )
			{
				return;	
			}
			
			if( this.bizData == null || this.bizData.type == BizConst.BIZDATA_TYPE_KPI || 
				this.bizData.type == BizConst.BIZDATA_TYPE_MONEY || this.bizData.type == BizConst.BIZDATA_TYPE_MONEYCOMB )
			{
				return;
			}
			
			var periodDiff:int = UtilPeriod.getPeriodDifference( this.periodBegin, this.periodEnd );
			if( periodDiff == SysConst.PERIOD_DIFF_NULL )
			{
				return;
			}		

			var i:int;
			var value_byBase:Number;
			for( i=0; i<= periodDiff; i=i+1 )
			{
				value_byBase = Math.round( this.pubFun4getPeriodDataValue(i) * _exchangeRate_old );	//	先换算成整数基准值
				this.pubFun4setPeriodDataValue( i, value_byBase * 1.0 / _exchangeRate_new );
			}
		}
		
		public function exchangeStaticsUnit( _exchangeRate_old:Number, _exchangeRate_new:Number ):void
		{
			if( isNaN( _exchangeRate_old ) || isNaN( _exchangeRate_new ) )
			{
				return;	
			}
			
			if( this.bizData == null || this.bizData.type == BizConst.BIZDATA_TYPE_KPI || 
				this.bizData.type == BizConst.BIZDATA_TYPE_MONEY || this.bizData.type == BizConst.BIZDATA_TYPE_MONEYCOMB )
			{
				return;
			}
			
			var periodDiff:int = UtilPeriod.getPeriodDifference( this.periodBegin, this.periodEnd );
			if( periodDiff == SysConst.PERIOD_DIFF_NULL )
			{
				return;
			}		
			
			var i:int;
			var value_byBase:Number;
			for( i=0; i<= periodDiff+1; i=i+1 )
			{
				value_byBase = Math.round( this.pubFun4getPeriodDataValue(i) * _exchangeRate_old );	//	先换算成整数基准值
				this.pubFun4setPeriodDataValue( i, value_byBase * 1.0 / _exchangeRate_new );
			}
		}
		
		public function exchangeKPIUnit( _exchangeRate_old:Number, _exchangeRate_new:Number ):void
		{
			if( isNaN( _exchangeRate_old ) || isNaN( _exchangeRate_new ) )
			{
				return;	
			}
			
			if( this.bizData == null )
			{
				return;
			}
			
			var periodDiff:int = UtilPeriod.getPeriodDifference( this.periodBegin, this.periodEnd );
			if( periodDiff == SysConst.PERIOD_DIFF_NULL )
			{
				return;
			}		
			
			var i:int;
			var value_byBase:Number;
			for( i=0; i<= periodDiff; i=i+1 )
			{
				value_byBase = Math.round( this.pubFun4getPeriodDataValue(i) * _exchangeRate_old );	//	先换算成整数基准值
				this.pubFun4setPeriodDataValue( i, value_byBase * 1.0 / _exchangeRate_new );
				value_byBase = Math.round( this.pubFun4getPeriodDataValueBak(i) * _exchangeRate_old );	//	先换算成整数基准值
				this.pubFun4setPeriodDataValueBak( i, value_byBase * 1.0 / _exchangeRate_new );
			}
		}
		
		public function exchangeConversion( _exchangeRate_old:Number, _exchangeRate_new:Number,proportion:Number ):void
		{
			if( isNaN( _exchangeRate_old ) || isNaN( _exchangeRate_new ) )
			{
				return;	
			}
			
			if( this.bizData == null || this.bizData.type == BizConst.BIZDATA_TYPE_KPI || 
				this.bizData.type == BizConst.BIZDATA_TYPE_MONEY || this.bizData.type == BizConst.BIZDATA_TYPE_MONEYCOMB )
			{
				return;
			}
			
			var periodDiff:int = UtilPeriod.getPeriodDifference( this.periodBegin, this.periodEnd );
			if( periodDiff == SysConst.PERIOD_DIFF_NULL )
			{
				return;
			}		
			
			var i:int;
			var value_byBase:Number;
			for( i=0; i<= periodDiff; i=i+1 )
			{
				value_byBase = Math.round( this.pubFun4getPeriodDataValue(i) * _exchangeRate_old );	//	先换算成整数基准值
				this.pubFun4setPeriodDataValue( i, value_byBase * 1.0 / _exchangeRate_new *proportion);
			}
		}
		
		public function copyDeep( _sourceObj:ABUiRowData ):void
		{
			if( _sourceObj == null )
			{
				return;
			}
			this.product = _sourceObj.product;
			this.productCharacter = _sourceObj.productCharacter;
			this.organization = _sourceObj.organization;
			this.organizationCharacter = _sourceObj.organizationCharacter;
			this.bizData = _sourceObj.bizData;
			this.periodBegin = _sourceObj.periodBegin;
			this.periodEnd = _sourceObj.periodEnd;
			this.detailProOrgIds = _sourceObj.detailProOrgIds;
			this.isChecked = _sourceObj.isChecked;
			
			var i:int;
			var periodDiff:int = UtilPeriod.getPeriodDifference( this.periodBegin, this.periodEnd );
			if( periodDiff == SysConst.PERIOD_DIFF_NULL )
			{
				return;
			}
			for( i=0; i<=periodDiff; i=i+1 )
			{
				this.pubFun4setPeriodDataValue( i, _sourceObj.pubFun4getPeriodDataValue(i) );
				this.pubFun4setPeriodDataValueBak( i, _sourceObj.pubFun4getPeriodDataValueBak(i) );
			}
		}		
	}
}