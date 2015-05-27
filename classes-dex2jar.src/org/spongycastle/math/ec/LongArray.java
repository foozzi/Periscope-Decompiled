package org.spongycastle.math.ec;

import java.math.BigInteger;
import org.spongycastle.util.Arrays;

class LongArray
{
  private static final int[] bcH = { 0, 1, 4, 5, 16, 17, 20, 21, 64, 65, 68, 69, 80, 81, 84, 85, 256, 257, 260, 261, 272, 273, 276, 277, 320, 321, 324, 325, 336, 337, 340, 341, 1024, 1025, 1028, 1029, 1040, 1041, 1044, 1045, 1088, 1089, 1092, 1093, 1104, 1105, 1108, 1109, 1280, 1281, 1284, 1285, 1296, 1297, 1300, 1301, 1344, 1345, 1348, 1349, 1360, 1361, 1364, 1365, 4096, 4097, 4100, 4101, 4112, 4113, 4116, 4117, 4160, 4161, 4164, 4165, 4176, 4177, 4180, 4181, 4352, 4353, 4356, 4357, 4368, 4369, 4372, 4373, 4416, 4417, 4420, 4421, 4432, 4433, 4436, 4437, 5120, 5121, 5124, 5125, 5136, 5137, 5140, 5141, 5184, 5185, 5188, 5189, 5200, 5201, 5204, 5205, 5376, 5377, 5380, 5381, 5392, 5393, 5396, 5397, 5440, 5441, 5444, 5445, 5456, 5457, 5460, 5461, 16384, 16385, 16388, 16389, 16400, 16401, 16404, 16405, 16448, 16449, 16452, 16453, 16464, 16465, 16468, 16469, 16640, 16641, 16644, 16645, 16656, 16657, 16660, 16661, 16704, 16705, 16708, 16709, 16720, 16721, 16724, 16725, 17408, 17409, 17412, 17413, 17424, 17425, 17428, 17429, 17472, 17473, 17476, 17477, 17488, 17489, 17492, 17493, 17664, 17665, 17668, 17669, 17680, 17681, 17684, 17685, 17728, 17729, 17732, 17733, 17744, 17745, 17748, 17749, 20480, 20481, 20484, 20485, 20496, 20497, 20500, 20501, 20544, 20545, 20548, 20549, 20560, 20561, 20564, 20565, 20736, 20737, 20740, 20741, 20752, 20753, 20756, 20757, 20800, 20801, 20804, 20805, 20816, 20817, 20820, 20821, 21504, 21505, 21508, 21509, 21520, 21521, 21524, 21525, 21568, 21569, 21572, 21573, 21584, 21585, 21588, 21589, 21760, 21761, 21764, 21765, 21776, 21777, 21780, 21781, 21824, 21825, 21828, 21829, 21840, 21841, 21844, 21845 };
  private static final int[] bcI = { 0, 1, 8, 9, 64, 65, 72, 73, 512, 513, 520, 521, 576, 577, 584, 585, 4096, 4097, 4104, 4105, 4160, 4161, 4168, 4169, 4608, 4609, 4616, 4617, 4672, 4673, 4680, 4681, 32768, 32769, 32776, 32777, 32832, 32833, 32840, 32841, 33280, 33281, 33288, 33289, 33344, 33345, 33352, 33353, 36864, 36865, 36872, 36873, 36928, 36929, 36936, 36937, 37376, 37377, 37384, 37385, 37440, 37441, 37448, 37449, 262144, 262145, 262152, 262153, 262208, 262209, 262216, 262217, 262656, 262657, 262664, 262665, 262720, 262721, 262728, 262729, 266240, 266241, 266248, 266249, 266304, 266305, 266312, 266313, 266752, 266753, 266760, 266761, 266816, 266817, 266824, 266825, 294912, 294913, 294920, 294921, 294976, 294977, 294984, 294985, 295424, 295425, 295432, 295433, 295488, 295489, 295496, 295497, 299008, 299009, 299016, 299017, 299072, 299073, 299080, 299081, 299520, 299521, 299528, 299529, 299584, 299585, 299592, 299593 };
  private static final int[] bcJ = { 0, 1, 16, 17, 256, 257, 272, 273, 4096, 4097, 4112, 4113, 4352, 4353, 4368, 4369, 65536, 65537, 65552, 65553, 65792, 65793, 65808, 65809, 69632, 69633, 69648, 69649, 69888, 69889, 69904, 69905, 1048576, 1048577, 1048592, 1048593, 1048832, 1048833, 1048848, 1048849, 1052672, 1052673, 1052688, 1052689, 1052928, 1052929, 1052944, 1052945, 1114112, 1114113, 1114128, 1114129, 1114368, 1114369, 1114384, 1114385, 1118208, 1118209, 1118224, 1118225, 1118464, 1118465, 1118480, 1118481, 16777216, 16777217, 16777232, 16777233, 16777472, 16777473, 16777488, 16777489, 16781312, 16781313, 16781328, 16781329, 16781568, 16781569, 16781584, 16781585, 16842752, 16842753, 16842768, 16842769, 16843008, 16843009, 16843024, 16843025, 16846848, 16846849, 16846864, 16846865, 16847104, 16847105, 16847120, 16847121, 17825792, 17825793, 17825808, 17825809, 17826048, 17826049, 17826064, 17826065, 17829888, 17829889, 17829904, 17829905, 17830144, 17830145, 17830160, 17830161, 17891328, 17891329, 17891344, 17891345, 17891584, 17891585, 17891600, 17891601, 17895424, 17895425, 17895440, 17895441, 17895680, 17895681, 17895696, 17895697, 268435456, 268435457, 268435472, 268435473, 268435712, 268435713, 268435728, 268435729, 268439552, 268439553, 268439568, 268439569, 268439808, 268439809, 268439824, 268439825, 268500992, 268500993, 268501008, 268501009, 268501248, 268501249, 268501264, 268501265, 268505088, 268505089, 268505104, 268505105, 268505344, 268505345, 268505360, 268505361, 269484032, 269484033, 269484048, 269484049, 269484288, 269484289, 269484304, 269484305, 269488128, 269488129, 269488144, 269488145, 269488384, 269488385, 269488400, 269488401, 269549568, 269549569, 269549584, 269549585, 269549824, 269549825, 269549840, 269549841, 269553664, 269553665, 269553680, 269553681, 269553920, 269553921, 269553936, 269553937, 285212672, 285212673, 285212688, 285212689, 285212928, 285212929, 285212944, 285212945, 285216768, 285216769, 285216784, 285216785, 285217024, 285217025, 285217040, 285217041, 285278208, 285278209, 285278224, 285278225, 285278464, 285278465, 285278480, 285278481, 285282304, 285282305, 285282320, 285282321, 285282560, 285282561, 285282576, 285282577, 286261248, 286261249, 286261264, 286261265, 286261504, 286261505, 286261520, 286261521, 286265344, 286265345, 286265360, 286265361, 286265600, 286265601, 286265616, 286265617, 286326784, 286326785, 286326800, 286326801, 286327040, 286327041, 286327056, 286327057, 286330880, 286330881, 286330896, 286330897, 286331136, 286331137, 286331152, 286331153 };
  private static final int[] bcK = { 0, 1, 32, 33, 1024, 1025, 1056, 1057, 32768, 32769, 32800, 32801, 33792, 33793, 33824, 33825, 1048576, 1048577, 1048608, 1048609, 1049600, 1049601, 1049632, 1049633, 1081344, 1081345, 1081376, 1081377, 1082368, 1082369, 1082400, 1082401, 33554432, 33554433, 33554464, 33554465, 33555456, 33555457, 33555488, 33555489, 33587200, 33587201, 33587232, 33587233, 33588224, 33588225, 33588256, 33588257, 34603008, 34603009, 34603040, 34603041, 34604032, 34604033, 34604064, 34604065, 34635776, 34635777, 34635808, 34635809, 34636800, 34636801, 34636832, 34636833, 1073741824, 1073741825, 1073741856, 1073741857, 1073742848, 1073742849, 1073742880, 1073742881, 1073774592, 1073774593, 1073774624, 1073774625, 1073775616, 1073775617, 1073775648, 1073775649, 1074790400, 1074790401, 1074790432, 1074790433, 1074791424, 1074791425, 1074791456, 1074791457, 1074823168, 1074823169, 1074823200, 1074823201, 1074824192, 1074824193, 1074824224, 1074824225, 1107296256, 1107296257, 1107296288, 1107296289, 1107297280, 1107297281, 1107297312, 1107297313, 1107329024, 1107329025, 1107329056, 1107329057, 1107330048, 1107330049, 1107330080, 1107330081, 1108344832, 1108344833, 1108344864, 1108344865, 1108345856, 1108345857, 1108345888, 1108345889, 1108377600, 1108377601, 1108377632, 1108377633, 1108378624, 1108378625, 1108378656, 1108378657 };
  private static final long[] bcL = { 0L, 1L, 128L, 129L, 16384L, 16385L, 16512L, 16513L, 2097152L, 2097153L, 2097280L, 2097281L, 2113536L, 2113537L, 2113664L, 2113665L, 268435456L, 268435457L, 268435584L, 268435585L, 268451840L, 268451841L, 268451968L, 268451969L, 270532608L, 270532609L, 270532736L, 270532737L, 270548992L, 270548993L, 270549120L, 270549121L, 34359738368L, 34359738369L, 34359738496L, 34359738497L, 34359754752L, 34359754753L, 34359754880L, 34359754881L, 34361835520L, 34361835521L, 34361835648L, 34361835649L, 34361851904L, 34361851905L, 34361852032L, 34361852033L, 34628173824L, 34628173825L, 34628173952L, 34628173953L, 34628190208L, 34628190209L, 34628190336L, 34628190337L, 34630270976L, 34630270977L, 34630271104L, 34630271105L, 34630287360L, 34630287361L, 34630287488L, 34630287489L, 4398046511104L, 4398046511105L, 4398046511232L, 4398046511233L, 4398046527488L, 4398046527489L, 4398046527616L, 4398046527617L, 4398048608256L, 4398048608257L, 4398048608384L, 4398048608385L, 4398048624640L, 4398048624641L, 4398048624768L, 4398048624769L, 4398314946560L, 4398314946561L, 4398314946688L, 4398314946689L, 4398314962944L, 4398314962945L, 4398314963072L, 4398314963073L, 4398317043712L, 4398317043713L, 4398317043840L, 4398317043841L, 4398317060096L, 4398317060097L, 4398317060224L, 4398317060225L, 4432406249472L, 4432406249473L, 4432406249600L, 4432406249601L, 4432406265856L, 4432406265857L, 4432406265984L, 4432406265985L, 4432408346624L, 4432408346625L, 4432408346752L, 4432408346753L, 4432408363008L, 4432408363009L, 4432408363136L, 4432408363137L, 4432674684928L, 4432674684929L, 4432674685056L, 4432674685057L, 4432674701312L, 4432674701313L, 4432674701440L, 4432674701441L, 4432676782080L, 4432676782081L, 4432676782208L, 4432676782209L, 4432676798464L, 4432676798465L, 4432676798592L, 4432676798593L, 562949953421312L, 562949953421313L, 562949953421440L, 562949953421441L, 562949953437696L, 562949953437697L, 562949953437824L, 562949953437825L, 562949955518464L, 562949955518465L, 562949955518592L, 562949955518593L, 562949955534848L, 562949955534849L, 562949955534976L, 562949955534977L, 562950221856768L, 562950221856769L, 562950221856896L, 562950221856897L, 562950221873152L, 562950221873153L, 562950221873280L, 562950221873281L, 562950223953920L, 562950223953921L, 562950223954048L, 562950223954049L, 562950223970304L, 562950223970305L, 562950223970432L, 562950223970433L, 562984313159680L, 562984313159681L, 562984313159808L, 562984313159809L, 562984313176064L, 562984313176065L, 562984313176192L, 562984313176193L, 562984315256832L, 562984315256833L, 562984315256960L, 562984315256961L, 562984315273216L, 562984315273217L, 562984315273344L, 562984315273345L, 562984581595136L, 562984581595137L, 562984581595264L, 562984581595265L, 562984581611520L, 562984581611521L, 562984581611648L, 562984581611649L, 562984583692288L, 562984583692289L, 562984583692416L, 562984583692417L, 562984583708672L, 562984583708673L, 562984583708800L, 562984583708801L, 567347999932416L, 567347999932417L, 567347999932544L, 567347999932545L, 567347999948800L, 567347999948801L, 567347999948928L, 567347999948929L, 567348002029568L, 567348002029569L, 567348002029696L, 567348002029697L, 567348002045952L, 567348002045953L, 567348002046080L, 567348002046081L, 567348268367872L, 567348268367873L, 567348268368000L, 567348268368001L, 567348268384256L, 567348268384257L, 567348268384384L, 567348268384385L, 567348270465024L, 567348270465025L, 567348270465152L, 567348270465153L, 567348270481408L, 567348270481409L, 567348270481536L, 567348270481537L, 567382359670784L, 567382359670785L, 567382359670912L, 567382359670913L, 567382359687168L, 567382359687169L, 567382359687296L, 567382359687297L, 567382361767936L, 567382361767937L, 567382361768064L, 567382361768065L, 567382361784320L, 567382361784321L, 567382361784448L, 567382361784449L, 567382628106240L, 567382628106241L, 567382628106368L, 567382628106369L, 567382628122624L, 567382628122625L, 567382628122752L, 567382628122753L, 567382630203392L, 567382630203393L, 567382630203520L, 567382630203521L, 567382630219776L, 567382630219777L, 567382630219904L, 567382630219905L, 72057594037927936L, 72057594037927937L, 72057594037928064L, 72057594037928065L, 72057594037944320L, 72057594037944321L, 72057594037944448L, 72057594037944449L, 72057594040025088L, 72057594040025089L, 72057594040025216L, 72057594040025217L, 72057594040041472L, 72057594040041473L, 72057594040041600L, 72057594040041601L, 72057594306363392L, 72057594306363393L, 72057594306363520L, 72057594306363521L, 72057594306379776L, 72057594306379777L, 72057594306379904L, 72057594306379905L, 72057594308460544L, 72057594308460545L, 72057594308460672L, 72057594308460673L, 72057594308476928L, 72057594308476929L, 72057594308477056L, 72057594308477057L, 72057628397666304L, 72057628397666305L, 72057628397666432L, 72057628397666433L, 72057628397682688L, 72057628397682689L, 72057628397682816L, 72057628397682817L, 72057628399763456L, 72057628399763457L, 72057628399763584L, 72057628399763585L, 72057628399779840L, 72057628399779841L, 72057628399779968L, 72057628399779969L, 72057628666101760L, 72057628666101761L, 72057628666101888L, 72057628666101889L, 72057628666118144L, 72057628666118145L, 72057628666118272L, 72057628666118273L, 72057628668198912L, 72057628668198913L, 72057628668199040L, 72057628668199041L, 72057628668215296L, 72057628668215297L, 72057628668215424L, 72057628668215425L, 72061992084439040L, 72061992084439041L, 72061992084439168L, 72061992084439169L, 72061992084455424L, 72061992084455425L, 72061992084455552L, 72061992084455553L, 72061992086536192L, 72061992086536193L, 72061992086536320L, 72061992086536321L, 72061992086552576L, 72061992086552577L, 72061992086552704L, 72061992086552705L, 72061992352874496L, 72061992352874497L, 72061992352874624L, 72061992352874625L, 72061992352890880L, 72061992352890881L, 72061992352891008L, 72061992352891009L, 72061992354971648L, 72061992354971649L, 72061992354971776L, 72061992354971777L, 72061992354988032L, 72061992354988033L, 72061992354988160L, 72061992354988161L, 72062026444177408L, 72062026444177409L, 72062026444177536L, 72062026444177537L, 72062026444193792L, 72062026444193793L, 72062026444193920L, 72062026444193921L, 72062026446274560L, 72062026446274561L, 72062026446274688L, 72062026446274689L, 72062026446290944L, 72062026446290945L, 72062026446291072L, 72062026446291073L, 72062026712612864L, 72062026712612865L, 72062026712612992L, 72062026712612993L, 72062026712629248L, 72062026712629249L, 72062026712629376L, 72062026712629377L, 72062026714710016L, 72062026714710017L, 72062026714710144L, 72062026714710145L, 72062026714726400L, 72062026714726401L, 72062026714726528L, 72062026714726529L, 72620543991349248L, 72620543991349249L, 72620543991349376L, 72620543991349377L, 72620543991365632L, 72620543991365633L, 72620543991365760L, 72620543991365761L, 72620543993446400L, 72620543993446401L, 72620543993446528L, 72620543993446529L, 72620543993462784L, 72620543993462785L, 72620543993462912L, 72620543993462913L, 72620544259784704L, 72620544259784705L, 72620544259784832L, 72620544259784833L, 72620544259801088L, 72620544259801089L, 72620544259801216L, 72620544259801217L, 72620544261881856L, 72620544261881857L, 72620544261881984L, 72620544261881985L, 72620544261898240L, 72620544261898241L, 72620544261898368L, 72620544261898369L, 72620578351087616L, 72620578351087617L, 72620578351087744L, 72620578351087745L, 72620578351104000L, 72620578351104001L, 72620578351104128L, 72620578351104129L, 72620578353184768L, 72620578353184769L, 72620578353184896L, 72620578353184897L, 72620578353201152L, 72620578353201153L, 72620578353201280L, 72620578353201281L, 72620578619523072L, 72620578619523073L, 72620578619523200L, 72620578619523201L, 72620578619539456L, 72620578619539457L, 72620578619539584L, 72620578619539585L, 72620578621620224L, 72620578621620225L, 72620578621620352L, 72620578621620353L, 72620578621636608L, 72620578621636609L, 72620578621636736L, 72620578621636737L, 72624942037860352L, 72624942037860353L, 72624942037860480L, 72624942037860481L, 72624942037876736L, 72624942037876737L, 72624942037876864L, 72624942037876865L, 72624942039957504L, 72624942039957505L, 72624942039957632L, 72624942039957633L, 72624942039973888L, 72624942039973889L, 72624942039974016L, 72624942039974017L, 72624942306295808L, 72624942306295809L, 72624942306295936L, 72624942306295937L, 72624942306312192L, 72624942306312193L, 72624942306312320L, 72624942306312321L, 72624942308392960L, 72624942308392961L, 72624942308393088L, 72624942308393089L, 72624942308409344L, 72624942308409345L, 72624942308409472L, 72624942308409473L, 72624976397598720L, 72624976397598721L, 72624976397598848L, 72624976397598849L, 72624976397615104L, 72624976397615105L, 72624976397615232L, 72624976397615233L, 72624976399695872L, 72624976399695873L, 72624976399696000L, 72624976399696001L, 72624976399712256L, 72624976399712257L, 72624976399712384L, 72624976399712385L, 72624976666034176L, 72624976666034177L, 72624976666034304L, 72624976666034305L, 72624976666050560L, 72624976666050561L, 72624976666050688L, 72624976666050689L, 72624976668131328L, 72624976668131329L, 72624976668131456L, 72624976668131457L, 72624976668147712L, 72624976668147713L, 72624976668147840L, 72624976668147841L };
  static final byte[] bcM = { 0, 1, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8 };
  private long[] bcN;
  
