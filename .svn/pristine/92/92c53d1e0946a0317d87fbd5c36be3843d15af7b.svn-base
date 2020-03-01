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
	import dmdd.dmddas.dataaccess.bizobject.BUnit;
	
	import mx.collections.ArrayCollection;
	import mx.formatters.NumberFormatter;

	/**
	 * 纵向报表行数据
	 * 每数据记录界面上一行数据，
	 * 数据的基本维度为 (产品,组织,产品特征,组织特征)
	 * 期间范围指明了行中有效的数据起止
	 * 2010.09.14 by liuzhen
	 */ 
	[Bindable]		
	public class AReportData
	{
		public function AReportData()
		{
		}
		
		public var product:BProduct = null;
		public var productCharacter:BProductCharacter = null;
		public var organization:BOrganization = null;
		public var organizationCharacter:BOrganizationCharacter = null;

		public var periodBegin:int = SysConst.PERIOD_NULL;
		public var periodEnd:int = SysConst.PERIOD_NULL;	
		
		public var arrBizData:ArrayCollection = new ArrayCollection();
		
		public var dataValue000:Number = NaN;
		public var dataValue001:Number = NaN;
		public var dataValue002:Number = NaN;
		public var dataValue003:Number = NaN;
		public var dataValue004:Number = NaN;
		public var dataValue005:Number = NaN;
		public var dataValue006:Number = NaN;
		public var dataValue007:Number = NaN;
		
		public var dataValue010:Number = NaN;
		public var dataValue011:Number = NaN;
		public var dataValue012:Number = NaN;
		public var dataValue013:Number = NaN;
		public var dataValue014:Number = NaN;
		public var dataValue015:Number = NaN;
		public var dataValue016:Number = NaN;
		public var dataValue017:Number = NaN;
		
		public var dataValue020:Number = NaN;
		public var dataValue021:Number = NaN;
		public var dataValue022:Number = NaN;
		public var dataValue023:Number = NaN;
		public var dataValue024:Number = NaN;
		public var dataValue025:Number = NaN;
		public var dataValue026:Number = NaN;
		public var dataValue027:Number = NaN;
		
		public var dataValue030:Number = NaN;
		public var dataValue031:Number = NaN;
		public var dataValue032:Number = NaN;
		public var dataValue033:Number = NaN;
		public var dataValue034:Number = NaN;
		public var dataValue035:Number = NaN;
		public var dataValue036:Number = NaN;
		public var dataValue037:Number = NaN;
		
		public var dataValue040:Number = NaN;
		public var dataValue041:Number = NaN;
		public var dataValue042:Number = NaN;
		public var dataValue043:Number = NaN;
		public var dataValue044:Number = NaN;
		public var dataValue045:Number = NaN;
		public var dataValue046:Number = NaN;
		public var dataValue047:Number = NaN;
		
		public var dataValue050:Number = NaN;
		public var dataValue051:Number = NaN;
		public var dataValue052:Number = NaN;
		public var dataValue053:Number = NaN;
		public var dataValue054:Number = NaN;
		public var dataValue055:Number = NaN;
		public var dataValue056:Number = NaN;
		public var dataValue057:Number = NaN;
		
		public var dataValue060:Number = NaN;
		public var dataValue061:Number = NaN;
		public var dataValue062:Number = NaN;
		public var dataValue063:Number = NaN;
		public var dataValue064:Number = NaN;
		public var dataValue065:Number = NaN;
		public var dataValue066:Number = NaN;
		public var dataValue067:Number = NaN;
		
		public var dataValue070:Number = NaN;
		public var dataValue071:Number = NaN;
		public var dataValue072:Number = NaN;
		public var dataValue073:Number = NaN;
		public var dataValue074:Number = NaN;
		public var dataValue075:Number = NaN;
		public var dataValue076:Number = NaN;
		public var dataValue077:Number = NaN;
		
		public var dataValue080:Number = NaN;
		public var dataValue081:Number = NaN;
		public var dataValue082:Number = NaN;
		public var dataValue083:Number = NaN;
		public var dataValue084:Number = NaN;
		public var dataValue085:Number = NaN;
		public var dataValue086:Number = NaN;
		public var dataValue087:Number = NaN;
		
		public var dataValue090:Number = NaN;
		public var dataValue091:Number = NaN;
		public var dataValue092:Number = NaN;
		public var dataValue093:Number = NaN;
		public var dataValue094:Number = NaN;
		public var dataValue095:Number = NaN;
		public var dataValue096:Number = NaN;
		public var dataValue097:Number = NaN;
		
		
		public var dataValue100:Number = NaN;
		public var dataValue101:Number = NaN;
		public var dataValue102:Number = NaN;
		public var dataValue103:Number = NaN;
		public var dataValue104:Number = NaN;
		public var dataValue105:Number = NaN;
		public var dataValue106:Number = NaN;
		public var dataValue107:Number = NaN;
		
		public var dataValue110:Number = NaN;
		public var dataValue111:Number = NaN;
		public var dataValue112:Number = NaN;
		public var dataValue113:Number = NaN;
		public var dataValue114:Number = NaN;
		public var dataValue115:Number = NaN;
		public var dataValue116:Number = NaN;
		public var dataValue117:Number = NaN;
		
		public var dataValue120:Number = NaN;
		public var dataValue121:Number = NaN;
		public var dataValue122:Number = NaN;
		public var dataValue123:Number = NaN;
		public var dataValue124:Number = NaN;
		public var dataValue125:Number = NaN;
		public var dataValue126:Number = NaN;
		public var dataValue127:Number = NaN;
		
		public var dataValue130:Number = NaN;
		public var dataValue131:Number = NaN;
		public var dataValue132:Number = NaN;
		public var dataValue133:Number = NaN;
		public var dataValue134:Number = NaN;
		public var dataValue135:Number = NaN;
		public var dataValue136:Number = NaN;
		public var dataValue137:Number = NaN;
		
		public var dataValue140:Number = NaN;
		public var dataValue141:Number = NaN;
		public var dataValue142:Number = NaN;
		public var dataValue143:Number = NaN;
		public var dataValue144:Number = NaN;
		public var dataValue145:Number = NaN;
		public var dataValue146:Number = NaN;
		public var dataValue147:Number = NaN;
		
		public var dataValue150:Number = NaN;
		public var dataValue151:Number = NaN;
		public var dataValue152:Number = NaN;
		public var dataValue153:Number = NaN;
		public var dataValue154:Number = NaN;
		public var dataValue155:Number = NaN;
		public var dataValue156:Number = NaN;
		public var dataValue157:Number = NaN;
		
		public var dataValue160:Number = NaN;
		public var dataValue161:Number = NaN;
		public var dataValue162:Number = NaN;
		public var dataValue163:Number = NaN;
		public var dataValue164:Number = NaN;
		public var dataValue165:Number = NaN;
		public var dataValue166:Number = NaN;
		public var dataValue167:Number = NaN;
		
		public var dataValue170:Number = NaN;
		public var dataValue171:Number = NaN;
		public var dataValue172:Number = NaN;
		public var dataValue173:Number = NaN;
		public var dataValue174:Number = NaN;
		public var dataValue175:Number = NaN;
		public var dataValue176:Number = NaN;
		public var dataValue177:Number = NaN;
		
		public var dataValue180:Number = NaN;
		public var dataValue181:Number = NaN;
		public var dataValue182:Number = NaN;
		public var dataValue183:Number = NaN;
		public var dataValue184:Number = NaN;
		public var dataValue185:Number = NaN;
		public var dataValue186:Number = NaN;
		public var dataValue187:Number = NaN;
		
		public var dataValue190:Number = NaN;
		public var dataValue191:Number = NaN;
		public var dataValue192:Number = NaN;
		public var dataValue193:Number = NaN;
		public var dataValue194:Number = NaN;
		public var dataValue195:Number = NaN;
		public var dataValue196:Number = NaN;
		public var dataValue197:Number = NaN;
		
		
		public var dataValue200:Number = NaN;
		public var dataValue201:Number = NaN;
		public var dataValue202:Number = NaN;
		public var dataValue203:Number = NaN;
		public var dataValue204:Number = NaN;
		public var dataValue205:Number = NaN;
		public var dataValue206:Number = NaN;
		public var dataValue207:Number = NaN;
		
		public var dataValue210:Number = NaN;
		public var dataValue211:Number = NaN;
		public var dataValue212:Number = NaN;
		public var dataValue213:Number = NaN;
		public var dataValue214:Number = NaN;
		public var dataValue215:Number = NaN;
		public var dataValue216:Number = NaN;
		public var dataValue217:Number = NaN;
		
		public var dataValue220:Number = NaN;
		public var dataValue221:Number = NaN;
		public var dataValue222:Number = NaN;
		public var dataValue223:Number = NaN;
		public var dataValue224:Number = NaN;
		public var dataValue225:Number = NaN;
		public var dataValue226:Number = NaN;
		public var dataValue227:Number = NaN;
		
		public var dataValue230:Number = NaN;
		public var dataValue231:Number = NaN;
		public var dataValue232:Number = NaN;
		public var dataValue233:Number = NaN;
		public var dataValue234:Number = NaN;
		public var dataValue235:Number = NaN;
		public var dataValue236:Number = NaN;
		public var dataValue237:Number = NaN;		
		
		public var dataValue240:Number = NaN;
		public var dataValue241:Number = NaN;
		public var dataValue242:Number = NaN;
		public var dataValue243:Number = NaN;
		public var dataValue244:Number = NaN;
		public var dataValue245:Number = NaN;
		public var dataValue246:Number = NaN;
		public var dataValue247:Number = NaN;
		
		public var dataValue250:Number = NaN;
		public var dataValue251:Number = NaN;
		public var dataValue252:Number = NaN;
		public var dataValue253:Number = NaN;
		public var dataValue254:Number = NaN;
		public var dataValue255:Number = NaN;
		public var dataValue256:Number = NaN;
		public var dataValue257:Number = NaN;
		
		public var dataValue260:Number = NaN;
		public var dataValue261:Number = NaN;
		public var dataValue262:Number = NaN;
		public var dataValue263:Number = NaN;
		public var dataValue264:Number = NaN;
		public var dataValue265:Number = NaN;
		public var dataValue266:Number = NaN;
		public var dataValue267:Number = NaN;
		
		public var dataValue270:Number = NaN;
		public var dataValue271:Number = NaN;
		public var dataValue272:Number = NaN;
		public var dataValue273:Number = NaN;
		public var dataValue274:Number = NaN;
		public var dataValue275:Number = NaN;
		public var dataValue276:Number = NaN;
		public var dataValue277:Number = NaN;
		
		public var dataValue280:Number = NaN;
		public var dataValue281:Number = NaN;
		public var dataValue282:Number = NaN;
		public var dataValue283:Number = NaN;
		public var dataValue284:Number = NaN;
		public var dataValue285:Number = NaN;
		public var dataValue286:Number = NaN;
		public var dataValue287:Number = NaN;
		
		public var dataValue290:Number = NaN;
		public var dataValue291:Number = NaN;
		public var dataValue292:Number = NaN;
		public var dataValue293:Number = NaN;
		public var dataValue294:Number = NaN;
		public var dataValue295:Number = NaN;
		public var dataValue296:Number = NaN;
		public var dataValue297:Number = NaN;		
		
		
		
		public var dataValue300:Number = NaN;
		public var dataValue301:Number = NaN;
		public var dataValue302:Number = NaN;
		public var dataValue303:Number = NaN;
		public var dataValue304:Number = NaN;
		public var dataValue305:Number = NaN;
		public var dataValue306:Number = NaN;
		public var dataValue307:Number = NaN;
		
		public var dataValue310:Number = NaN;
		public var dataValue311:Number = NaN;
		public var dataValue312:Number = NaN;
		public var dataValue313:Number = NaN;
		public var dataValue314:Number = NaN;
		public var dataValue315:Number = NaN;
		public var dataValue316:Number = NaN;
		public var dataValue317:Number = NaN;
		
		public var dataValue320:Number = NaN;
		public var dataValue321:Number = NaN;
		public var dataValue322:Number = NaN;
		public var dataValue323:Number = NaN;
		public var dataValue324:Number = NaN;
		public var dataValue325:Number = NaN;
		public var dataValue326:Number = NaN;
		public var dataValue327:Number = NaN;
		
		public var dataValue330:Number = NaN;
		public var dataValue331:Number = NaN;
		public var dataValue332:Number = NaN;
		public var dataValue333:Number = NaN;
		public var dataValue334:Number = NaN;
		public var dataValue335:Number = NaN;
		public var dataValue336:Number = NaN;
		public var dataValue337:Number = NaN;		
		
		public var dataValue340:Number = NaN;
		public var dataValue341:Number = NaN;
		public var dataValue342:Number = NaN;
		public var dataValue343:Number = NaN;
		public var dataValue344:Number = NaN;
		public var dataValue345:Number = NaN;
		public var dataValue346:Number = NaN;
		public var dataValue347:Number = NaN;
		
		public var dataValue350:Number = NaN;
		public var dataValue351:Number = NaN;
		public var dataValue352:Number = NaN;
		public var dataValue353:Number = NaN;
		public var dataValue354:Number = NaN;
		public var dataValue355:Number = NaN;
		public var dataValue356:Number = NaN;
		public var dataValue357:Number = NaN;
		
		public var dataValue360:Number = NaN;
		public var dataValue361:Number = NaN;
		public var dataValue362:Number = NaN;
		public var dataValue363:Number = NaN;
		public var dataValue364:Number = NaN;
		public var dataValue365:Number = NaN;
		public var dataValue366:Number = NaN;
		public var dataValue367:Number = NaN;
		
		public var dataValue370:Number = NaN;
		public var dataValue371:Number = NaN;
		public var dataValue372:Number = NaN;
		public var dataValue373:Number = NaN;
		public var dataValue374:Number = NaN;
		public var dataValue375:Number = NaN;
		public var dataValue376:Number = NaN;
		public var dataValue377:Number = NaN;
		
		public var dataValue380:Number = NaN;
		public var dataValue381:Number = NaN;
		public var dataValue382:Number = NaN;
		public var dataValue383:Number = NaN;
		public var dataValue384:Number = NaN;
		public var dataValue385:Number = NaN;
		public var dataValue386:Number = NaN;
		public var dataValue387:Number = NaN;
		
		public var dataValue390:Number = NaN;
		public var dataValue391:Number = NaN;
		public var dataValue392:Number = NaN;
		public var dataValue393:Number = NaN;
		public var dataValue394:Number = NaN;
		public var dataValue395:Number = NaN;
		public var dataValue396:Number = NaN;
		public var dataValue397:Number = NaN;	
		
		
		public var dataValue400:Number = NaN;
		public var dataValue401:Number = NaN;
		public var dataValue402:Number = NaN;
		public var dataValue403:Number = NaN;
		public var dataValue404:Number = NaN;
		public var dataValue405:Number = NaN;
		public var dataValue406:Number = NaN;
		public var dataValue407:Number = NaN;
		
		public var dataValue410:Number = NaN;
		public var dataValue411:Number = NaN;
		public var dataValue412:Number = NaN;
		public var dataValue413:Number = NaN;
		public var dataValue414:Number = NaN;
		public var dataValue415:Number = NaN;
		public var dataValue416:Number = NaN;
		public var dataValue417:Number = NaN;
		
		public var dataValue420:Number = NaN;
		public var dataValue421:Number = NaN;
		public var dataValue422:Number = NaN;
		public var dataValue423:Number = NaN;
		public var dataValue424:Number = NaN;
		public var dataValue425:Number = NaN;
		public var dataValue426:Number = NaN;
		public var dataValue427:Number = NaN;
		
		public var dataValue430:Number = NaN;
		public var dataValue431:Number = NaN;
		public var dataValue432:Number = NaN;
		public var dataValue433:Number = NaN;
		public var dataValue434:Number = NaN;
		public var dataValue435:Number = NaN;
		public var dataValue436:Number = NaN;
		public var dataValue437:Number = NaN;		
		
		public var dataValue440:Number = NaN;
		public var dataValue441:Number = NaN;
		public var dataValue442:Number = NaN;
		public var dataValue443:Number = NaN;
		public var dataValue444:Number = NaN;
		public var dataValue445:Number = NaN;
		public var dataValue446:Number = NaN;
		public var dataValue447:Number = NaN;
		
		public var dataValue450:Number = NaN;
		public var dataValue451:Number = NaN;
		public var dataValue452:Number = NaN;
		public var dataValue453:Number = NaN;
		public var dataValue454:Number = NaN;
		public var dataValue455:Number = NaN;
		public var dataValue456:Number = NaN;
		public var dataValue457:Number = NaN;
		
		public var dataValue460:Number = NaN;
		public var dataValue461:Number = NaN;
		public var dataValue462:Number = NaN;
		public var dataValue463:Number = NaN;
		public var dataValue464:Number = NaN;
		public var dataValue465:Number = NaN;
		public var dataValue466:Number = NaN;
		public var dataValue467:Number = NaN;
		
		public var dataValue470:Number = NaN;
		public var dataValue471:Number = NaN;
		public var dataValue472:Number = NaN;
		public var dataValue473:Number = NaN;
		public var dataValue474:Number = NaN;
		public var dataValue475:Number = NaN;
		public var dataValue476:Number = NaN;
		public var dataValue477:Number = NaN;
		
		public var dataValue480:Number = NaN;
		public var dataValue481:Number = NaN;
		public var dataValue482:Number = NaN;
		public var dataValue483:Number = NaN;
		public var dataValue484:Number = NaN;
		public var dataValue485:Number = NaN;
		public var dataValue486:Number = NaN;
		public var dataValue487:Number = NaN;
		
		public var dataValue490:Number = NaN;
		public var dataValue491:Number = NaN;
		public var dataValue492:Number = NaN;
		public var dataValue493:Number = NaN;
		public var dataValue494:Number = NaN;
		public var dataValue495:Number = NaN;
		public var dataValue496:Number = NaN;
		public var dataValue497:Number = NaN;			
		
		public var dataValue500:Number = NaN;
		public var dataValue501:Number = NaN;
		public var dataValue502:Number = NaN;
		public var dataValue503:Number = NaN;
		public var dataValue504:Number = NaN;
		public var dataValue505:Number = NaN;
		public var dataValue506:Number = NaN;
		public var dataValue507:Number = NaN;
		
		public var dataValue510:Number = NaN;
		public var dataValue511:Number = NaN;
		public var dataValue512:Number = NaN;
		public var dataValue513:Number = NaN;
		public var dataValue514:Number = NaN;
		public var dataValue515:Number = NaN;
		public var dataValue516:Number = NaN;
		public var dataValue517:Number = NaN;
		
		public var dataValue520:Number = NaN;
		public var dataValue521:Number = NaN;
		public var dataValue522:Number = NaN;
		public var dataValue523:Number = NaN;
		public var dataValue524:Number = NaN;
		public var dataValue525:Number = NaN;
		public var dataValue526:Number = NaN;
		public var dataValue527:Number = NaN;
		
		public var dataValue530:Number = NaN;
		public var dataValue531:Number = NaN;
		public var dataValue532:Number = NaN;
		public var dataValue533:Number = NaN;
		public var dataValue534:Number = NaN;
		public var dataValue535:Number = NaN;
		public var dataValue536:Number = NaN;
		public var dataValue537:Number = NaN;		
		
		public var dataValue540:Number = NaN;
		public var dataValue541:Number = NaN;
		public var dataValue542:Number = NaN;
		public var dataValue543:Number = NaN;
		public var dataValue544:Number = NaN;
		public var dataValue545:Number = NaN;
		public var dataValue546:Number = NaN;
		public var dataValue547:Number = NaN;
		
		public var dataValue550:Number = NaN;
		public var dataValue551:Number = NaN;
		public var dataValue552:Number = NaN;
		public var dataValue553:Number = NaN;
		public var dataValue554:Number = NaN;
		public var dataValue555:Number = NaN;
		public var dataValue556:Number = NaN;
		public var dataValue557:Number = NaN;
		
		public var dataValue560:Number = NaN;
		public var dataValue561:Number = NaN;
		public var dataValue562:Number = NaN;
		public var dataValue563:Number = NaN;
		public var dataValue564:Number = NaN;
		public var dataValue565:Number = NaN;
		public var dataValue566:Number = NaN;
		public var dataValue567:Number = NaN;
		
		public var dataValue570:Number = NaN;
		public var dataValue571:Number = NaN;
		public var dataValue572:Number = NaN;
		public var dataValue573:Number = NaN;
		public var dataValue574:Number = NaN;
		public var dataValue575:Number = NaN;
		public var dataValue576:Number = NaN;
		public var dataValue577:Number = NaN;
		
		public var dataValue580:Number = NaN;
		public var dataValue581:Number = NaN;
		public var dataValue582:Number = NaN;
		public var dataValue583:Number = NaN;
		public var dataValue584:Number = NaN;
		public var dataValue585:Number = NaN;
		public var dataValue586:Number = NaN;
		public var dataValue587:Number = NaN;
		
		public var dataValue590:Number = NaN;
		public var dataValue591:Number = NaN;
		public var dataValue592:Number = NaN;
		public var dataValue593:Number = NaN;
		public var dataValue594:Number = NaN;
		public var dataValue595:Number = NaN;
		public var dataValue596:Number = NaN;
		public var dataValue597:Number = NaN;					
		
		
		public function getDataValue( _ithPeriod:int, _ithBizData:int ):Number
		{
			if( _ithPeriod == 0 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue000;
					case  1: return this.dataValue001;
					case  2: return this.dataValue002;
					case  3: return this.dataValue003;
					case  4: return this.dataValue004;
					case  5: return this.dataValue005;
					case  6: return this.dataValue006;
					case  7: return this.dataValue007;
				}
				
				return NaN;				
			}
			else if( _ithPeriod == 1 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue010;
					case  1: return this.dataValue011;
					case  2: return this.dataValue012;
					case  3: return this.dataValue013;
					case  4: return this.dataValue014;
					case  5: return this.dataValue015;
					case  6: return this.dataValue016;
					case  7: return this.dataValue017;
				}
				
				return NaN;				
			}
			else if( _ithPeriod == 2 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue020;
					case  1: return this.dataValue021;
					case  2: return this.dataValue022;
					case  3: return this.dataValue023;
					case  4: return this.dataValue024;
					case  5: return this.dataValue025;
					case  6: return this.dataValue026;
					case  7: return this.dataValue027;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 3 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue030;
					case  1: return this.dataValue031;
					case  2: return this.dataValue032;
					case  3: return this.dataValue033;
					case  4: return this.dataValue034;
					case  5: return this.dataValue035;
					case  6: return this.dataValue036;
					case  7: return this.dataValue037;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 4 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue040;
					case  1: return this.dataValue041;
					case  2: return this.dataValue042;
					case  3: return this.dataValue043;
					case  4: return this.dataValue044;
					case  5: return this.dataValue045;
					case  6: return this.dataValue046;
					case  7: return this.dataValue047;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 5 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue050;
					case  1: return this.dataValue051;
					case  2: return this.dataValue052;
					case  3: return this.dataValue053;
					case  4: return this.dataValue054;
					case  5: return this.dataValue055;
					case  6: return this.dataValue056;
					case  7: return this.dataValue057;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 6 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue060;
					case  1: return this.dataValue061;
					case  2: return this.dataValue062;
					case  3: return this.dataValue063;
					case  4: return this.dataValue064;
					case  5: return this.dataValue065;
					case  6: return this.dataValue066;
					case  7: return this.dataValue067;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 7 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue070;
					case  1: return this.dataValue071;
					case  2: return this.dataValue072;
					case  3: return this.dataValue073;
					case  4: return this.dataValue074;
					case  5: return this.dataValue075;
					case  6: return this.dataValue076;
					case  7: return this.dataValue077;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 8 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue080;
					case  1: return this.dataValue081;
					case  2: return this.dataValue082;
					case  3: return this.dataValue083;
					case  4: return this.dataValue084;
					case  5: return this.dataValue085;
					case  6: return this.dataValue086;
					case  7: return this.dataValue087;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 9)
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue090;
					case  1: return this.dataValue091;
					case  2: return this.dataValue092;
					case  3: return this.dataValue093;
					case  4: return this.dataValue094;
					case  5: return this.dataValue095;
					case  6: return this.dataValue096;
					case  7: return this.dataValue097;
				}
				
				return NaN;				
			}			
			else if( _ithPeriod == 10 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue100;
					case  1: return this.dataValue101;
					case  2: return this.dataValue102;
					case  3: return this.dataValue103;
					case  4: return this.dataValue104;
					case  5: return this.dataValue105;
					case  6: return this.dataValue106;
					case  7: return this.dataValue107;
				}
				
				return NaN;				
			}
			else if( _ithPeriod == 11 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue110;
					case  1: return this.dataValue111;
					case  2: return this.dataValue112;
					case  3: return this.dataValue113;
					case  4: return this.dataValue114;
					case  5: return this.dataValue115;
					case  6: return this.dataValue116;
					case  7: return this.dataValue117;
				}
				
				return NaN;				
			}
			else if( _ithPeriod == 12 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue120;
					case  1: return this.dataValue121;
					case  2: return this.dataValue122;
					case  3: return this.dataValue123;
					case  4: return this.dataValue124;
					case  5: return this.dataValue125;
					case  6: return this.dataValue126;
					case  7: return this.dataValue127;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 13 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue130;
					case  1: return this.dataValue131;
					case  2: return this.dataValue132;
					case  3: return this.dataValue133;
					case  4: return this.dataValue134;
					case  5: return this.dataValue135;
					case  6: return this.dataValue136;
					case  7: return this.dataValue137;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 14 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue140;
					case  1: return this.dataValue141;
					case  2: return this.dataValue142;
					case  3: return this.dataValue143;
					case  4: return this.dataValue144;
					case  5: return this.dataValue145;
					case  6: return this.dataValue146;
					case  7: return this.dataValue147;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 15 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue150;
					case  1: return this.dataValue151;
					case  2: return this.dataValue152;
					case  3: return this.dataValue153;
					case  4: return this.dataValue154;
					case  5: return this.dataValue155;
					case  6: return this.dataValue156;
					case  7: return this.dataValue157;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 16 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue160;
					case  1: return this.dataValue161;
					case  2: return this.dataValue162;
					case  3: return this.dataValue163;
					case  4: return this.dataValue164;
					case  5: return this.dataValue165;
					case  6: return this.dataValue166;
					case  7: return this.dataValue167;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 17 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue170;
					case  1: return this.dataValue171;
					case  2: return this.dataValue172;
					case  3: return this.dataValue173;
					case  4: return this.dataValue174;
					case  5: return this.dataValue175;
					case  6: return this.dataValue176;
					case  7: return this.dataValue177;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 18 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue180;
					case  1: return this.dataValue181;
					case  2: return this.dataValue182;
					case  3: return this.dataValue183;
					case  4: return this.dataValue184;
					case  5: return this.dataValue185;
					case  6: return this.dataValue186;
					case  7: return this.dataValue187;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 19)
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue190;
					case  1: return this.dataValue191;
					case  2: return this.dataValue192;
					case  3: return this.dataValue193;
					case  4: return this.dataValue194;
					case  5: return this.dataValue195;
					case  6: return this.dataValue196;
					case  7: return this.dataValue197;
				}
				
				return NaN;				
			}				
			else if( _ithPeriod == 20 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue200;
					case  1: return this.dataValue201;
					case  2: return this.dataValue202;
					case  3: return this.dataValue203;
					case  4: return this.dataValue204;
					case  5: return this.dataValue205;
					case  6: return this.dataValue206;
					case  7: return this.dataValue207;
				}
				
				return NaN;				
			}
			else if( _ithPeriod == 21 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue210;
					case  1: return this.dataValue211;
					case  2: return this.dataValue212;
					case  3: return this.dataValue213;
					case  4: return this.dataValue214;
					case  5: return this.dataValue215;
					case  6: return this.dataValue216;
					case  7: return this.dataValue217;
				}
				
				return NaN;				
			}
			else if( _ithPeriod == 22 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue220;
					case  1: return this.dataValue221;
					case  2: return this.dataValue222;
					case  3: return this.dataValue223;
					case  4: return this.dataValue224;
					case  5: return this.dataValue225;
					case  6: return this.dataValue226;
					case  7: return this.dataValue227;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 23 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue230;
					case  1: return this.dataValue231;
					case  2: return this.dataValue232;
					case  3: return this.dataValue233;
					case  4: return this.dataValue234;
					case  5: return this.dataValue235;
					case  6: return this.dataValue236;
					case  7: return this.dataValue237;
				}
				
				return NaN;				
			}
			else if( _ithPeriod == 24 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue240;
					case  1: return this.dataValue241;
					case  2: return this.dataValue242;
					case  3: return this.dataValue243;
					case  4: return this.dataValue244;
					case  5: return this.dataValue245;
					case  6: return this.dataValue246;
					case  7: return this.dataValue247;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 25 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue250;
					case  1: return this.dataValue251;
					case  2: return this.dataValue252;
					case  3: return this.dataValue253;
					case  4: return this.dataValue254;
					case  5: return this.dataValue255;
					case  6: return this.dataValue256;
					case  7: return this.dataValue257;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 26 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue260;
					case  1: return this.dataValue261;
					case  2: return this.dataValue262;
					case  3: return this.dataValue263;
					case  4: return this.dataValue264;
					case  5: return this.dataValue265;
					case  6: return this.dataValue266;
					case  7: return this.dataValue267;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 27 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue270;
					case  1: return this.dataValue271;
					case  2: return this.dataValue272;
					case  3: return this.dataValue273;
					case  4: return this.dataValue274;
					case  5: return this.dataValue275;
					case  6: return this.dataValue276;
					case  7: return this.dataValue277;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 28 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue280;
					case  1: return this.dataValue281;
					case  2: return this.dataValue282;
					case  3: return this.dataValue283;
					case  4: return this.dataValue284;
					case  5: return this.dataValue285;
					case  6: return this.dataValue286;
					case  7: return this.dataValue287;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 29)
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue290;
					case  1: return this.dataValue291;
					case  2: return this.dataValue292;
					case  3: return this.dataValue293;
					case  4: return this.dataValue294;
					case  5: return this.dataValue295;
					case  6: return this.dataValue296;
					case  7: return this.dataValue297;
				}
				
				return NaN;				
			}			
			
			
			else if( _ithPeriod == 30 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue300;
					case  1: return this.dataValue301;
					case  2: return this.dataValue302;
					case  3: return this.dataValue303;
					case  4: return this.dataValue304;
					case  5: return this.dataValue305;
					case  6: return this.dataValue306;
					case  7: return this.dataValue307;
				}
				
				return NaN;				
			}
			else if( _ithPeriod == 31 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue310;
					case  1: return this.dataValue311;
					case  2: return this.dataValue312;
					case  3: return this.dataValue313;
					case  4: return this.dataValue314;
					case  5: return this.dataValue315;
					case  6: return this.dataValue316;
					case  7: return this.dataValue317;
				}
				
				return NaN;				
			}
			else if( _ithPeriod == 32 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue320;
					case  1: return this.dataValue321;
					case  2: return this.dataValue322;
					case  3: return this.dataValue323;
					case  4: return this.dataValue324;
					case  5: return this.dataValue325;
					case  6: return this.dataValue326;
					case  7: return this.dataValue327;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 33 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue330;
					case  1: return this.dataValue331;
					case  2: return this.dataValue332;
					case  3: return this.dataValue333;
					case  4: return this.dataValue334;
					case  5: return this.dataValue335;
					case  6: return this.dataValue336;
					case  7: return this.dataValue337;
				}
				
				return NaN;				
			}
			else if( _ithPeriod == 34 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue340;
					case  1: return this.dataValue341;
					case  2: return this.dataValue342;
					case  3: return this.dataValue343;
					case  4: return this.dataValue344;
					case  5: return this.dataValue345;
					case  6: return this.dataValue346;
					case  7: return this.dataValue347;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 35 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue350;
					case  1: return this.dataValue351;
					case  2: return this.dataValue352;
					case  3: return this.dataValue353;
					case  4: return this.dataValue354;
					case  5: return this.dataValue355;
					case  6: return this.dataValue356;
					case  7: return this.dataValue357;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 36 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue360;
					case  1: return this.dataValue361;
					case  2: return this.dataValue362;
					case  3: return this.dataValue363;
					case  4: return this.dataValue364;
					case  5: return this.dataValue365;
					case  6: return this.dataValue366;
					case  7: return this.dataValue367;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 37 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue370;
					case  1: return this.dataValue371;
					case  2: return this.dataValue372;
					case  3: return this.dataValue373;
					case  4: return this.dataValue374;
					case  5: return this.dataValue375;
					case  6: return this.dataValue376;
					case  7: return this.dataValue377;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 38 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue380;
					case  1: return this.dataValue381;
					case  2: return this.dataValue382;
					case  3: return this.dataValue383;
					case  4: return this.dataValue384;
					case  5: return this.dataValue385;
					case  6: return this.dataValue386;
					case  7: return this.dataValue387;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 39)
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue390;
					case  1: return this.dataValue391;
					case  2: return this.dataValue392;
					case  3: return this.dataValue393;
					case  4: return this.dataValue394;
					case  5: return this.dataValue395;
					case  6: return this.dataValue396;
					case  7: return this.dataValue397;
				}
				
				return NaN;				
			}
				
			else if( _ithPeriod == 40 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue400;
					case  1: return this.dataValue401;
					case  2: return this.dataValue402;
					case  3: return this.dataValue403;
					case  4: return this.dataValue404;
					case  5: return this.dataValue405;
					case  6: return this.dataValue406;
					case  7: return this.dataValue407;
				}
				
				return NaN;				
			}
			else if( _ithPeriod == 41 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue410;
					case  1: return this.dataValue411;
					case  2: return this.dataValue412;
					case  3: return this.dataValue413;
					case  4: return this.dataValue414;
					case  5: return this.dataValue415;
					case  6: return this.dataValue416;
					case  7: return this.dataValue417;
				}
				
				return NaN;				
			}
			else if( _ithPeriod == 42 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue420;
					case  1: return this.dataValue421;
					case  2: return this.dataValue422;
					case  3: return this.dataValue423;
					case  4: return this.dataValue424;
					case  5: return this.dataValue425;
					case  6: return this.dataValue426;
					case  7: return this.dataValue427;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 43 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue430;
					case  1: return this.dataValue431;
					case  2: return this.dataValue432;
					case  3: return this.dataValue433;
					case  4: return this.dataValue434;
					case  5: return this.dataValue435;
					case  6: return this.dataValue436;
					case  7: return this.dataValue437;
				}
				
				return NaN;				
			}
			else if( _ithPeriod == 44 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue440;
					case  1: return this.dataValue441;
					case  2: return this.dataValue442;
					case  3: return this.dataValue443;
					case  4: return this.dataValue444;
					case  5: return this.dataValue445;
					case  6: return this.dataValue446;
					case  7: return this.dataValue447;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 45 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue450;
					case  1: return this.dataValue451;
					case  2: return this.dataValue452;
					case  3: return this.dataValue453;
					case  4: return this.dataValue454;
					case  5: return this.dataValue455;
					case  6: return this.dataValue456;
					case  7: return this.dataValue457;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 46 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue460;
					case  1: return this.dataValue461;
					case  2: return this.dataValue462;
					case  3: return this.dataValue463;
					case  4: return this.dataValue464;
					case  5: return this.dataValue465;
					case  6: return this.dataValue466;
					case  7: return this.dataValue467;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 47 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue470;
					case  1: return this.dataValue471;
					case  2: return this.dataValue472;
					case  3: return this.dataValue473;
					case  4: return this.dataValue474;
					case  5: return this.dataValue475;
					case  6: return this.dataValue476;
					case  7: return this.dataValue477;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 48 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue480;
					case  1: return this.dataValue481;
					case  2: return this.dataValue482;
					case  3: return this.dataValue483;
					case  4: return this.dataValue484;
					case  5: return this.dataValue485;
					case  6: return this.dataValue486;
					case  7: return this.dataValue487;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 49)
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue490;
					case  1: return this.dataValue491;
					case  2: return this.dataValue492;
					case  3: return this.dataValue493;
					case  4: return this.dataValue494;
					case  5: return this.dataValue495;
					case  6: return this.dataValue496;
					case  7: return this.dataValue497;
				}
				
				return NaN;				
			}			
				
			else if( _ithPeriod == 50 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue500;
					case  1: return this.dataValue501;
					case  2: return this.dataValue502;
					case  3: return this.dataValue503;
					case  4: return this.dataValue504;
					case  5: return this.dataValue505;
					case  6: return this.dataValue506;
					case  7: return this.dataValue507;
				}
				
				return NaN;				
			}
			else if( _ithPeriod == 51 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue510;
					case  1: return this.dataValue511;
					case  2: return this.dataValue512;
					case  3: return this.dataValue513;
					case  4: return this.dataValue514;
					case  5: return this.dataValue515;
					case  6: return this.dataValue516;
					case  7: return this.dataValue517;
				}
				
				return NaN;				
			}
			else if( _ithPeriod == 52 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue520;
					case  1: return this.dataValue521;
					case  2: return this.dataValue522;
					case  3: return this.dataValue523;
					case  4: return this.dataValue524;
					case  5: return this.dataValue525;
					case  6: return this.dataValue526;
					case  7: return this.dataValue527;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 53 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue530;
					case  1: return this.dataValue531;
					case  2: return this.dataValue532;
					case  3: return this.dataValue533;
					case  4: return this.dataValue534;
					case  5: return this.dataValue535;
					case  6: return this.dataValue536;
					case  7: return this.dataValue537;
				}
				
				return NaN;				
			}
			else if( _ithPeriod == 54 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue540;
					case  1: return this.dataValue541;
					case  2: return this.dataValue542;
					case  3: return this.dataValue543;
					case  4: return this.dataValue544;
					case  5: return this.dataValue545;
					case  6: return this.dataValue546;
					case  7: return this.dataValue547;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 55 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue550;
					case  1: return this.dataValue551;
					case  2: return this.dataValue552;
					case  3: return this.dataValue553;
					case  4: return this.dataValue554;
					case  5: return this.dataValue555;
					case  6: return this.dataValue556;
					case  7: return this.dataValue557;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 56 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue560;
					case  1: return this.dataValue561;
					case  2: return this.dataValue562;
					case  3: return this.dataValue563;
					case  4: return this.dataValue564;
					case  5: return this.dataValue565;
					case  6: return this.dataValue566;
					case  7: return this.dataValue567;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 57 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue570;
					case  1: return this.dataValue571;
					case  2: return this.dataValue572;
					case  3: return this.dataValue573;
					case  4: return this.dataValue574;
					case  5: return this.dataValue575;
					case  6: return this.dataValue576;
					case  7: return this.dataValue577;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 58 )
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue580;
					case  1: return this.dataValue581;
					case  2: return this.dataValue582;
					case  3: return this.dataValue583;
					case  4: return this.dataValue584;
					case  5: return this.dataValue585;
					case  6: return this.dataValue586;
					case  7: return this.dataValue587;
				}
				
				return NaN;				
			}	
			else if( _ithPeriod == 59)
			{
				switch( _ithBizData )
				{
					case  0: return this.dataValue590;
					case  1: return this.dataValue591;
					case  2: return this.dataValue592;
					case  3: return this.dataValue593;
					case  4: return this.dataValue594;
					case  5: return this.dataValue595;
					case  6: return this.dataValue596;
					case  7: return this.dataValue597;
				}
				
				return NaN;				
			}			
			
			else
			{
				return NaN;
			}
		}
		
		
		public function setDataValue( _ithPeriod:int, _ithBizData:int, _value:Number ):void
		{
			if( _ithPeriod == 0 )
			{
				switch( _ithBizData )
				{
					case  0: this.dataValue000 = _value; return;
					case  1: this.dataValue001 = _value; return;
					case  2: this.dataValue002 = _value; return;
					case  3: this.dataValue003 = _value; return;
					case  4: this.dataValue004 = _value; return;
					case  5: this.dataValue005 = _value; return;
					case  6: this.dataValue006 = _value; return;
					case  7: this.dataValue007 = _value; return;
				}
				
				return;				
			}
			else if( _ithPeriod == 1 )
			{
				switch( _ithBizData )
				{
					case  0: this.dataValue010 = _value; return;
					case  1: this.dataValue011 = _value; return;
					case  2: this.dataValue012 = _value; return;
					case  3: this.dataValue013 = _value; return;
					case  4: this.dataValue014 = _value; return;
					case  5: this.dataValue015 = _value; return;
					case  6: this.dataValue016 = _value; return;
					case  7: this.dataValue017 = _value; return;
				}
				
				return;				
			}
			else if( _ithPeriod == 2 )
			{
				switch( _ithBizData )
				{
					case  0: this.dataValue020 = _value; return;
					case  1: this.dataValue021 = _value; return;
					case  2: this.dataValue022 = _value; return;
					case  3: this.dataValue023 = _value; return;
					case  4: this.dataValue024 = _value; return;
					case  5: this.dataValue025 = _value; return;
					case  6: this.dataValue026 = _value; return;
					case  7: this.dataValue027 = _value; return;
				}
				
				return;				
			}	
			else if( _ithPeriod == 3 )
			{
				switch( _ithBizData )
				{
					case  0: this.dataValue030 = _value; return;
					case  1: this.dataValue031 = _value; return;
					case  2: this.dataValue032 = _value; return;
					case  3: this.dataValue033 = _value; return;
					case  4: this.dataValue034 = _value; return;
					case  5: this.dataValue035 = _value; return;
					case  6: this.dataValue036 = _value; return;
					case  7: this.dataValue037 = _value; return;
				}
				
				return;				
			}	
			else if( _ithPeriod == 4 )
			{
				switch( _ithBizData )
				{
					case  0: this.dataValue040 = _value; return;
					case  1: this.dataValue041 = _value; return;
					case  2: this.dataValue042 = _value; return;
					case  3: this.dataValue043 = _value; return;
					case  4: this.dataValue044 = _value; return;
					case  5: this.dataValue045 = _value; return;
					case  6: this.dataValue046 = _value; return;
					case  7: this.dataValue047 = _value; return;
				}
				
				return;				
			}	
			else if( _ithPeriod == 5 )
			{
				switch( _ithBizData )
				{
					case  0: this.dataValue050 = _value; return;
					case  1: this.dataValue051 = _value; return;
					case  2: this.dataValue052 = _value; return;
					case  3: this.dataValue053 = _value; return;
					case  4: this.dataValue054 = _value; return;
					case  5: this.dataValue055 = _value; return;
					case  6: this.dataValue056 = _value; return;
					case  7: this.dataValue057 = _value; return;
				}
				
				return;				
			}	
			else if( _ithPeriod == 6 )
			{
				switch( _ithBizData )
				{
					case  0: this.dataValue060 = _value; return;
					case  1: this.dataValue061 = _value; return;
					case  2: this.dataValue062 = _value; return;
					case  3: this.dataValue063 = _value; return;
					case  4: this.dataValue064 = _value; return;
					case  5: this.dataValue065 = _value; return;
					case  6: this.dataValue066 = _value; return;
					case  7: this.dataValue067 = _value; return;
				}
				
				return;				
			}	
			else if( _ithPeriod == 7 )
			{
				switch( _ithBizData )
				{
					case  0: this.dataValue070 = _value; return;
					case  1: this.dataValue071 = _value; return;
					case  2: this.dataValue072 = _value; return;
					case  3: this.dataValue073 = _value; return;
					case  4: this.dataValue074 = _value; return;
					case  5: this.dataValue075 = _value; return;
					case  6: this.dataValue076 = _value; return;
					case  7: this.dataValue077 = _value; return;
				}
				
				return;				
			}	
			else if( _ithPeriod == 8 )
			{
				switch( _ithBizData )
				{
					case  0: this.dataValue080 = _value; return;
					case  1: this.dataValue081 = _value; return;
					case  2: this.dataValue082 = _value; return;
					case  3: this.dataValue083 = _value; return;
					case  4: this.dataValue084 = _value; return;
					case  5: this.dataValue085 = _value; return;
					case  6: this.dataValue086 = _value; return;
					case  7: this.dataValue087 = _value; return;
				}
				
				return;				
			}	
			else if( _ithPeriod == 9)
			{
				switch( _ithBizData )
				{
					case  0: this.dataValue090 = _value; return;
					case  1: this.dataValue091 = _value; return;
					case  2: this.dataValue092 = _value; return;
					case  3: this.dataValue093 = _value; return;
					case  4: this.dataValue094 = _value; return;
					case  5: this.dataValue095 = _value; return;
					case  6: this.dataValue096 = _value; return;
					case  7: this.dataValue097 = _value; return;
				}
				
				return;				
			}			
			else if( _ithPeriod == 10 )
			{
				switch( _ithBizData )
				{
					case  0: this.dataValue100 = _value; return;
					case  1: this.dataValue101 = _value; return;
					case  2: this.dataValue102 = _value; return;
					case  3: this.dataValue103 = _value; return;
					case  4: this.dataValue104 = _value; return;
					case  5: this.dataValue105 = _value; return;
					case  6: this.dataValue106 = _value; return;
					case  7: this.dataValue107 = _value; return;
				}
				
				return;				
			}
			else if( _ithPeriod == 11 )
			{
				switch( _ithBizData )
				{
					case  0: this.dataValue110 = _value; return;
					case  1: this.dataValue111 = _value; return;
					case  2: this.dataValue112 = _value; return;
					case  3: this.dataValue113 = _value; return;
					case  4: this.dataValue114 = _value; return;
					case  5: this.dataValue115 = _value; return;
					case  6: this.dataValue116 = _value; return;
					case  7: this.dataValue117 = _value; return;
				}
				
				return;				
			}
			else if( _ithPeriod == 12 )
			{
				switch( _ithBizData )
				{
					case  0: this.dataValue120 = _value; return;
					case  1: this.dataValue121 = _value; return;
					case  2: this.dataValue122 = _value; return;
					case  3: this.dataValue123 = _value; return;
					case  4: this.dataValue124 = _value; return;
					case  5: this.dataValue125 = _value; return;
					case  6: this.dataValue126 = _value; return;
					case  7: this.dataValue127 = _value; return;
				}
				
				return;				
			}	
			else if( _ithPeriod == 13 )
			{
				switch( _ithBizData )
				{
					case  0: this.dataValue130 = _value; return;
					case  1: this.dataValue131 = _value; return;
					case  2: this.dataValue132 = _value; return;
					case  3: this.dataValue133 = _value; return;
					case  4: this.dataValue134 = _value; return;
					case  5: this.dataValue135 = _value; return;
					case  6: this.dataValue136 = _value; return;
					case  7: this.dataValue137 = _value; return;
				}
				
				return;				
			}	
			else if( _ithPeriod == 14 )
			{
				switch( _ithBizData )
				{
					case  0: this.dataValue140 = _value; return;
					case  1: this.dataValue141 = _value; return;
					case  2: this.dataValue142 = _value; return;
					case  3: this.dataValue143 = _value; return;
					case  4: this.dataValue144 = _value; return;
					case  5: this.dataValue145 = _value; return;
					case  6: this.dataValue146 = _value; return;
					case  7: this.dataValue147 = _value; return;
				}
				
				return;				
			}	
			else if( _ithPeriod == 15 )
			{
				switch( _ithBizData )
				{
					case  0: this.dataValue150 = _value; return;
					case  1: this.dataValue151 = _value; return;
					case  2: this.dataValue152 = _value; return;
					case  3: this.dataValue153 = _value; return;
					case  4: this.dataValue154 = _value; return;
					case  5: this.dataValue155 = _value; return;
					case  6: this.dataValue156 = _value; return;
					case  7: this.dataValue157 = _value; return;
				}
				
				return;				
			}	
			else if( _ithPeriod == 16 )
			{
				switch( _ithBizData )
				{
					case  0: this.dataValue160 = _value; return;
					case  1: this.dataValue161 = _value; return;
					case  2: this.dataValue162 = _value; return;
					case  3: this.dataValue163 = _value; return;
					case  4: this.dataValue164 = _value; return;
					case  5: this.dataValue165 = _value; return;
					case  6: this.dataValue166 = _value; return;
					case  7: this.dataValue167 = _value; return;
				}
				
				return;				
			}	
			else if( _ithPeriod == 17 )
			{
				switch( _ithBizData )
				{
					case  0: this.dataValue170 = _value; return;
					case  1: this.dataValue171 = _value; return;
					case  2: this.dataValue172 = _value; return;
					case  3: this.dataValue173 = _value; return;
					case  4: this.dataValue174 = _value; return;
					case  5: this.dataValue175 = _value; return;
					case  6: this.dataValue176 = _value; return;
					case  7: this.dataValue177 = _value; return;
				}
				
				return;				
			}	
			else if( _ithPeriod == 18 )
			{
				switch( _ithBizData )
				{
					case  0: this.dataValue180 = _value; return;
					case  1: this.dataValue181 = _value; return;
					case  2: this.dataValue182 = _value; return;
					case  3: this.dataValue183 = _value; return;
					case  4: this.dataValue184 = _value; return;
					case  5: this.dataValue185 = _value; return;
					case  6: this.dataValue186 = _value; return;
					case  7: this.dataValue187 = _value; return;
				}
				
				return;				
			}	
			else if( _ithPeriod == 19)
			{
				switch( _ithBizData )
				{
					case  0: this.dataValue190 = _value; return;
					case  1: this.dataValue191 = _value; return;
					case  2: this.dataValue192 = _value; return;
					case  3: this.dataValue193 = _value; return;
					case  4: this.dataValue194 = _value; return;
					case  5: this.dataValue195 = _value; return;
					case  6: this.dataValue196 = _value; return;
					case  7: this.dataValue197 = _value; return;
				}
				
				return;				
			}				
			else if( _ithPeriod == 20 )
			{
				switch( _ithBizData )
				{
					case  0: this.dataValue200 = _value; return;
					case  1: this.dataValue201 = _value; return;
					case  2: this.dataValue202 = _value; return;
					case  3: this.dataValue203 = _value; return;
					case  4: this.dataValue204 = _value; return;
					case  5: this.dataValue205 = _value; return;
					case  6: this.dataValue206 = _value; return;
					case  7: this.dataValue207 = _value; return;
				}
				
				return;				
			}
			else if( _ithPeriod == 21 )
			{
				switch( _ithBizData )
				{
					case  0: this.dataValue210 = _value; return;
					case  1: this.dataValue211 = _value; return;
					case  2: this.dataValue212 = _value; return;
					case  3: this.dataValue213 = _value; return;
					case  4: this.dataValue214 = _value; return;
					case  5: this.dataValue215 = _value; return;
					case  6: this.dataValue216 = _value; return;
					case  7: this.dataValue217 = _value; return;
				}
				
				return;				
			}
			else if( _ithPeriod == 22 )
			{
				switch( _ithBizData )
				{
					case  0: this.dataValue220 = _value; return;
					case  1: this.dataValue221 = _value; return;
					case  2: this.dataValue222 = _value; return;
					case  3: this.dataValue223 = _value; return;
					case  4: this.dataValue224 = _value; return;
					case  5: this.dataValue225 = _value; return;
					case  6: this.dataValue226 = _value; return;
					case  7: this.dataValue227 = _value; return;
				}
				
				return;				
			}	
			else if( _ithPeriod == 23 )
			{
				switch( _ithBizData )
				{
					case  0: this.dataValue230 = _value; return;
					case  1: this.dataValue231 = _value; return;
					case  2: this.dataValue232 = _value; return;
					case  3: this.dataValue233 = _value; return;
					case  4: this.dataValue234 = _value; return;
					case  5: this.dataValue235 = _value; return;
					case  6: this.dataValue236 = _value; return;
					case  7: this.dataValue237 = _value; return;
				}
				
				return;				
			}
			else if( _ithPeriod == 24 )
			{
				switch( _ithBizData )
				{
					case  0: this.dataValue240 = _value; return;
					case  1: this.dataValue241 = _value; return;
					case  2: this.dataValue242 = _value; return;
					case  3: this.dataValue243 = _value; return;
					case  4: this.dataValue244 = _value; return;
					case  5: this.dataValue245 = _value; return;
					case  6: this.dataValue246 = _value; return;
					case  7: this.dataValue247 = _value; return;
				}
				
				return;				
			}	
			else if( _ithPeriod == 25 )
			{
				switch( _ithBizData )
				{
					case  0: this.dataValue250 = _value; return;
					case  1: this.dataValue251 = _value; return;
					case  2: this.dataValue252 = _value; return;
					case  3: this.dataValue253 = _value; return;
					case  4: this.dataValue254 = _value; return;
					case  5: this.dataValue255 = _value; return;
					case  6: this.dataValue256 = _value; return;
					case  7: this.dataValue257 = _value; return;
				}
				
				return;				
			}	
			else if( _ithPeriod == 26 )
			{
				switch( _ithBizData )
				{
					case  0: this.dataValue260 = _value; return;
					case  1: this.dataValue261 = _value; return;
					case  2: this.dataValue262 = _value; return;
					case  3: this.dataValue263 = _value; return;
					case  4: this.dataValue264 = _value; return;
					case  5: this.dataValue265 = _value; return;
					case  6: this.dataValue266 = _value; return;
					case  7: this.dataValue267 = _value; return;
				}
				
				return;				
			}	
			else if( _ithPeriod == 27 )
			{
				switch( _ithBizData )
				{
					case  0: this.dataValue270 = _value; return;
					case  1: this.dataValue271 = _value; return;
					case  2: this.dataValue272 = _value; return;
					case  3: this.dataValue273 = _value; return;
					case  4: this.dataValue274 = _value; return;
					case  5: this.dataValue275 = _value; return;
					case  6: this.dataValue276 = _value; return;
					case  7: this.dataValue277 = _value; return;
				}
				
				return;				
			}	
			else if( _ithPeriod == 28 )
			{
				switch( _ithBizData )
				{
					case  0: this.dataValue280 = _value; return;
					case  1: this.dataValue281 = _value; return;
					case  2: this.dataValue282 = _value; return;
					case  3: this.dataValue283 = _value; return;
					case  4: this.dataValue284 = _value; return;
					case  5: this.dataValue285 = _value; return;
					case  6: this.dataValue286 = _value; return;
					case  7: this.dataValue287 = _value; return;
				}
				
				return;				
			}	
			else if( _ithPeriod == 29)
			{
				switch( _ithBizData )
				{
					case  0: this.dataValue290 = _value; return;
					case  1: this.dataValue291 = _value; return;
					case  2: this.dataValue292 = _value; return;
					case  3: this.dataValue293 = _value; return;
					case  4: this.dataValue294 = _value; return;
					case  5: this.dataValue295 = _value; return;
					case  6: this.dataValue296 = _value; return;
					case  7: this.dataValue297 = _value; return;
				}
				
				return;				
			}						
			else
			{
				return;
			}
		}
		
		public function exchangeUnit( _exchangeRate_old:Number, _exchangeRate_new:Number ):void
		{
			if( isNaN( _exchangeRate_old ) || isNaN( _exchangeRate_new ) )
			{
				return;	
			}
			
			var periodDiff:int = UtilPeriod.getPeriodDifference( this.periodBegin, this.periodEnd );
			if( periodDiff == SysConst.PERIOD_DIFF_NULL )
			{
				return;
			}		
			
			if( this.arrBizData == null || this.arrBizData.length <= 0 )
			{
				return;
			}

			var periodLoc:int;
			var bizDataLoc:int;
			var value_byBase:Number;
			var bizDataType:int;
			for( periodLoc=0; periodLoc<= periodDiff; periodLoc=periodLoc+1 )
			{
				for( bizDataLoc = 0; bizDataLoc < this.arrBizData.length; bizDataLoc = bizDataLoc + 1 )
				{
					bizDataType = BBizData(this.arrBizData.getItemAt(bizDataLoc)).type;
					if( bizDataType != BizConst.BIZDATA_TYPE_KPI && 
						bizDataType != BizConst.BIZDATA_TYPE_MONEY && 
						bizDataType != BizConst.BIZDATA_TYPE_MONEYCOMB )
					{
						value_byBase = Math.round( this.getDataValue( periodLoc, bizDataLoc) * _exchangeRate_old );	//	先换算成整数基准值
						this.setDataValue( periodLoc, bizDataLoc, value_byBase * 1.0 / _exchangeRate_new );
					}
				}
			}
		}		
	}
}