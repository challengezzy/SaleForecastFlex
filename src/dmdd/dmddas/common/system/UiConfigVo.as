package dmdd.dmddas.common.system
{
	/**
	 * 系统配置中的用户UI定义
	 * */
	public class UiConfigVo
	{
		
		//是否显示
		private var _perPageNumber:int = 200;
		
		private var _showProCode:Boolean = true;
		private var _showProName:Boolean = true;
		private var _showOrgCode:Boolean = true;
		private var _showOrgName:Boolean = true;
		//表格中字面显示宽度
		private var _showProCharCode:Boolean = true;
		private var _showProCharName:Boolean = true;
		private var _showOrgCharCode:Boolean = true;
		private var _showOrgCharName:Boolean = true;
		//表格中字面显示宽度
		private var _proCodeWidth:int = 130;
		private var _proNameWidth:int = 130;
		private var _orgCodeWidth:int = 130;
		private var _orgNameWidth:int = 130;
		
		private var _proCodeCharWidth:int = 130;
		private var _proNameCharWidth:int = 130;
		private var _orgCodeCharWidth:int = 130;
		private var _orgNameCharWidth:int = 130;
		
		private var _bizdataWidth:int = 130;
		private var _periodValueWidth:int = 80;
		
		private var configXml:XML = null;
		
		//快速条件中的期间范围，前3、后3
		private var _periodBegin:int = -3;
		private var _periodEnd:int = 3;
		
		/**
		 * 设置系统XML
		 * */
		public function setSysMetaData(_configXml:XML):void{
			configXml = _configXml;
			
			if(configXml == null){
				return ;
			}
			
			//设置分页每页行数
			if(configXml !=null &&  configXml.paging != null){
				_perPageNumber = Number(configXml.paging.perPageNumber);
			}
			ClientEnvironment.setSysParamPageSize(_perPageNumber);
			
			//设置默认查询期间
			//设置分页每页行数
			if(configXml !=null &&  configXml.queryCondition != null && configXml.queryCondition.periodScope != null){
				var qcXml:XML = configXml.queryCondition.periodScope[0];
				_periodBegin = qcXml.@beginNum;
				_periodEnd = qcXml.@endNum;
			}
			
			//设置数据列显示及列宽度
			var gridColumnXml:XML = configXml.uiConfig.datagridColumn[0];
			var proXml:XML = gridColumnXml.product[0];
			_showProCode = proXml.@codeVisible == "false"?false:true;
			_proCodeWidth = proXml.@codeWidth;
			_showProName = proXml.@nameVisible == "false"?false:true;
			_proNameWidth = proXml.@nameWidth;
			
			var orgXml:XML = gridColumnXml.organization[0];
			_showOrgCode = orgXml.@codeVisible == "false"?false:true;
			_orgCodeWidth = orgXml.@codeWidth;
			_showOrgName = orgXml.@nameVisible == "false"?false:true;
			_orgNameWidth = orgXml.@nameWidth;
			
			var proCharXml:XML = gridColumnXml.productChar[0];
			_showProCharCode = proCharXml.@codeVisible == "false"?false:true;
			_proCodeCharWidth = proCharXml.@codeWidth;
			_showProCharName = proCharXml.@nameVisible == "false"?false:true;
			_proNameCharWidth = proCharXml.@nameWidth;
			
			var orgCharXml:XML = gridColumnXml.organizationChar[0];
			_showOrgCharCode = orgCharXml.@codeVisible == "false"?false:true;
			_orgCodeCharWidth = orgCharXml.@codeWidth;
			_showOrgCharName = orgCharXml.@nameVisible == "false"?false:true;
			_orgNameCharWidth = orgCharXml.@nameWidth;
			
			var bizdataXml:XML = gridColumnXml.bizdata[0];
			_bizdataWidth = bizdataXml.@width;
			
			var periodValueXml:XML = gridColumnXml.periodValue[0];
			_periodValueWidth = periodValueXml.@width;
		}
		
		public function get periodBegin():int{
			return _periodBegin;
		}
		
		public function get periodEnd():int{
			return _periodEnd;
		}
		
		public function get periodValueWidth():int
		{
			return _periodValueWidth;
		}

		public function get showProCode():Boolean
		{
			return _showProCode;
		}

		public function get perPageNumber():int
		{
			return _perPageNumber;
		}

		public function get showProName():Boolean
		{
			return _showProName;
		}

		public function get showOrgCode():Boolean
		{
			return _showOrgCode;
		}

		public function get showOrgName():Boolean
		{
			return _showOrgName;
		}

		public function get proCodeWidth():int
		{
			return _proCodeWidth;
		}

		public function get proNameWidth():int
		{
			return _proNameWidth;
		}

		public function get orgCodeWidth():int
		{
			return _orgCodeWidth;
		}

		public function get orgNameWidth():int
		{
			return _orgNameWidth;
		}

		public function get bizdataWidth():int
		{
			return _bizdataWidth;
		}

		public function get showProCharCode():Boolean
		{
			return _showProCharCode;
		}

		public function get showProCharName():Boolean
		{
			return _showProCharName;
		}

		public function get showOrgCharCode():Boolean
		{
			return _showOrgCharCode;
		}

		public function get showOrgCharName():Boolean
		{
			return _showOrgCharName;
		}

		public function get proCodeCharWidth():int
		{
			return _proCodeCharWidth;
		}

		public function get proNameCharWidth():int
		{
			return _proNameCharWidth;
		}

		public function get orgCodeCharWidth():int
		{
			return _orgCodeCharWidth;
		}

		public function get orgNameCharWidth():int
		{
			return _orgNameCharWidth;
		}


	}
}