  public LongArray(int paramInt)
  {
    this.bcN = new long[paramInt];
  }
  
  public LongArray(BigInteger paramBigInteger)
  {
    if ((paramBigInteger == null) || (paramBigInteger.signum() < 0)) {
      throw new IllegalArgumentException("invalid F2m field value");
    }
    if (paramBigInteger.signum() == 0)
    {
      this.bcN = new long[] { 0L };
      return;
    }
    paramBigInteger = paramBigInteger.toByteArray();
    int j = paramBigInteger.length;
    int k = 0;
    int i = j;
    if (paramBigInteger[0] == 0)
    {
      i = j - 1;
      k = 1;
    }
    j = (i + 7) / 8;
    this.bcN = new long[j];
    int n = j - 1;
    int i1 = i % 8 + k;
    long l = 0L;
    int m = k;
    j = n;
    i = m;
    if (k < i1)
    {
      i = m;
      while (i < i1)
      {
        l = l << 8 | paramBigInteger[i] & 0xFF;
        i += 1;
      }
      long[] arrayOfLong = this.bcN;
      j = n - 1;
      arrayOfLong[n] = l;
    }
    while (j >= 0)
    {
      l = 0L;
      k = 0;
      while (k < 8)
      {
        m = i + 1;
        l = l << 8 | paramBigInteger[i] & 0xFF;
        k += 1;
        i = m;
      }
      this.bcN[j] = l;
      j -= 1;
    }
  }
  
  public LongArray(long[] paramArrayOfLong)
  {
    this.bcN = paramArrayOfLong;
  }
  
  public LongArray(long[] paramArrayOfLong, int paramInt1, int paramInt2)
  {
    if ((paramInt1 == 0) && (paramInt2 == paramArrayOfLong.length))
    {
      this.bcN = paramArrayOfLong;
      return;
    }
    this.bcN = new long[paramInt2];
    System.arraycopy(paramArrayOfLong, paramInt1, this.bcN, 0, paramInt2);
  }
  
  private static long ˊ(long[] paramArrayOfLong1, int paramInt1, long[] paramArrayOfLong2, int paramInt2, int paramInt3, int paramInt4)
  {
    long l1 = 0L;
    int i = 0;
    while (i < paramInt3)
    {
      long l2 = paramArrayOfLong1[(paramInt1 + i)];
      paramArrayOfLong2[(paramInt2 + i)] = (l2 << paramInt4 | l1);
      l1 = l2 >>> 64 - paramInt4;
      i += 1;
    }
    return l1;
  }
  
  private static LongArray ˊ(long[] paramArrayOfLong, int paramInt1, int paramInt2, int paramInt3, int[] paramArrayOfInt)
  {
    return new LongArray(paramArrayOfLong, paramInt1, ˋ(paramArrayOfLong, paramInt1, paramInt2, paramInt3, paramArrayOfInt));
  }
  
  private static void ˊ(long paramLong, long[] paramArrayOfLong1, int paramInt1, long[] paramArrayOfLong2, int paramInt2)
  {
    if ((1L & paramLong) != 0L) {
      ˊ(paramArrayOfLong2, paramInt2, paramArrayOfLong1, 0, paramInt1);
    }
    int i = 1;
    for (;;)
    {
      long l = paramLong >>> 1;
      paramLong = l;
      if (l == 0L) {
        break;
      }
      if ((1L & paramLong) != 0L)
      {
        l = ˋ(paramArrayOfLong2, paramInt2, paramArrayOfLong1, 0, paramInt1, i);
        if (l != 0L)
        {
          int j = paramInt2 + paramInt1;
          paramArrayOfLong2[j] ^= l;
        }
      }
      i += 1;
    }
  }
  
  private void ˊ(LongArray paramLongArray, int paramInt1, int paramInt2)
  {
    paramInt1 = paramInt1 + 63 >>> 6;
    int i = paramInt2 >>> 6;
    paramInt2 &= 0x3F;
    if (paramInt2 == 0)
    {
      ˊ(this.bcN, i, paramLongArray.bcN, 0, paramInt1);
      return;
    }
    long l = ˋ(this.bcN, i, paramLongArray.bcN, 0, paramInt1, paramInt2);
    if (l != 0L)
    {
      paramLongArray = this.bcN;
      paramInt1 += i;
      paramLongArray[paramInt1] ^= l;
    }
  }
  
  private static void ˊ(long[] paramArrayOfLong, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    int i = paramInt3 >>> 6;
    for (;;)
    {
      paramInt2 -= 1;
      if (paramInt2 <= i) {
        break;
      }
      l = paramArrayOfLong[(paramInt1 + paramInt2)];
      if (l != 0L)
      {
        paramArrayOfLong[(paramInt1 + paramInt2)] = 0L;
        ˊ(paramArrayOfLong, paramInt1, paramInt2 << 6, l, paramInt4, paramArrayOfInt);
      }
    }
    paramInt2 = paramInt3 & 0x3F;
    long l = paramArrayOfLong[(paramInt1 + i)] >>> paramInt2;
    if (l != 0L)
    {
      i = paramInt1 + i;
      paramArrayOfLong[i] ^= l << paramInt2;
      ˊ(paramArrayOfLong, paramInt1, paramInt3, l, paramInt4, paramArrayOfInt);
    }
  }
  
  private static void ˊ(long[] paramArrayOfLong, int paramInt1, int paramInt2, long paramLong)
  {
    paramInt1 += (paramInt2 >>> 6);
    paramInt2 &= 0x3F;
    if (paramInt2 == 0)
    {
      paramArrayOfLong[paramInt1] ^= paramLong;
      return;
    }
    paramArrayOfLong[paramInt1] ^= paramLong << paramInt2;
    paramLong >>>= 64 - paramInt2;
    if (paramLong != 0L)
    {
      paramInt1 += 1;
      paramArrayOfLong[paramInt1] ^= paramLong;
    }
  }
  
  private static void ˊ(long[] paramArrayOfLong, int paramInt1, int paramInt2, long paramLong, int paramInt3, int[] paramArrayOfInt)
  {
    paramInt3 = paramInt2 - paramInt3;
    paramInt2 = paramArrayOfInt.length;
    for (;;)
    {
      paramInt2 -= 1;
      if (paramInt2 < 0) {
        break;
      }
      ˊ(paramArrayOfLong, paramInt1, paramArrayOfInt[paramInt2] + paramInt3, paramLong);
    }
    ˊ(paramArrayOfLong, paramInt1, paramInt3, paramLong);
  }
  
  private static void ˊ(long[] paramArrayOfLong, int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    int i = paramInt1 << 1;
    paramInt2 = paramInt1;
    paramInt1 = i;
    for (;;)
    {
      paramInt2 -= 1;
      if (paramInt2 < 0) {
        break;
      }
      long l = paramArrayOfLong[paramInt2];
      paramInt1 -= 1;
      paramArrayOfLong[paramInt1] = ｧ((int)(l >>> 32));
      paramInt1 -= 1;
      paramArrayOfLong[paramInt1] = ｧ((int)l);
    }
  }
  
  private static void ˊ(long[] paramArrayOfLong1, int paramInt1, long[] paramArrayOfLong2, int paramInt2, int paramInt3)
  {
    int i = 0;
    while (i < paramInt3)
    {
      int j = paramInt1 + i;
      paramArrayOfLong1[j] ^= paramArrayOfLong2[(paramInt2 + i)];
      i += 1;
    }
  }
  
  private static void ˊ(long[] paramArrayOfLong1, int paramInt1, long[] paramArrayOfLong2, int paramInt2, long[] paramArrayOfLong3, int paramInt3, int paramInt4)
  {
    int i = 0;
    while (i < paramInt4)
    {
      paramArrayOfLong1[(paramInt1 + i)] ^= paramArrayOfLong2[(paramInt2 + i)];
      i += 1;
    }
  }
  
  private static boolean ˊ(long[] paramArrayOfLong, int paramInt1, int paramInt2)
  {
    return (paramArrayOfLong[(paramInt1 + (paramInt2 >>> 6))] & 1L << (paramInt2 & 0x3F)) != 0L;
  }
  
  private static int ˋ(long[] paramArrayOfLong, int paramInt1, int paramInt2, int paramInt3, int[] paramArrayOfInt)
  {
    int n = paramInt3 + 63 >>> 6;
    if (paramInt2 < n) {
      return paramInt2;
    }
    int k = Math.min(paramInt2 << 6, (paramInt3 << 1) - 1);
    int i = (paramInt2 << 6) - k;
    while (i >= 64)
    {
      paramInt2 -= 1;
      i -= 64;
    }
    int j = paramArrayOfInt.length;
    int m = paramArrayOfInt[(j - 1)];
    if (j > 1) {
      j = paramArrayOfInt[(j - 2)];
    } else {
      j = 0;
    }
    m = Math.max(paramInt3, m + 64);
    int i1 = Math.min(k - m, paramInt3 - j) + i >> 6;
    i = k;
    j = paramInt2;
    if (i1 > 1)
    {
      i = paramInt2 - i1;
      ˋ(paramArrayOfLong, paramInt1, paramInt2, i, paramInt3, paramArrayOfInt);
      while (paramInt2 > i)
      {
        paramInt2 -= 1;
        paramArrayOfLong[(paramInt1 + paramInt2)] = 0L;
      }
      i <<= 6;
      j = paramInt2;
    }
    paramInt2 = i;
    if (i > m)
    {
      ˊ(paramArrayOfLong, paramInt1, j, m, paramInt3, paramArrayOfInt);
      paramInt2 = m;
    }
    if (paramInt2 > paramInt3) {
      ˎ(paramArrayOfLong, paramInt1, paramInt2, paramInt3, paramArrayOfInt);
    }
    return n;
  }
  
  private static long ˋ(long[] paramArrayOfLong1, int paramInt1, long[] paramArrayOfLong2, int paramInt2, int paramInt3, int paramInt4)
  {
    long l1 = 0L;
    int i = 0;
    while (i < paramInt3)
    {
      long l2 = paramArrayOfLong2[(paramInt2 + i)];
      int j = paramInt1 + i;
      paramArrayOfLong1[j] ^= (l2 << paramInt4 | l1);
      l1 = l2 >>> 64 - paramInt4;
      i += 1;
    }
    return l1;
  }
  
  private static void ˋ(long[] paramArrayOfLong, int paramInt1, int paramInt2)
  {
    paramInt1 += (paramInt2 >>> 6);
    paramArrayOfLong[paramInt1] ^= 1L << (paramInt2 & 0x3F);
  }
  
  private static void ˋ(long[] paramArrayOfLong, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    int i = (paramInt3 << 6) - paramInt4;
    paramInt4 = paramArrayOfInt.length;
    for (;;)
    {
      paramInt4 -= 1;
      if (paramInt4 < 0) {
        break;
      }
      ˏ(paramArrayOfLong, paramInt1, paramArrayOfLong, paramInt1 + paramInt3, paramInt2 - paramInt3, paramArrayOfInt[paramInt4] + i);
    }
    ˏ(paramArrayOfLong, paramInt1, paramArrayOfLong, paramInt1 + paramInt3, paramInt2 - paramInt3, i);
  }
  
  private static void ˋ(long[] paramArrayOfLong1, int paramInt1, long[] paramArrayOfLong2, int paramInt2, long[] paramArrayOfLong3, int paramInt3, int paramInt4)
  {
    int i = 0;
    while (i < paramInt4)
    {
      int j = paramInt1 + i;
      paramArrayOfLong1[j] ^= paramArrayOfLong2[(paramInt2 + i)] ^ paramArrayOfLong3[(paramInt3 + i)];
      i += 1;
    }
  }
  
  private static long ˎ(long[] paramArrayOfLong1, int paramInt1, long[] paramArrayOfLong2, int paramInt2, int paramInt3, int paramInt4)
  {
    long l2;
    for (long l1 = 0L;; l1 = l2 << 64 - paramInt4)
    {
      paramInt3 -= 1;
      if (paramInt3 < 0) {
        break;
      }
      l2 = paramArrayOfLong2[(paramInt2 + paramInt3)];
      int i = paramInt1 + paramInt3;
      paramArrayOfLong1[i] ^= (l2 >>> paramInt4 | l1);
    }
    return l1;
  }
  
  private static void ˎ(long[] paramArrayOfLong, int paramInt1, int paramInt2, int paramInt3, int[] paramArrayOfInt)
  {
    for (;;)
    {
      int i = paramInt2 - 1;
      if (i < paramInt3) {
        break;
      }
      paramInt2 = i;
      if (ˊ(paramArrayOfLong, paramInt1, i))
      {
        ˏ(paramArrayOfLong, paramInt1, i, paramInt3, paramArrayOfInt);
        paramInt2 = i;
      }
    }
  }
  
  private static void ˏ(long[] paramArrayOfLong, int paramInt1, int paramInt2, int paramInt3, int[] paramArrayOfInt)
  {
    ˋ(paramArrayOfLong, paramInt1, paramInt2);
    paramInt3 = paramInt2 - paramInt3;
    paramInt2 = paramArrayOfInt.length;
    for (;;)
    {
      paramInt2 -= 1;
      if (paramInt2 < 0) {
        break;
      }
      ˋ(paramArrayOfLong, paramInt1, paramArrayOfInt[paramInt2] + paramInt3);
    }
    ˋ(paramArrayOfLong, paramInt1, paramInt3);
  }
  
  private static void ˏ(long[] paramArrayOfLong1, int paramInt1, long[] paramArrayOfLong2, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt1 += (paramInt4 >>> 6);
    paramInt4 &= 0x3F;
    if (paramInt4 == 0)
    {
      ˊ(paramArrayOfLong1, paramInt1, paramArrayOfLong2, paramInt2, paramInt3);
      return;
    }
    long l = ˎ(paramArrayOfLong1, paramInt1 + 1, paramArrayOfLong2, paramInt2, paramInt3, 64 - paramInt4);
    paramArrayOfLong1[paramInt1] ^= l;
  }
  
  private static int ﯨ(long paramLong)
  {
    int i = (int)(paramLong >>> 32);
    int j;
    if (i == 0)
    {
      i = (int)paramLong;
      j = 0;
    }
    else
    {
      j = 32;
    }
    int k = i >>> 16;
    if (k == 0)
    {
      k = i >>> 8;
      if (k == 0) {
        i = bcM[i];
      } else {
        i = bcM[k] + 8;
      }
    }
    else
    {
      i = k >>> 8;
      if (i == 0) {
        i = bcM[k] + 16;
      } else {
        i = bcM[i] + 24;
      }
    }
    return j + i;
  }
  
  private int Ｊ(int paramInt)
  {
    paramInt = paramInt + 62 >>> 6;
    int i;
    long l;
    do
    {
      if (paramInt == 0) {
        return 0;
      }
      long[] arrayOfLong = this.bcN;
      i = paramInt - 1;
      l = arrayOfLong[i];
      paramInt = i;
    } while (l == 0L);
    return (i << 6) + ﯨ(l);
  }
  
  private long[] Ｌ(int paramInt)
  {
    long[] arrayOfLong = new long[paramInt];
    System.arraycopy(this.bcN, 0, arrayOfLong, 0, Math.min(this.bcN.length, paramInt));
    return arrayOfLong;
  }
  
  private static long ｧ(int paramInt)
  {
    int i = bcH[(paramInt & 0xFF)];
    int j = bcH[(paramInt >>> 8 & 0xFF)];
    return ((bcH[(paramInt >>> 16 & 0xFF)] | bcH[(paramInt >>> 24)] << 16) & 0xFFFFFFFF) << 32 | (i | j << 16) & 0xFFFFFFFF;
  }
  
  public Object clone()
  {
    return new LongArray(Arrays.ʿ(this.bcN));
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof LongArray)) {
      return false;
    }
    paramObject = (LongArray)paramObject;
    int j = pZ();
    if (paramObject.pZ() != j) {
      return false;
    }
    int i = 0;
    while (i < j)
    {
      if (this.bcN[i] != paramObject.bcN[i]) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public int hashCode()
  {
    int k = pZ();
    int j = 1;
    int i = 0;
    while (i < k)
    {
      long l = this.bcN[i];
      j = (j * 31 ^ (int)l) * 31 ^ (int)(l >>> 32);
      i += 1;
    }
    return j;
  }
  
  public boolean isZero()
  {
    long[] arrayOfLong = this.bcN;
    int i = 0;
    while (i < arrayOfLong.length)
    {
      if (arrayOfLong[i] != 0L) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public boolean pA()
  {
    long[] arrayOfLong = this.bcN;
    if (arrayOfLong[0] != 1L) {
      return false;
    }
    int i = 1;
    while (i < arrayOfLong.length)
    {
      if (arrayOfLong[i] != 0L) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public boolean pB()
  {
    return (this.bcN.length > 0) && ((this.bcN[0] & 1L) != 0L);
  }
  
  public int pZ()
  {
    return ﻣ(this.bcN.length);
  }
  
  public int qa()
  {
    int i = this.bcN.length;
    int j;
    long l;
    do
    {
      if (i == 0) {
        return 0;
      }
      long[] arrayOfLong = this.bcN;
      j = i - 1;
      l = arrayOfLong[j];
      i = j;
    } while (l == 0L);
    return (j << 6) + ﯨ(l);
  }
  
  public LongArray qb()
  {
    if (this.bcN.length == 0) {
      return new LongArray(new long[] { 1L });
    }
    long[] arrayOfLong = Ｌ(Math.max(1, pZ()));
    arrayOfLong[0] ^= 1L;
    return new LongArray(arrayOfLong);
  }
  
  public BigInteger toBigInteger()
  {
    int i1 = pZ();
    if (i1 == 0) {
      return ECConstants.ZERO;
    }
    long l = this.bcN[(i1 - 1)];
    byte[] arrayOfByte1 = new byte[8];
    int j = 0;
    int m = 0;
    int k = 7;
    int n;
    while (k >= 0)
    {
      int i = (byte)(int)(l >>> k * 8);
      if (m == 0)
      {
        n = j;
        if (i == 0) {}
      }
      else
      {
        m = 1;
        n = j + 1;
        arrayOfByte1[j] = i;
      }
      k -= 1;
      j = n;
    }
    byte[] arrayOfByte2 = new byte[(i1 - 1) * 8 + j];
    k = 0;
    while (k < j)
    {
      arrayOfByte2[k] = arrayOfByte1[k];
      k += 1;
    }
    k = i1 - 2;
    while (k >= 0)
    {
      l = this.bcN[k];
      m = 7;
      while (m >= 0)
      {
        n = j + 1;
        arrayOfByte2[j] = ((byte)(int)(l >>> m * 8));
        m -= 1;
        j = n;
      }
      k -= 1;
    }
    return new BigInteger(1, arrayOfByte2);
  }
  
  public String toString()
  {
    int i = pZ();
    if (i == 0) {
      return "0";
    }
    Object localObject = this.bcN;
    i -= 1;
    localObject = new StringBuffer(Long.toBinaryString(localObject[i]));
    for (;;)
    {
      i -= 1;
      if (i < 0) {
        break;
      }
      String str = Long.toBinaryString(this.bcN[i]);
      int j = str.length();
      if (j < 64) {
        ((StringBuffer)localObject).append("0000000000000000000000000000000000000000000000000000000000000000".substring(j));
      }
      ((StringBuffer)localObject).append(str);
    }
    return ((StringBuffer)localObject).toString();
  }
  
  public LongArray ˊ(LongArray paramLongArray, int paramInt, int[] paramArrayOfInt)
  {
    int k = qa();
    if (k == 0) {
      return this;
    }
    int m = paramLongArray.qa();
    if (m == 0) {
      return paramLongArray;
    }
    Object localObject1 = this;
    Object localObject2 = paramLongArray;
    int j = k;
    int i = m;
    if (k > m)
    {
      localObject2 = this;
      j = m;
      i = k;
      localObject1 = paramLongArray;
    }
    int i1 = j + 63 >>> 6;
    m = i + 63 >>> 6;
    int n = j + i + 62 >>> 6;
    long l;
    if (i1 == 1)
    {
      l = localObject1.bcN[0];
      if (l == 1L) {
        return localObject2;
      }
      paramLongArray = new long[n];
      ˊ(l, ((LongArray)localObject2).bcN, m, paramLongArray, 0);
      return ˊ(paramLongArray, 0, n, paramInt, paramArrayOfInt);
    }
    k = i + 7 + 63 >>> 6;
    paramLongArray = new int[16];
    long[] arrayOfLong1 = new long[k << 4];
    j = k;
    paramLongArray[1] = j;
    System.arraycopy(((LongArray)localObject2).bcN, 0, arrayOfLong1, j, m);
    i = 2;
    while (i < 16)
    {
      m = j + k;
      j = m;
      paramLongArray[i] = m;
      if ((i & 0x1) == 0) {
        ˊ(arrayOfLong1, j >>> 1, arrayOfLong1, j, k, 1);
      } else {
        ˊ(arrayOfLong1, k, arrayOfLong1, j - k, arrayOfLong1, j, k);
      }
      i += 1;
    }
    localObject2 = new long[arrayOfLong1.length];
    ˊ(arrayOfLong1, 0, (long[])localObject2, 0, arrayOfLong1.length, 4);
    localObject1 = ((LongArray)localObject1).bcN;
    long[] arrayOfLong2 = new long[n << 3];
    i = 0;
    while (i < i1)
    {
      l = localObject1[i];
      j = i;
      for (;;)
      {
        m = (int)l;
        l >>>= 4;
        int i2 = (int)l;
        ˋ(arrayOfLong2, j, arrayOfLong1, paramLongArray[(m & 0xF)], (long[])localObject2, paramLongArray[(i2 & 0xF)], k);
        l >>>= 4;
        if (l == 0L) {
          break;
        }
        j += n;
      }
      i += 1;
    }
    i = arrayOfLong2.length;
    for (;;)
    {
      j = i - n;
      i = j;
      if (j == 0) {
        break;
      }
      ˋ(arrayOfLong2, i - n, arrayOfLong2, i, n, 8);
    }
    return ˊ(arrayOfLong2, 0, n, paramInt, paramArrayOfInt);
  }
  
  public void ˊ(LongArray paramLongArray, int paramInt)
  {
    int i = paramLongArray.pZ();
    if (i == 0) {
      return;
    }
    int j = i + paramInt;
    if (j > this.bcN.length) {
      this.bcN = Ｌ(j);
    }
    ˊ(this.bcN, paramInt, paramLongArray.bcN, 0, i);
  }
  
  public LongArray ˋ(LongArray paramLongArray, int paramInt, int[] paramArrayOfInt)
  {
    int j = qa();
    if (j == 0) {
      return this;
    }
    int k = paramLongArray.qa();
    if (k == 0) {
      return paramLongArray;
    }
    paramArrayOfInt = this;
    Object localObject = paramLongArray;
    int i = j;
    paramInt = k;
    if (j > k)
    {
      localObject = this;
      i = k;
      paramInt = j;
      paramArrayOfInt = paramLongArray;
    }
    int n = i + 63 >>> 6;
    k = paramInt + 63 >>> 6;
    int m = i + paramInt + 62 >>> 6;
    long l;
    if (n == 1)
    {
      l = paramArrayOfInt.bcN[0];
      if (l == 1L) {
        return localObject;
      }
      paramLongArray = new long[m];
      ˊ(l, ((LongArray)localObject).bcN, k, paramLongArray, 0);
      return new LongArray(paramLongArray, 0, m);
    }
    j = paramInt + 7 + 63 >>> 6;
    paramLongArray = new int[16];
    long[] arrayOfLong1 = new long[j << 4];
    i = j;
    paramLongArray[1] = i;
    System.arraycopy(((LongArray)localObject).bcN, 0, arrayOfLong1, i, k);
    paramInt = 2;
    while (paramInt < 16)
    {
      k = i + j;
      i = k;
      paramLongArray[paramInt] = k;
      if ((paramInt & 0x1) == 0) {
        ˊ(arrayOfLong1, i >>> 1, arrayOfLong1, i, j, 1);
      } else {
        ˊ(arrayOfLong1, j, arrayOfLong1, i - j, arrayOfLong1, i, j);
      }
      paramInt += 1;
    }
    localObject = new long[arrayOfLong1.length];
    ˊ(arrayOfLong1, 0, (long[])localObject, 0, arrayOfLong1.length, 4);
    paramArrayOfInt = paramArrayOfInt.bcN;
    long[] arrayOfLong2 = new long[m << 3];
    paramInt = 0;
    while (paramInt < n)
    {
      l = paramArrayOfInt[paramInt];
      i = paramInt;
      for (;;)
      {
        k = (int)l;
        l >>>= 4;
        int i1 = (int)l;
        ˋ(arrayOfLong2, i, arrayOfLong1, paramLongArray[(k & 0xF)], (long[])localObject, paramLongArray[(i1 & 0xF)], j);
        l >>>= 4;
        if (l == 0L) {
          break;
        }
        i += m;
      }
      paramInt += 1;
    }
    paramInt = arrayOfLong2.length;
    for (;;)
    {
      i = paramInt - m;
      paramInt = i;
      if (i == 0) {
        break;
      }
      ˋ(arrayOfLong2, paramInt - m, arrayOfLong2, paramInt, m, 8);
    }
    return new LongArray(arrayOfLong2, 0, m);
  }
  
  public void ˋ(int paramInt, int[] paramArrayOfInt)
  {
    long[] arrayOfLong = this.bcN;
    paramInt = ˋ(arrayOfLong, 0, arrayOfLong.length, paramInt, paramArrayOfInt);
    if (paramInt < arrayOfLong.length)
    {
      this.bcN = new long[paramInt];
      System.arraycopy(arrayOfLong, 0, this.bcN, 0, paramInt);
    }
  }
  
  public LongArray ˎ(int paramInt, int[] paramArrayOfInt)
  {
    int i = pZ();
    if (i == 0) {
      return this;
    }
    int j = i << 1;
    long[] arrayOfLong = new long[j];
    i = 0;
    while (i < j)
    {
      long l = this.bcN[(i >>> 1)];
      int k = i + 1;
      arrayOfLong[i] = ｧ((int)l);
      i = k + 1;
      arrayOfLong[k] = ｧ((int)(l >>> 32));
    }
    return new LongArray(arrayOfLong, 0, ˋ(arrayOfLong, 0, arrayOfLong.length, paramInt, paramArrayOfInt));
  }
  
  public LongArray ˏ(int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    int j = pZ();
    if (j == 0) {
      return this;
    }
    long[] arrayOfLong = new long[paramInt2 + 63 >>> 6 << 1];
    System.arraycopy(this.bcN, 0, arrayOfLong, 0, j);
    int i = paramInt1;
    for (paramInt1 = j;; paramInt1 = ˋ(arrayOfLong, 0, arrayOfLong.length, paramInt2, paramArrayOfInt))
    {
      i -= 1;
      if (i < 0) {
        break;
      }
      ˊ(arrayOfLong, paramInt1, paramInt2, paramArrayOfInt);
    }
    return new LongArray(arrayOfLong, 0, paramInt1);
  }
  
  public LongArray ˏ(int paramInt, int[] paramArrayOfInt)
  {
    paramInt = pZ();
    if (paramInt == 0) {
      return this;
    }
    int i = paramInt << 1;
    paramArrayOfInt = new long[i];
    paramInt = 0;
    while (paramInt < i)
    {
      long l = this.bcN[(paramInt >>> 1)];
      int j = paramInt + 1;
      paramArrayOfInt[paramInt] = ｧ((int)l);
      paramInt = j + 1;
      paramArrayOfInt[j] = ｧ((int)(l >>> 32));
    }
    return new LongArray(paramArrayOfInt, 0, paramArrayOfInt.length);
  }
  
  public LongArray ᐝ(int paramInt, int[] paramArrayOfInt)
  {
    int i = qa();
    if (i == 0) {
      throw new IllegalStateException();
    }
    if (i == 1) {
      return this;
    }
    Object localObject1 = (LongArray)clone();
    int j = paramInt + 63 >>> 6;
    Object localObject2 = new LongArray(j);
    ˏ(((LongArray)localObject2).bcN, 0, paramInt, paramInt, paramArrayOfInt);
    paramArrayOfInt = new LongArray(j);
    paramArrayOfInt.bcN[0] = 1L;
    LongArray localLongArray = new LongArray(j);
    int[] arrayOfInt = new int[2];
    arrayOfInt[0] = i;
    arrayOfInt[1] = (paramInt + 1);
    LongArray[] arrayOfLongArray = new LongArray[2];
    arrayOfLongArray[0] = localObject1;
    arrayOfLongArray[1] = localObject2;
    localObject1 = new int[2];
    Object tmp135_133 = localObject1;
    tmp135_133[0] = 1;
    Object tmp139_135 = tmp135_133;
    tmp139_135[1] = 0;
    tmp139_135;
    localObject2 = new LongArray[2];
    localObject2[0] = paramArrayOfInt;
    localObject2[1] = localLongArray;
    int i2 = 1;
    j = arrayOfInt[1];
    paramInt = localObject1[1];
    int k = j - arrayOfInt[0];
    for (;;)
    {
      int n = i2;
      int i1 = j;
      i = paramInt;
      int m = k;
      if (k < 0)
      {
        m = -k;
        arrayOfInt[i2] = j;
        localObject1[i2] = paramInt;
        n = 1 - i2;
        i1 = arrayOfInt[n];
        i = localObject1[n];
      }
      arrayOfLongArray[n].ˊ(arrayOfLongArray[(1 - n)], arrayOfInt[(1 - n)], m);
      j = arrayOfLongArray[n].Ｊ(i1);
      if (j == 0) {
        return localObject2[(1 - n)];
      }
      paramInt = localObject1[(1 - n)];
      localObject2[n].ˊ(localObject2[(1 - n)], paramInt, m);
      k = paramInt + m;
      if (k > i)
      {
        paramInt = k;
      }
      else
      {
        paramInt = i;
        if (k == i) {
          paramInt = localObject2[n].Ｊ(i);
        }
      }
      k = m + (j - i1);
      i2 = n;
    }
  }
  
  public int ﻣ(int paramInt)
  {
    long[] arrayOfLong = this.bcN;
    int i = Math.min(paramInt, arrayOfLong.length);
    if (i < 1) {
      return 0;
    }
    paramInt = i;
    if (arrayOfLong[0] != 0L)
    {
      do
      {
        i -= 1;
      } while (arrayOfLong[i] == 0L);
      return i + 1;
    }
    do
    {
      i = paramInt - 1;
      if (arrayOfLong[i] != 0L) {
        return i + 1;
      }
      paramInt = i;
    } while (i > 0);
    return 0;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.LongArray
 * JD-Core Version:    0.7.0.1
 */