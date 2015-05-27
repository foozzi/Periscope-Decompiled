.class Lorg/spongycastle/math/ec/LongArray;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final bcH:[I

.field private static final bcI:[I

.field private static final bcJ:[I

.field private static final bcK:[I

.field private static final bcL:[J

.field static final bcM:[B


# instance fields
.field private bcN:[J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 15
    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/math/ec/LongArray;->bcH:[I

    .line 54
    const/16 v0, 0x80

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/math/ec/LongArray;->bcI:[I

    .line 77
    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/spongycastle/math/ec/LongArray;->bcJ:[I

    .line 116
    const/16 v0, 0x80

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/spongycastle/math/ec/LongArray;->bcK:[I

    .line 138
    const/16 v0, 0x200

    new-array v0, v0, [J

    fill-array-data v0, :array_4

    sput-object v0, Lorg/spongycastle/math/ec/LongArray;->bcL:[J

    .line 273
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    sput-object v0, Lorg/spongycastle/math/ec/LongArray;->bcM:[B

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x4
        0x5
        0x10
        0x11
        0x14
        0x15
        0x40
        0x41
        0x44
        0x45
        0x50
        0x51
        0x54
        0x55
        0x100
        0x101
        0x104
        0x105
        0x110
        0x111
        0x114
        0x115
        0x140
        0x141
        0x144
        0x145
        0x150
        0x151
        0x154
        0x155
        0x400
        0x401
        0x404
        0x405
        0x410
        0x411
        0x414
        0x415
        0x440
        0x441
        0x444
        0x445
        0x450
        0x451
        0x454
        0x455
        0x500
        0x501
        0x504
        0x505
        0x510
        0x511
        0x514
        0x515
        0x540
        0x541
        0x544
        0x545
        0x550
        0x551
        0x554
        0x555
        0x1000
        0x1001
        0x1004
        0x1005
        0x1010
        0x1011
        0x1014
        0x1015
        0x1040
        0x1041
        0x1044
        0x1045
        0x1050
        0x1051
        0x1054
        0x1055
        0x1100
        0x1101
        0x1104
        0x1105
        0x1110
        0x1111
        0x1114
        0x1115
        0x1140
        0x1141
        0x1144
        0x1145
        0x1150
        0x1151
        0x1154
        0x1155
        0x1400
        0x1401
        0x1404
        0x1405
        0x1410
        0x1411
        0x1414
        0x1415
        0x1440
        0x1441
        0x1444
        0x1445
        0x1450
        0x1451
        0x1454
        0x1455
        0x1500
        0x1501
        0x1504
        0x1505
        0x1510
        0x1511
        0x1514
        0x1515
        0x1540
        0x1541
        0x1544
        0x1545
        0x1550
        0x1551
        0x1554
        0x1555
        0x4000
        0x4001
        0x4004
        0x4005
        0x4010
        0x4011
        0x4014
        0x4015
        0x4040
        0x4041
        0x4044
        0x4045
        0x4050
        0x4051
        0x4054
        0x4055
        0x4100
        0x4101
        0x4104
        0x4105
        0x4110
        0x4111
        0x4114
        0x4115
        0x4140
        0x4141
        0x4144
        0x4145
        0x4150
        0x4151
        0x4154
        0x4155
        0x4400
        0x4401
        0x4404
        0x4405
        0x4410
        0x4411
        0x4414
        0x4415
        0x4440
        0x4441
        0x4444
        0x4445
        0x4450
        0x4451
        0x4454
        0x4455
        0x4500
        0x4501
        0x4504
        0x4505
        0x4510
        0x4511
        0x4514
        0x4515
        0x4540
        0x4541
        0x4544
        0x4545
        0x4550
        0x4551
        0x4554
        0x4555
        0x5000
        0x5001
        0x5004
        0x5005
        0x5010
        0x5011
        0x5014
        0x5015
        0x5040
        0x5041
        0x5044
        0x5045
        0x5050
        0x5051
        0x5054
        0x5055
        0x5100
        0x5101
        0x5104
        0x5105
        0x5110
        0x5111
        0x5114
        0x5115
        0x5140
        0x5141
        0x5144
        0x5145
        0x5150
        0x5151
        0x5154
        0x5155
        0x5400
        0x5401
        0x5404
        0x5405
        0x5410
        0x5411
        0x5414
        0x5415
        0x5440
        0x5441
        0x5444
        0x5445
        0x5450
        0x5451
        0x5454
        0x5455
        0x5500
        0x5501
        0x5504
        0x5505
        0x5510
        0x5511
        0x5514
        0x5515
        0x5540
        0x5541
        0x5544
        0x5545
        0x5550
        0x5551
        0x5554
        0x5555
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x8
        0x9
        0x40
        0x41
        0x48
        0x49
        0x200
        0x201
        0x208
        0x209
        0x240
        0x241
        0x248
        0x249
        0x1000
        0x1001
        0x1008
        0x1009
        0x1040
        0x1041
        0x1048
        0x1049
        0x1200
        0x1201
        0x1208
        0x1209
        0x1240
        0x1241
        0x1248
        0x1249
        0x8000
        0x8001
        0x8008
        0x8009
        0x8040
        0x8041
        0x8048
        0x8049
        0x8200
        0x8201
        0x8208
        0x8209
        0x8240
        0x8241
        0x8248
        0x8249
        0x9000
        0x9001
        0x9008
        0x9009
        0x9040
        0x9041
        0x9048
        0x9049
        0x9200
        0x9201
        0x9208
        0x9209
        0x9240
        0x9241
        0x9248
        0x9249
        0x40000
        0x40001
        0x40008
        0x40009
        0x40040
        0x40041
        0x40048
        0x40049
        0x40200
        0x40201
        0x40208
        0x40209
        0x40240
        0x40241
        0x40248
        0x40249
        0x41000
        0x41001
        0x41008
        0x41009
        0x41040
        0x41041
        0x41048
        0x41049
        0x41200
        0x41201
        0x41208
        0x41209
        0x41240
        0x41241
        0x41248
        0x41249
        0x48000
        0x48001
        0x48008
        0x48009
        0x48040
        0x48041
        0x48048
        0x48049
        0x48200
        0x48201
        0x48208
        0x48209
        0x48240
        0x48241
        0x48248
        0x48249
        0x49000    # 4.19E-40f
        0x49001    # 4.19001E-40f
        0x49008
        0x49009
        0x49040
        0x49041
        0x49048
        0x49049
        0x49200
        0x49201
        0x49208
        0x49209
        0x49240
        0x49241
        0x49248
        0x49249
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x10
        0x11
        0x100
        0x101
        0x110
        0x111
        0x1000
        0x1001
        0x1010
        0x1011
        0x1100
        0x1101
        0x1110
        0x1111
        0x10000
        0x10001
        0x10010
        0x10011
        0x10100
        0x10101
        0x10110
        0x10111
        0x11000
        0x11001
        0x11010
        0x11011
        0x11100
        0x11101
        0x11110
        0x11111
        0x100000
        0x100001
        0x100010
        0x100011
        0x100100
        0x100101
        0x100110
        0x100111
        0x101000
        0x101001
        0x101010
        0x101011
        0x101100
        0x101101
        0x101110
        0x101111
        0x110000
        0x110001
        0x110010
        0x110011
        0x110100
        0x110101
        0x110110
        0x110111
        0x111000
        0x111001
        0x111010
        0x111011
        0x111100
        0x111101
        0x111110
        0x111111
        0x1000000
        0x1000001
        0x1000010
        0x1000011
        0x1000100
        0x1000101
        0x1000110
        0x1000111
        0x1001000
        0x1001001
        0x1001010
        0x1001011
        0x1001100
        0x1001101
        0x1001110
        0x1001111
        0x1010000
        0x1010001
        0x1010010
        0x1010011
        0x1010100
        0x1010101
        0x1010110
        0x1010111
        0x1011000
        0x1011001
        0x1011010
        0x1011011
        0x1011100
        0x1011101
        0x1011110
        0x1011111
        0x1100000
        0x1100001
        0x1100010
        0x1100011
        0x1100100
        0x1100101
        0x1100110
        0x1100111
        0x1101000
        0x1101001
        0x1101010
        0x1101011
        0x1101100
        0x1101101
        0x1101110
        0x1101111
        0x1110000
        0x1110001
        0x1110010
        0x1110011
        0x1110100
        0x1110101
        0x1110110
        0x1110111
        0x1111000
        0x1111001
        0x1111010
        0x1111011
        0x1111100
        0x1111101
        0x1111110
        0x1111111
        0x10000000
        0x10000001
        0x10000010
        0x10000011
        0x10000100
        0x10000101
        0x10000110
        0x10000111
        0x10001000
        0x10001001
        0x10001010
        0x10001011
        0x10001100
        0x10001101
        0x10001110
        0x10001111
        0x10010000
        0x10010001
        0x10010010
        0x10010011
        0x10010100
        0x10010101
        0x10010110
        0x10010111
        0x10011000
        0x10011001
        0x10011010
        0x10011011
        0x10011100
        0x10011101
        0x10011110
        0x10011111
        0x10100000
        0x10100001
        0x10100010
        0x10100011
        0x10100100
        0x10100101
        0x10100110
        0x10100111
        0x10101000
        0x10101001
        0x10101010
        0x10101011
        0x10101100
        0x10101101
        0x10101110
        0x10101111
        0x10110000
        0x10110001
        0x10110010
        0x10110011
        0x10110100
        0x10110101
        0x10110110
        0x10110111
        0x10111000
        0x10111001
        0x10111010
        0x10111011
        0x10111100
        0x10111101
        0x10111110
        0x10111111
        0x11000000
        0x11000001
        0x11000010
        0x11000011
        0x11000100
        0x11000101
        0x11000110
        0x11000111
        0x11001000
        0x11001001
        0x11001010
        0x11001011
        0x11001100
        0x11001101
        0x11001110
        0x11001111
        0x11010000
        0x11010001
        0x11010010
        0x11010011
        0x11010100
        0x11010101
        0x11010110
        0x11010111
        0x11011000
        0x11011001
        0x11011010
        0x11011011
        0x11011100
        0x11011101
        0x11011110
        0x11011111
        0x11100000
        0x11100001
        0x11100010
        0x11100011
        0x11100100
        0x11100101
        0x11100110
        0x11100111
        0x11101000
        0x11101001
        0x11101010
        0x11101011
        0x11101100
        0x11101101
        0x11101110
        0x11101111
        0x11110000
        0x11110001
        0x11110010
        0x11110011
        0x11110100
        0x11110101
        0x11110110
        0x11110111
        0x11111000
        0x11111001
        0x11111010
        0x11111011
        0x11111100
        0x11111101
        0x11111110
        0x11111111
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x1
        0x20
        0x21
        0x400
        0x401
        0x420
        0x421
        0x8000
        0x8001
        0x8020
        0x8021
        0x8400
        0x8401
        0x8420
        0x8421
        0x100000
        0x100001
        0x100020
        0x100021
        0x100400
        0x100401
        0x100420
        0x100421
        0x108000
        0x108001
        0x108020
        0x108021
        0x108400
        0x108401
        0x108420
        0x108421
        0x2000000
        0x2000001
        0x2000020
        0x2000021
        0x2000400
        0x2000401
        0x2000420
        0x2000421
        0x2008000
        0x2008001
        0x2008020
        0x2008021
        0x2008400
        0x2008401
        0x2008420
        0x2008421
        0x2100000
        0x2100001
        0x2100020
        0x2100021
        0x2100400
        0x2100401
        0x2100420
        0x2100421
        0x2108000
        0x2108001
        0x2108020
        0x2108021
        0x2108400
        0x2108401
        0x2108420
        0x2108421
        0x40000000    # 2.0f
        0x40000001    # 2.0000002f
        0x40000020    # 2.0000076f
        0x40000021    # 2.0000079f
        0x40000400    # 2.0002441f
        0x40000401    # 2.0002444f
        0x40000420    # 2.0002518f
        0x40000421    # 2.000252f
        0x40008000    # 2.0078125f
        0x40008001
        0x40008020
        0x40008021
        0x40008400
        0x40008401
        0x40008420
        0x40008421
        0x40100000    # 2.25f
        0x40100001    # 2.2500002f
        0x40100020    # 2.2500076f
        0x40100021    # 2.2500079f
        0x40100400
        0x40100401
        0x40100420
        0x40100421
        0x40108000    # 2.2578125f
        0x40108001
        0x40108020
        0x40108021
        0x40108400
        0x40108401
        0x40108420
        0x40108421
        0x42000000    # 32.0f
        0x42000001    # 32.000004f
        0x42000020    # 32.000122f
        0x42000021    # 32.000126f
        0x42000400
        0x42000401
        0x42000420
        0x42000421
        0x42008000    # 32.125f
        0x42008001
        0x42008020
        0x42008021
        0x42008400
        0x42008401
        0x42008420
        0x42008421
        0x42100000    # 36.0f
        0x42100001    # 36.000004f
        0x42100020    # 36.000122f
        0x42100021    # 36.000126f
        0x42100400
        0x42100401
        0x42100420
        0x42100421
        0x42108000    # 36.125f
        0x42108001
        0x42108020
        0x42108021
        0x42108400
        0x42108401
        0x42108420
        0x42108421
    .end array-data

    :array_4
    .array-data 8
        0x0
        0x1
        0x80
        0x81
        0x4000
        0x4001
        0x4080
        0x4081
        0x200000
        0x200001
        0x200080
        0x200081
        0x204000
        0x204001
        0x204080
        0x204081
        0x10000000
        0x10000001
        0x10000080
        0x10000081
        0x10004000
        0x10004001
        0x10004080
        0x10004081
        0x10200000
        0x10200001
        0x10200080
        0x10200081
        0x10204000
        0x10204001
        0x10204080
        0x10204081
        0x800000000L
        0x800000001L
        0x800000080L
        0x800000081L
        0x800004000L
        0x800004001L
        0x800004080L
        0x800004081L
        0x800200000L
        0x800200001L
        0x800200080L
        0x800200081L
        0x800204000L
        0x800204001L
        0x800204080L
        0x800204081L
        0x810000000L
        0x810000001L
        0x810000080L
        0x810000081L
        0x810004000L
        0x810004001L
        0x810004080L
        0x810004081L
        0x810200000L
        0x810200001L
        0x810200080L
        0x810200081L
        0x810204000L
        0x810204001L
        0x810204080L
        0x810204081L
        0x40000000000L
        0x40000000001L
        0x40000000080L
        0x40000000081L
        0x40000004000L
        0x40000004001L
        0x40000004080L
        0x40000004081L
        0x40000200000L
        0x40000200001L
        0x40000200080L
        0x40000200081L
        0x40000204000L
        0x40000204001L
        0x40000204080L
        0x40000204081L
        0x40010000000L
        0x40010000001L
        0x40010000080L
        0x40010000081L
        0x40010004000L
        0x40010004001L
        0x40010004080L
        0x40010004081L
        0x40010200000L
        0x40010200001L
        0x40010200080L
        0x40010200081L
        0x40010204000L
        0x40010204001L
        0x40010204080L
        0x40010204081L
        0x40800000000L
        0x40800000001L
        0x40800000080L
        0x40800000081L
        0x40800004000L
        0x40800004001L
        0x40800004080L
        0x40800004081L
        0x40800200000L
        0x40800200001L
        0x40800200080L
        0x40800200081L
        0x40800204000L
        0x40800204001L
        0x40800204080L
        0x40800204081L
        0x40810000000L
        0x40810000001L
        0x40810000080L
        0x40810000081L
        0x40810004000L
        0x40810004001L
        0x40810004080L
        0x40810004081L
        0x40810200000L
        0x40810200001L
        0x40810200080L
        0x40810200081L
        0x40810204000L
        0x40810204001L
        0x40810204080L
        0x40810204081L
        0x2000000000000L
        0x2000000000001L
        0x2000000000080L
        0x2000000000081L
        0x2000000004000L
        0x2000000004001L
        0x2000000004080L
        0x2000000004081L
        0x2000000200000L
        0x2000000200001L
        0x2000000200080L
        0x2000000200081L
        0x2000000204000L
        0x2000000204001L
        0x2000000204080L
        0x2000000204081L
        0x2000010000000L
        0x2000010000001L
        0x2000010000080L
        0x2000010000081L
        0x2000010004000L
        0x2000010004001L
        0x2000010004080L
        0x2000010004081L
        0x2000010200000L
        0x2000010200001L
        0x2000010200080L
        0x2000010200081L
        0x2000010204000L
        0x2000010204001L
        0x2000010204080L
        0x2000010204081L
        0x2000800000000L
        0x2000800000001L
        0x2000800000080L
        0x2000800000081L
        0x2000800004000L
        0x2000800004001L
        0x2000800004080L
        0x2000800004081L
        0x2000800200000L
        0x2000800200001L
        0x2000800200080L
        0x2000800200081L
        0x2000800204000L
        0x2000800204001L
        0x2000800204080L
        0x2000800204081L
        0x2000810000000L
        0x2000810000001L
        0x2000810000080L
        0x2000810000081L
        0x2000810004000L
        0x2000810004001L
        0x2000810004080L
        0x2000810004081L
        0x2000810200000L
        0x2000810200001L
        0x2000810200080L
        0x2000810200081L
        0x2000810204000L
        0x2000810204001L
        0x2000810204080L
        0x2000810204081L
        0x2040000000000L
        0x2040000000001L
        0x2040000000080L
        0x2040000000081L
        0x2040000004000L
        0x2040000004001L
        0x2040000004080L
        0x2040000004081L
        0x2040000200000L
        0x2040000200001L
        0x2040000200080L
        0x2040000200081L
        0x2040000204000L
        0x2040000204001L
        0x2040000204080L
        0x2040000204081L
        0x2040010000000L
        0x2040010000001L
        0x2040010000080L
        0x2040010000081L
        0x2040010004000L
        0x2040010004001L
        0x2040010004080L
        0x2040010004081L
        0x2040010200000L
        0x2040010200001L
        0x2040010200080L
        0x2040010200081L
        0x2040010204000L
        0x2040010204001L
        0x2040010204080L
        0x2040010204081L
        0x2040800000000L
        0x2040800000001L
        0x2040800000080L
        0x2040800000081L
        0x2040800004000L
        0x2040800004001L
        0x2040800004080L
        0x2040800004081L
        0x2040800200000L
        0x2040800200001L
        0x2040800200080L
        0x2040800200081L
        0x2040800204000L
        0x2040800204001L
        0x2040800204080L
        0x2040800204081L
        0x2040810000000L
        0x2040810000001L
        0x2040810000080L
        0x2040810000081L
        0x2040810004000L
        0x2040810004001L
        0x2040810004080L
        0x2040810004081L
        0x2040810200000L
        0x2040810200001L
        0x2040810200080L
        0x2040810200081L
        0x2040810204000L
        0x2040810204001L
        0x2040810204080L
        0x2040810204081L
        0x100000000000000L
        0x100000000000001L
        0x100000000000080L
        0x100000000000081L
        0x100000000004000L
        0x100000000004001L
        0x100000000004080L
        0x100000000004081L
        0x100000000200000L
        0x100000000200001L
        0x100000000200080L
        0x100000000200081L    # 7.2911220229518E-304
        0x100000000204000L
        0x100000000204001L
        0x100000000204080L
        0x100000000204081L
        0x100000010000000L
        0x100000010000001L
        0x100000010000080L
        0x100000010000081L
        0x100000010004000L
        0x100000010004001L
        0x100000010004080L
        0x100000010004081L
        0x100000010200000L
        0x100000010200001L
        0x100000010200080L
        0x100000010200081L
        0x100000010204000L
        0x100000010204001L
        0x100000010204080L
        0x100000010204081L
        0x100000800000000L
        0x100000800000001L
        0x100000800000080L
        0x100000800000081L
        0x100000800004000L
        0x100000800004001L
        0x100000800004080L
        0x100000800004081L
        0x100000800200000L
        0x100000800200001L
        0x100000800200080L
        0x100000800200081L
        0x100000800204000L
        0x100000800204001L
        0x100000800204080L
        0x100000800204081L
        0x100000810000000L
        0x100000810000001L    # 7.2911780809876E-304
        0x100000810000080L
        0x100000810000081L
        0x100000810004000L
        0x100000810004001L
        0x100000810004080L
        0x100000810004081L
        0x100000810200000L
        0x100000810200001L
        0x100000810200080L    # 7.291178084382999E-304
        0x100000810200081L    # 7.291178084383E-304
        0x100000810204000L
        0x100000810204001L
        0x100000810204080L
        0x100000810204081L
        0x100040000000000L
        0x100040000000001L
        0x100040000000080L
        0x100040000000081L
        0x100040000004000L
        0x100040000004001L
        0x100040000004080L
        0x100040000004081L
        0x100040000200000L
        0x100040000200001L
        0x100040000200080L
        0x100040000200081L
        0x100040000204000L
        0x100040000204001L
        0x100040000204080L
        0x100040000204081L
        0x100040010000000L
        0x100040010000001L
        0x100040010000080L
        0x100040010000081L
        0x100040010004000L
        0x100040010004001L
        0x100040010004080L
        0x100040010004081L
        0x100040010200000L
        0x100040010200001L
        0x100040010200080L
        0x100040010200081L
        0x100040010204000L
        0x100040010204001L
        0x100040010204080L
        0x100040010204081L
        0x100040800000000L
        0x100040800000001L
        0x100040800000080L
        0x100040800000081L
        0x100040800004000L
        0x100040800004001L
        0x100040800004080L
        0x100040800004081L
        0x100040800200000L
        0x100040800200001L
        0x100040800200080L
        0x100040800200081L
        0x100040800204000L
        0x100040800204001L
        0x100040800204080L
        0x100040800204081L
        0x100040810000000L
        0x100040810000001L
        0x100040810000080L
        0x100040810000081L
        0x100040810004000L
        0x100040810004001L
        0x100040810004080L
        0x100040810004081L
        0x100040810200000L
        0x100040810200001L
        0x100040810200080L
        0x100040810200081L
        0x100040810204000L
        0x100040810204001L
        0x100040810204080L
        0x100040810204081L
        0x102000000000000L    # 8.202512272000947E-304
        0x102000000000001L    # 8.202512272000949E-304
        0x102000000000080L
        0x102000000000081L
        0x102000000004000L
        0x102000000004001L
        0x102000000004080L
        0x102000000004081L
        0x102000000200000L
        0x102000000200001L
        0x102000000200080L
        0x102000000200081L
        0x102000000204000L
        0x102000000204001L
        0x102000000204080L
        0x102000000204081L
        0x102000010000000L
        0x102000010000001L
        0x102000010000080L
        0x102000010000081L
        0x102000010004000L
        0x102000010004001L
        0x102000010004080L
        0x102000010004081L
        0x102000010200000L
        0x102000010200001L
        0x102000010200080L
        0x102000010200081L
        0x102000010204000L    # 8.202512710007403E-304
        0x102000010204001L    # 8.202512710007405E-304
        0x102000010204080L    # 8.20251271000761E-304
        0x102000010204081L    # 8.202512710007612E-304
        0x102000800000000L
        0x102000800000001L
        0x102000800000080L
        0x102000800000081L
        0x102000800004000L
        0x102000800004001L
        0x102000800004080L
        0x102000800004081L
        0x102000800200000L
        0x102000800200001L
        0x102000800200080L
        0x102000800200081L
        0x102000800204000L
        0x102000800204001L
        0x102000800204080L
        0x102000800204081L
        0x102000810000000L
        0x102000810000001L
        0x102000810000080L
        0x102000810000081L
        0x102000810004000L
        0x102000810004001L
        0x102000810004080L
        0x102000810004081L
        0x102000810200000L
        0x102000810200001L
        0x102000810200080L
        0x102000810200081L
        0x102000810204000L
        0x102000810204001L
        0x102000810204080L
        0x102000810204081L
        0x102040000000000L
        0x102040000000001L
        0x102040000000080L
        0x102040000000081L
        0x102040000004000L
        0x102040000004001L
        0x102040000004080L
        0x102040000004081L
        0x102040000200000L
        0x102040000200001L
        0x102040000200080L
        0x102040000200081L
        0x102040000204000L
        0x102040000204001L
        0x102040000204080L
        0x102040000204081L
        0x102040010000000L
        0x102040010000001L
        0x102040010000080L
        0x102040010000081L
        0x102040010004000L
        0x102040010004001L
        0x102040010004080L
        0x102040010004081L
        0x102040010200000L
        0x102040010200001L
        0x102040010200080L
        0x102040010200081L
        0x102040010204000L
        0x102040010204001L
        0x102040010204080L
        0x102040010204081L
        0x102040800000000L
        0x102040800000001L
        0x102040800000080L
        0x102040800000081L
        0x102040800004000L
        0x102040800004001L
        0x102040800004080L
        0x102040800004081L
        0x102040800200000L
        0x102040800200001L
        0x102040800200080L
        0x102040800200081L
        0x102040800204000L
        0x102040800204001L
        0x102040800204080L
        0x102040800204081L
        0x102040810000000L
        0x102040810000001L
        0x102040810000080L
        0x102040810000081L
        0x102040810004000L
        0x102040810004001L
        0x102040810004080L
        0x102040810004081L
        0x102040810200000L
        0x102040810200001L
        0x102040810200080L
        0x102040810200081L
        0x102040810204000L
        0x102040810204001L
        0x102040810204080L
        0x102040810204081L
    .end array-data

    :array_5
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x2t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    new-array v0, p1, [J

    iput-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    .line 300
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 15

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_1

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid F2m field value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_2

    .line 329
    const/4 v0, 0x1

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    .line 330
    return-void

    .line 333
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    .line 334
    array-length v5, v4

    .line 335
    const/4 v6, 0x0

    .line 336
    const/4 v0, 0x0

    aget-byte v0, v4, v0

    if-nez v0, :cond_3

    .line 340
    add-int/lit8 v5, v5, -0x1

    .line 341
    const/4 v6, 0x1

    .line 343
    :cond_3
    add-int/lit8 v0, v5, 0x7

    div-int/lit8 v7, v0, 0x8

    .line 344
    new-array v0, v7, [J

    iput-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    .line 346
    add-int/lit8 v8, v7, -0x1

    .line 347
    rem-int/lit8 v0, v5, 0x8

    add-int v9, v0, v6

    .line 348
    const-wide/16 v10, 0x0

    .line 349
    move v12, v6

    .line 350
    if-ge v6, v9, :cond_5

    .line 352
    :goto_0
    if-ge v12, v9, :cond_4

    .line 354
    const/16 v0, 0x8

    shl-long/2addr v10, v0

    .line 355
    aget-byte v0, v4, v12

    and-int/lit16 v13, v0, 0xff

    .line 356
    int-to-long v0, v13

    or-long/2addr v10, v0

    .line 352
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 358
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    move v1, v8

    add-int/lit8 v8, v8, -0x1

    aput-wide v10, v0, v1

    .line 361
    :cond_5
    :goto_1
    if-ltz v8, :cond_7

    .line 363
    const-wide/16 v10, 0x0

    .line 364
    const/4 v13, 0x0

    :goto_2
    const/16 v0, 0x8

    if-ge v13, v0, :cond_6

    .line 366
    const/16 v0, 0x8

    shl-long/2addr v10, v0

    .line 367
    move v0, v12

    add-int/lit8 v12, v12, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v14, v0, 0xff

    .line 368
    int-to-long v0, v14

    or-long/2addr v10, v0

    .line 364
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 370
    :cond_6
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    aput-wide v10, v0, v8

    .line 361
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 372
    :cond_7
    return-void

    :array_0
    .array-data 8
        0x0
    .end array-data
.end method

.method public constructor <init>([J)V
    .locals 0

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p1, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    .line 305
    return-void
.end method

.method public constructor <init>([JII)V
    .locals 2

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    if-nez p2, :cond_0

    array-length v0, p1

    if-ne p3, v0, :cond_0

    .line 311
    iput-object p1, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    goto :goto_0

    .line 315
    :cond_0
    new-array v0, p3, [J

    iput-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    .line 316
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    :goto_0
    return-void
.end method

.method private static ˊ([JI[JIII)J
    .locals 9

    .line 601
    rsub-int/lit8 v3, p5, 0x40

    .line 602
    const-wide/16 v4, 0x0

    .line 603
    const/4 v6, 0x0

    :goto_0
    if-ge v6, p4, :cond_0

    .line 605
    add-int v0, p1, v6

    aget-wide v7, p0, v0

    .line 606
    add-int v0, p3, v6

    shl-long v1, v7, p5

    or-long/2addr v1, v4

    aput-wide v1, p2, v0

    .line 607
    ushr-long v4, v7, v3

    .line 603
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 609
    :cond_0
    return-wide v4
.end method

.method private static ˊ([JIII[I)Lorg/spongycastle/math/ec/LongArray;
    .locals 2

    .line 1491
    invoke-static {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/LongArray;->ˋ([JIII[I)I

    move-result v1

    .line 1492
    new-instance v0, Lorg/spongycastle/math/ec/LongArray;

    invoke-direct {v0, p0, p1, v1}, Lorg/spongycastle/math/ec/LongArray;-><init>([JII)V

    return-object v0
.end method

.method private static ˊ(J[JI[JI)V
    .locals 9

    .line 837
    const-wide/16 v0, 0x1

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 839
    const/4 v0, 0x0

    invoke-static {p4, p5, p2, v0, p3}, Lorg/spongycastle/math/ec/LongArray;->ˊ([JI[JII)V

    .line 841
    :cond_0
    const/4 v6, 0x1

    .line 842
    :goto_0
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    move-wide p0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 844
    const-wide/16 v0, 0x1

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 846
    move-object v0, p4

    move v1, p5

    move-object v2, p2

    move v4, p3

    move v5, v6

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/LongArray;->ˋ([JI[JIII)J

    move-result-wide v7

    .line 847
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_1

    .line 849
    add-int v0, p5, p3

    aget-wide v1, p4, v0

    xor-long/2addr v1, v7

    aput-wide v1, p4, v0

    .line 852
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 854
    :cond_2
    return-void
.end method

.method private ˊ(Lorg/spongycastle/math/ec/LongArray;II)V
    .locals 11

    .line 654
    add-int/lit8 v0, p2, 0x3f

    ushr-int/lit8 v6, v0, 0x6

    .line 656
    ushr-int/lit8 v7, p3, 0x6

    .line 657
    and-int/lit8 v8, p3, 0x3f

    .line 659
    if-nez v8, :cond_0

    .line 661
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    iget-object v1, p1, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    const/4 v2, 0x0

    invoke-static {v0, v7, v1, v2, v6}, Lorg/spongycastle/math/ec/LongArray;->ˊ([JI[JII)V

    .line 662
    return-void

    .line 665
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    move v1, v7

    iget-object v2, p1, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    move v4, v6

    move v5, v8

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/LongArray;->ˋ([JI[JIII)J

    move-result-wide v9

    .line 666
    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    add-int v1, v6, v7

    aget-wide v2, v0, v1

    xor-long/2addr v2, v9

    aput-wide v2, v0, v1

    .line 670
    :cond_1
    return-void
.end method

.method private static ˊ([JIIII[I)V
    .locals 11

    .line 1591
    ushr-int/lit8 v7, p3, 0x6

    .line 1593
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-le p2, v7, :cond_1

    .line 1595
    add-int v0, p1, p2

    aget-wide v8, p0, v0

    .line 1596
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_0

    .line 1598
    add-int v0, p1, p2

    const-wide/16 v1, 0x0

    aput-wide v1, p0, v0

    .line 1599
    move-object v0, p0

    move v1, p1

    shl-int/lit8 v2, p2, 0x6

    move-wide v3, v8

    move v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lorg/spongycastle/math/ec/LongArray;->ˊ([JIIJI[I)V

    .line 1601
    :cond_0
    goto :goto_0

    .line 1604
    :cond_1
    and-int/lit8 v8, p3, 0x3f

    .line 1605
    add-int v0, p1, v7

    aget-wide v0, p0, v0

    ushr-long v9, v0, v8

    .line 1606
    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-eqz v0, :cond_2

    .line 1608
    add-int v0, p1, v7

    aget-wide v1, p0, v0

    shl-long v3, v9, v8

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 1609
    move-object v0, p0

    move v1, p1

    move v2, p3

    move-wide v3, v9

    move v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lorg/spongycastle/math/ec/LongArray;->ˊ([JIIJI[I)V

    .line 1612
    :cond_2
    return-void
.end method

.method private static ˊ([JIIJ)V
    .locals 6

    .line 757
    ushr-int/lit8 v0, p2, 0x6

    add-int v4, p1, v0

    .line 758
    and-int/lit8 v5, p2, 0x3f

    .line 759
    if-nez v5, :cond_0

    .line 761
    aget-wide v0, p0, v4

    xor-long/2addr v0, p3

    aput-wide v0, p0, v4

    goto :goto_0

    .line 765
    :cond_0
    aget-wide v0, p0, v4

    shl-long v2, p3, v5

    xor-long/2addr v0, v2

    aput-wide v0, p0, v4

    .line 766
    rsub-int/lit8 v0, v5, 0x40

    ushr-long/2addr p3, v0

    .line 767
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_1

    .line 769
    add-int/lit8 v4, v4, 0x1

    aget-wide v0, p0, v4

    xor-long/2addr v0, p3

    aput-wide v0, p0, v4

    .line 772
    :cond_1
    :goto_0
    return-void
.end method

.method private static ˊ([JIIJI[I)V
    .locals 3

    .line 1616
    sub-int v1, p2, p5

    .line 1617
    array-length v2, p6

    .line 1618
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 1620
    aget v0, p6, v2

    add-int/2addr v0, v1

    invoke-static {p0, p1, v0, p3, p4}, Lorg/spongycastle/math/ec/LongArray;->ˊ([JIIJ)V

    goto :goto_0

    .line 1622
    :cond_0
    invoke-static {p0, p1, v1, p3, p4}, Lorg/spongycastle/math/ec/LongArray;->ˊ([JIIJ)V

    .line 1623
    return-void
.end method

.method private static ˊ([JII[I)V
    .locals 5

    .line 1724
    shl-int/lit8 v2, p1, 0x1

    .line 1725
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 1727
    aget-wide v3, p0, p1

    .line 1728
    add-int/lit8 v2, v2, -0x1

    const/16 v0, 0x20

    ushr-long v0, v3, v0

    long-to-int v0, v0

    invoke-static {v0}, Lorg/spongycastle/math/ec/LongArray;->ｧ(I)J

    move-result-wide v0

    aput-wide v0, p0, v2

    .line 1729
    add-int/lit8 v2, v2, -0x1

    long-to-int v0, v3

    invoke-static {v0}, Lorg/spongycastle/math/ec/LongArray;->ｧ(I)J

    move-result-wide v0

    aput-wide v0, p0, v2

    .line 1730
    goto :goto_0

    .line 1731
    :cond_0
    return-void
.end method

.method private static ˊ([JI[JII)V
    .locals 6

    .line 718
    const/4 v5, 0x0

    :goto_0
    if-ge v5, p4, :cond_0

    .line 720
    add-int v0, p1, v5

    aget-wide v1, p0, v0

    add-int v3, p3, v5

    aget-wide v3, p2, v3

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 718
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 722
    :cond_0
    return-void
.end method

.method private static ˊ([JI[JI[JII)V
    .locals 6

    .line 726
    const/4 v5, 0x0

    :goto_0
    if-ge v5, p6, :cond_0

    .line 728
    add-int v0, p5, v5

    add-int v1, p1, v5

    aget-wide v1, p0, v1

    add-int v3, p3, v5

    aget-wide v3, p2, v3

    xor-long/2addr v1, v3

    aput-wide v1, p4, v0

    .line 726
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 730
    :cond_0
    return-void
.end method

.method private static ˊ([JII)Z
    .locals 8

    .line 798
    ushr-int/lit8 v4, p2, 0x6

    .line 800
    and-int/lit8 v5, p2, 0x3f

    .line 801
    const-wide/16 v0, 0x1

    shl-long v6, v0, v5

    .line 802
    add-int v0, p1, v4

    aget-wide v0, p0, v0

    and-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static ˋ([JIII[I)I
    .locals 15

    .line 1524
    add-int/lit8 v0, p3, 0x3f

    ushr-int/lit8 v6, v0, 0x6

    .line 1525
    move/from16 v0, p2

    if-ge v0, v6, :cond_0

    .line 1527
    return p2

    .line 1530
    :cond_0
    shl-int/lit8 v0, p2, 0x6

    shl-int/lit8 v1, p3, 0x1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1531
    shl-int/lit8 v0, p2, 0x6

    sub-int v8, v0, v7

    .line 1532
    :goto_0
    const/16 v0, 0x40

    if-lt v8, v0, :cond_1

    .line 1534
    add-int/lit8 p2, p2, -0x1

    .line 1535
    add-int/lit8 v8, v8, -0x40

    goto :goto_0

    .line 1538
    :cond_1
    move-object/from16 v0, p4

    array-length v9, v0

    add-int/lit8 v0, v9, -0x1

    aget v10, p4, v0

    const/4 v0, 0x1

    if-le v9, v0, :cond_2

    add-int/lit8 v0, v9, -0x2

    aget v11, p4, v0

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    .line 1539
    :goto_1
    add-int/lit8 v0, v10, 0x40

    move/from16 v1, p3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1540
    sub-int v0, v7, v12

    sub-int v1, p3, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v8

    shr-int/lit8 v13, v0, 0x6

    .line 1541
    const/4 v0, 0x1

    if-le v13, v0, :cond_4

    .line 1543
    sub-int v14, p2, v13

    .line 1544
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v3, v14

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/LongArray;->ˋ([JIIII[I)V

    .line 1545
    :goto_2
    move/from16 v0, p2

    if-le v0, v14, :cond_3

    .line 1547
    add-int/lit8 p2, p2, -0x1

    add-int v0, p1, p2

    const-wide/16 v1, 0x0

    aput-wide v1, p0, v0

    goto :goto_2

    .line 1549
    :cond_3
    shl-int/lit8 v7, v14, 0x6

    .line 1552
    :cond_4
    if-le v7, v12, :cond_5

    .line 1554
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v3, v12

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/LongArray;->ˊ([JIIII[I)V

    .line 1555
    move v7, v12

    .line 1558
    :cond_5
    move/from16 v0, p3

    if-le v7, v0, :cond_6

    .line 1560
    move/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {p0, v0, v7, v1, v2}, Lorg/spongycastle/math/ec/LongArray;->ˎ([JIII[I)V

    .line 1563
    :cond_6
    return v6
.end method

.method private static ˋ([JI[JIII)J
    .locals 11

    .line 674
    rsub-int/lit8 v5, p5, 0x40

    .line 675
    const-wide/16 v6, 0x0

    .line 676
    const/4 v8, 0x0

    :goto_0
    if-ge v8, p4, :cond_0

    .line 678
    add-int v0, p3, v8

    aget-wide v9, p2, v0

    .line 679
    add-int v0, p1, v8

    aget-wide v1, p0, v0

    shl-long v3, v9, p5

    or-long/2addr v3, v6

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 680
    ushr-long v6, v9, v5

    .line 676
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 682
    :cond_0
    return-wide v6
.end method

.method private static ˋ([JII)V
    .locals 7

    .line 808
    ushr-int/lit8 v3, p2, 0x6

    .line 810
    and-int/lit8 v4, p2, 0x3f

    .line 811
    const-wide/16 v0, 0x1

    shl-long v5, v0, v4

    .line 812
    add-int v0, p1, v3

    aget-wide v1, p0, v0

    xor-long/2addr v1, v5

    aput-wide v1, p0, v0

    .line 813
    return-void
.end method

.method private static ˋ([JIIII[I)V
    .locals 8

    .line 1632
    shl-int/lit8 v0, p3, 0x6

    sub-int v6, v0, p4

    .line 1633
    array-length v7, p5

    .line 1634
    :goto_0
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_0

    .line 1636
    move-object v0, p0

    move v1, p1

    move-object v2, p0

    add-int v3, p1, p3

    sub-int v4, p2, p3

    aget v5, p5, v7

    add-int/2addr v5, v6

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/LongArray;->ˏ([JI[JIII)V

    goto :goto_0

    .line 1638
    :cond_0
    move-object v0, p0

    move v1, p1

    move-object v2, p0

    add-int v3, p1, p3

    sub-int v4, p2, p3

    move v5, v6

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/LongArray;->ˏ([JI[JIII)V

    .line 1639
    return-void
.end method

.method private static ˋ([JI[JI[JII)V
    .locals 8

    .line 734
    const/4 v7, 0x0

    :goto_0
    if-ge v7, p6, :cond_0

    .line 736
    add-int v0, p1, v7

    aget-wide v1, p0, v0

    add-int v3, p3, v7

    aget-wide v3, p2, v3

    add-int v5, p5, v7

    aget-wide v5, p4, v5

    xor-long/2addr v3, v5

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 734
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 738
    :cond_0
    return-void
.end method

.method private static ˎ([JI[JIII)J
    .locals 11

    .line 687
    rsub-int/lit8 v5, p5, 0x40

    .line 688
    const-wide/16 v6, 0x0

    .line 689
    move v8, p4

    .line 690
    :goto_0
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_0

    .line 692
    add-int v0, p3, v8

    aget-wide v9, p2, v0

    .line 693
    add-int v0, p1, v8

    aget-wide v1, p0, v0

    ushr-long v3, v9, p5

    or-long/2addr v3, v6

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 694
    shl-long v6, v9, v5

    .line 695
    goto :goto_0

    .line 696
    :cond_0
    return-wide v6
.end method

.method private static ˎ([JIII[I)V
    .locals 1

    .line 1568
    :cond_0
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-lt p2, p3, :cond_1

    .line 1570
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/ec/LongArray;->ˊ([JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1572
    invoke-static {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/LongArray;->ˏ([JIII[I)V

    goto :goto_0

    .line 1575
    :cond_1
    return-void
.end method

.method private static ˏ([JIII[I)V
    .locals 3

    .line 1579
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/ec/LongArray;->ˋ([JII)V

    .line 1580
    sub-int v1, p2, p3

    .line 1581
    array-length v2, p4

    .line 1582
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 1584
    aget v0, p4, v2

    add-int/2addr v0, v1

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/LongArray;->ˋ([JII)V

    goto :goto_0

    .line 1586
    :cond_0
    invoke-static {p0, p1, v1}, Lorg/spongycastle/math/ec/LongArray;->ˋ([JII)V

    .line 1587
    return-void
.end method

.method private static ˏ([JI[JIII)V
    .locals 8

    .line 1643
    ushr-int/lit8 v0, p5, 0x6

    add-int/2addr p1, v0

    .line 1644
    and-int/lit8 p5, p5, 0x3f

    .line 1646
    if-nez p5, :cond_0

    .line 1648
    invoke-static {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/LongArray;->ˊ([JI[JII)V

    goto :goto_0

    .line 1652
    :cond_0
    move-object v0, p0

    add-int/lit8 v1, p1, 0x1

    move-object v2, p2

    move v3, p3

    move v4, p4

    rsub-int/lit8 v5, p5, 0x40

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/LongArray;->ˎ([JI[JIII)J

    move-result-wide v6

    .line 1653
    aget-wide v0, p0, p1

    xor-long/2addr v0, v6

    aput-wide v0, p0, p1

    .line 1655
    :goto_0
    return-void
.end method

.method private static ﯨ(J)I
    .locals 7

    .line 500
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v2, v0

    .line 501
    if-nez v2, :cond_0

    .line 503
    long-to-int v2, p0

    .line 504
    const/4 v3, 0x0

    goto :goto_0

    .line 508
    :cond_0
    const/16 v3, 0x20

    .line 511
    :goto_0
    ushr-int/lit8 v4, v2, 0x10

    .line 512
    if-nez v4, :cond_2

    .line 514
    ushr-int/lit8 v4, v2, 0x8

    .line 515
    if-nez v4, :cond_1

    sget-object v0, Lorg/spongycastle/math/ec/LongArray;->bcM:[B

    aget-byte v5, v0, v2

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/spongycastle/math/ec/LongArray;->bcM:[B

    aget-byte v0, v0, v4

    add-int/lit8 v5, v0, 0x8

    :goto_1
    goto :goto_2

    .line 519
    :cond_2
    ushr-int/lit8 v6, v4, 0x8

    .line 520
    if-nez v6, :cond_3

    sget-object v0, Lorg/spongycastle/math/ec/LongArray;->bcM:[B

    aget-byte v0, v0, v4

    add-int/lit8 v5, v0, 0x10

    goto :goto_2

    :cond_3
    sget-object v0, Lorg/spongycastle/math/ec/LongArray;->bcM:[B

    aget-byte v0, v0, v6

    add-int/lit8 v5, v0, 0x18

    .line 523
    :goto_2
    add-int v0, v3, v5

    return v0
.end method

.method private Ｊ(I)I
    .locals 5

    .line 459
    add-int/lit8 v0, p1, 0x3e

    ushr-int/lit8 v2, v0, 0x6

    .line 463
    :cond_0
    if-nez v2, :cond_1

    .line 465
    const/4 v0, 0x0

    return v0

    .line 467
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    add-int/lit8 v2, v2, -0x1

    aget-wide v3, v0, v2

    .line 469
    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-eqz v0, :cond_0

    .line 471
    shl-int/lit8 v0, v2, 0x6

    invoke-static {v3, v4}, Lorg/spongycastle/math/ec/LongArray;->ﯨ(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private Ｌ(I)[J
    .locals 5

    .line 528
    new-array v4, p1, [J

    .line 529
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    iget-object v1, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    array-length v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 530
    return-object v4
.end method

.method private static ｧ(I)J
    .locals 8

    .line 1900
    sget-object v0, Lorg/spongycastle/math/ec/LongArray;->bcH:[I

    and-int/lit16 v1, p0, 0xff

    aget v0, v0, v1

    sget-object v1, Lorg/spongycastle/math/ec/LongArray;->bcH:[I

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x10

    or-int v6, v0, v1

    .line 1901
    sget-object v0, Lorg/spongycastle/math/ec/LongArray;->bcH:[I

    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    aget v0, v0, v1

    sget-object v1, Lorg/spongycastle/math/ec/LongArray;->bcH:[I

    ushr-int/lit8 v2, p0, 0x18

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x10

    or-int v7, v0, v1

    .line 1902
    int-to-long v0, v7

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, v6

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 2168
    new-instance v0, Lorg/spongycastle/math/ec/LongArray;

    iget-object v1, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->ʿ([J)[J

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/LongArray;-><init>([J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 2131
    instance-of v0, p1, Lorg/spongycastle/math/ec/LongArray;

    if-nez v0, :cond_0

    .line 2133
    const/4 v0, 0x0

    return v0

    .line 2135
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/math/ec/LongArray;

    move-object v4, v0

    .line 2136
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/LongArray;->pZ()I

    move-result v5

    .line 2137
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/LongArray;->pZ()I

    move-result v0

    if-eq v0, v5, :cond_1

    .line 2139
    const/4 v0, 0x0

    return v0

    .line 2141
    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    .line 2143
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    aget-wide v0, v0, v6

    iget-object v2, v4, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    aget-wide v2, v2, v6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 2145
    const/4 v0, 0x0

    return v0

    .line 2141
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2148
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 2153
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/LongArray;->pZ()I

    move-result v2

    .line 2154
    const/4 v3, 0x1

    .line 2155
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 2157
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    aget-wide v5, v0, v4

    .line 2158
    mul-int/lit8 v3, v3, 0x1f

    .line 2159
    long-to-int v0, v5

    xor-int/2addr v3, v0

    .line 2160
    mul-int/lit8 v3, v3, 0x1f

    .line 2161
    const/16 v0, 0x20

    ushr-long v0, v5, v0

    long-to-int v0, v0

    xor-int/2addr v3, v0

    .line 2155
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2163
    :cond_0
    return v3
.end method

.method public isZero()Z
    .locals 6

    .line 393
    iget-object v4, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    .line 394
    const/4 v5, 0x0

    :goto_0
    array-length v0, v4

    if-ge v5, v0, :cond_1

    .line 396
    aget-wide v0, v4, v5

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 398
    const/4 v0, 0x0

    return v0

    .line 394
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 401
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public pA()Z
    .locals 6

    .line 376
    iget-object v4, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    .line 377
    const/4 v0, 0x0

    aget-wide v0, v4, v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 379
    const/4 v0, 0x0

    return v0

    .line 381
    :cond_0
    const/4 v5, 0x1

    :goto_0
    array-length v0, v4

    if-ge v5, v0, :cond_2

    .line 383
    aget-wide v0, v4, v5

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 385
    const/4 v0, 0x0

    return v0

    .line 381
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 388
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public pB()Z
    .locals 4

    .line 792
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pZ()I
    .locals 1

    .line 406
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/LongArray;->ﻣ(I)I

    move-result v0

    return v0
.end method

.method public qa()I
    .locals 5

    .line 442
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    array-length v2, v0

    .line 446
    :cond_0
    if-nez v2, :cond_1

    .line 448
    const/4 v0, 0x0

    return v0

    .line 450
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    add-int/lit8 v2, v2, -0x1

    aget-wide v3, v0, v2

    .line 452
    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-eqz v0, :cond_0

    .line 454
    shl-int/lit8 v0, v2, 0x6

    invoke-static {v3, v4}, Lorg/spongycastle/math/ec/LongArray;->ﯨ(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public qb()Lorg/spongycastle/math/ec/LongArray;
    .locals 7

    .line 614
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    array-length v0, v0

    if-nez v0, :cond_0

    .line 616
    new-instance v0, Lorg/spongycastle/math/ec/LongArray;

    const/4 v1, 0x1

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/LongArray;-><init>([J)V

    return-object v0

    .line 619
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/LongArray;->pZ()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 620
    invoke-direct {p0, v5}, Lorg/spongycastle/math/ec/LongArray;->Ｌ(I)[J

    move-result-object v6

    .line 621
    const/4 v0, 0x0

    aget-wide v0, v6, v0

    const-wide/16 v2, 0x1

    xor-long/2addr v0, v2

    const/4 v2, 0x0

    aput-wide v0, v6, v2

    .line 622
    new-instance v0, Lorg/spongycastle/math/ec/LongArray;

    invoke-direct {v0, v6}, Lorg/spongycastle/math/ec/LongArray;-><init>([J)V

    return-object v0

    nop

    :array_0
    .array-data 8
        0x1
    .end array-data
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 15

    .line 535
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/LongArray;->pZ()I

    move-result v3

    .line 536
    if-nez v3, :cond_0

    .line 538
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    return-object v0

    .line 541
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    add-int/lit8 v1, v3, -0x1

    aget-wide v4, v0, v1

    .line 542
    const/16 v0, 0x8

    new-array v6, v0, [B

    .line 543
    const/4 v7, 0x0

    .line 544
    const/4 v8, 0x0

    .line 545
    const/4 v9, 0x7

    :goto_0
    if-ltz v9, :cond_3

    .line 547
    mul-int/lit8 v0, v9, 0x8

    ushr-long v0, v4, v0

    long-to-int v0, v0

    int-to-byte v10, v0

    .line 548
    if-nez v8, :cond_1

    if-eqz v10, :cond_2

    .line 550
    :cond_1
    const/4 v8, 0x1

    .line 551
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    aput-byte v10, v6, v0

    .line 545
    :cond_2
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 555
    :cond_3
    add-int/lit8 v0, v3, -0x1

    mul-int/lit8 v0, v0, 0x8

    add-int v9, v0, v7

    .line 556
    new-array v10, v9, [B

    .line 557
    const/4 v11, 0x0

    :goto_1
    if-ge v11, v7, :cond_4

    .line 559
    aget-byte v0, v6, v11

    aput-byte v0, v10, v11

    .line 557
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 563
    :cond_4
    add-int/lit8 v11, v3, -0x2

    :goto_2
    if-ltz v11, :cond_6

    .line 565
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    aget-wide v12, v0, v11

    .line 566
    const/4 v14, 0x7

    :goto_3
    if-ltz v14, :cond_5

    .line 568
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    mul-int/lit8 v1, v14, 0x8

    ushr-long v1, v12, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v10, v0

    .line 566
    add-int/lit8 v14, v14, -0x1

    goto :goto_3

    .line 563
    :cond_5
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    .line 571
    :cond_6
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v10}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 2173
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/LongArray;->pZ()I

    move-result v2

    .line 2174
    if-nez v2, :cond_0

    .line 2176
    const-string v0, "0"

    return-object v0

    .line 2179
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    add-int/lit8 v2, v2, -0x1

    aget-wide v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2180
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    .line 2182
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    aget-wide v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v4

    .line 2185
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 2186
    const/16 v0, 0x40

    if-ge v5, v0, :cond_1

    .line 2188
    const-string v0, "0000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2191
    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2192
    goto :goto_0

    .line 2193
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lorg/spongycastle/math/ec/LongArray;I[I)Lorg/spongycastle/math/ec/LongArray;
    .locals 28

    .line 993
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/LongArray;->qa()I

    move-result v7

    .line 994
    if-nez v7, :cond_0

    .line 996
    return-object p0

    .line 998
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/LongArray;->qa()I

    move-result v8

    .line 999
    if-nez v8, :cond_1

    .line 1001
    return-object p1

    .line 1007
    :cond_1
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 1008
    if-le v7, v8, :cond_2

    .line 1010
    move-object/from16 v9, p1

    move-object/from16 v10, p0

    .line 1011
    move v11, v7

    move v7, v8

    move v8, v11

    .line 1017
    :cond_2
    add-int/lit8 v0, v7, 0x3f

    ushr-int/lit8 v11, v0, 0x6

    .line 1018
    add-int/lit8 v0, v8, 0x3f

    ushr-int/lit8 v12, v0, 0x6

    .line 1019
    add-int v0, v7, v8

    add-int/lit8 v0, v0, 0x3e

    ushr-int/lit8 v13, v0, 0x6

    .line 1021
    const/4 v0, 0x1

    if-ne v11, v0, :cond_4

    .line 1023
    iget-object v0, v9, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    const/4 v1, 0x0

    aget-wide v14, v0, v1

    .line 1024
    const-wide/16 v0, 0x1

    cmp-long v0, v14, v0

    if-nez v0, :cond_3

    .line 1026
    return-object v10

    .line 1032
    :cond_3
    new-array v0, v13, [J

    move-object/from16 v16, v0

    .line 1033
    move-wide v0, v14

    iget-object v2, v10, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    move v3, v12

    move-object/from16 v4, v16

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/LongArray;->ˊ(J[JI[JI)V

    .line 1038
    move-object/from16 v0, v16

    const/4 v1, 0x0

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v13, v2, v3}, Lorg/spongycastle/math/ec/LongArray;->ˊ([JIII[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v0

    return-object v0

    .line 1044
    :cond_4
    add-int/lit8 v0, v8, 0x7

    add-int/lit8 v0, v0, 0x3f

    ushr-int/lit8 v14, v0, 0x6

    .line 1049
    const/16 v0, 0x10

    new-array v15, v0, [I

    .line 1054
    shl-int/lit8 v0, v14, 0x4

    new-array v1, v0, [J

    move-object/from16 v16, v1

    .line 1055
    move/from16 v17, v14

    .line 1056
    const/4 v0, 0x1

    aput v17, v15, v0

    .line 1057
    iget-object v0, v10, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    const/4 v1, 0x0

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1058
    const/16 v18, 0x2

    :goto_0
    move/from16 v0, v18

    const/16 v1, 0x10

    if-ge v0, v1, :cond_6

    .line 1060
    add-int v0, v17, v14

    move/from16 v17, v0

    aput v0, v15, v18

    .line 1061
    and-int/lit8 v0, v18, 0x1

    if-nez v0, :cond_5

    .line 1063
    move-object/from16 v0, v16

    ushr-int/lit8 v1, v17, 0x1

    move-object/from16 v2, v16

    move/from16 v3, v17

    move v4, v14

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/LongArray;->ˊ([JI[JIII)J

    goto :goto_1

    .line 1067
    :cond_5
    move-object/from16 v0, v16

    move v1, v14

    move-object/from16 v2, v16

    sub-int v3, v17, v14

    move-object/from16 v4, v16

    move/from16 v5, v17

    move v6, v14

    invoke-static/range {v0 .. v6}, Lorg/spongycastle/math/ec/LongArray;->ˊ([JI[JI[JII)V

    .line 1058
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 1074
    :cond_6
    move-object/from16 v0, v16

    array-length v0, v0

    new-array v1, v0, [J

    move-object/from16 v18, v1

    .line 1075
    move-object/from16 v0, v16

    move-object/from16 v2, v18

    move-object/from16 v1, v16

    array-length v4, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x4

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/LongArray;->ˊ([JI[JIII)J

    .line 1078
    iget-object v0, v9, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    move-object/from16 v19, v0

    .line 1079
    shl-int/lit8 v0, v13, 0x3

    new-array v1, v0, [J

    move-object/from16 v20, v1

    .line 1081
    const/16 v21, 0xf

    .line 1087
    const/16 v22, 0x0

    :goto_2
    move/from16 v0, v22

    if-ge v0, v11, :cond_8

    .line 1089
    aget-wide v23, v19, v22

    .line 1090
    move/from16 v25, v22

    .line 1093
    :goto_3
    move-wide/from16 v0, v23

    long-to-int v0, v0

    and-int/lit8 v26, v0, 0xf

    .line 1094
    const/4 v0, 0x4

    ushr-long v23, v23, v0

    .line 1095
    move-wide/from16 v0, v23

    long-to-int v0, v0

    and-int/lit8 v27, v0, 0xf

    .line 1096
    move-object/from16 v0, v20

    move/from16 v1, v25

    move-object/from16 v2, v16

    aget v3, v15, v26

    move-object/from16 v4, v18

    aget v5, v15, v27

    move v6, v14

    invoke-static/range {v0 .. v6}, Lorg/spongycastle/math/ec/LongArray;->ˋ([JI[JI[JII)V

    .line 1097
    const/4 v0, 0x4

    ushr-long v23, v23, v0

    .line 1098
    const-wide/16 v0, 0x0

    cmp-long v0, v23, v0

    if-nez v0, :cond_7

    .line 1100
    goto :goto_4

    .line 1102
    :cond_7
    add-int v25, v25, v13

    .line 1103
    goto :goto_3

    .line 1087
    :goto_4
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 1107
    :cond_8
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    .line 1108
    :goto_5
    sub-int v0, v22, v13

    move/from16 v22, v0

    if-eqz v0, :cond_9

    .line 1110
    move-object/from16 v0, v20

    sub-int v1, v22, v13

    move-object/from16 v2, v20

    move/from16 v3, v22

    move v4, v13

    const/16 v5, 0x8

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/LongArray;->ˋ([JI[JIII)J

    goto :goto_5

    .line 1117
    :cond_9
    move-object/from16 v0, v20

    const/4 v1, 0x0

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v13, v2, v3}, Lorg/spongycastle/math/ec/LongArray;->ˊ([JIII[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lorg/spongycastle/math/ec/LongArray;I)V
    .locals 5

    .line 701
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/LongArray;->pZ()I

    move-result v3

    .line 702
    if-nez v3, :cond_0

    .line 704
    return-void

    .line 707
    :cond_0
    add-int v4, v3, p2

    .line 708
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    array-length v0, v0

    if-le v4, v0, :cond_1

    .line 710
    invoke-direct {p0, v4}, Lorg/spongycastle/math/ec/LongArray;->Ｌ(I)[J

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    .line 713
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    iget-object v1, p1, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, v2, v3}, Lorg/spongycastle/math/ec/LongArray;->ˊ([JI[JII)V

    .line 714
    return-void
.end method

.method public ˋ(Lorg/spongycastle/math/ec/LongArray;I[I)Lorg/spongycastle/math/ec/LongArray;
    .locals 28

    .line 1349
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/LongArray;->qa()I

    move-result v7

    .line 1350
    if-nez v7, :cond_0

    .line 1352
    return-object p0

    .line 1354
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/LongArray;->qa()I

    move-result v8

    .line 1355
    if-nez v8, :cond_1

    .line 1357
    return-object p1

    .line 1363
    :cond_1
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 1364
    if-le v7, v8, :cond_2

    .line 1366
    move-object/from16 v9, p1

    move-object/from16 v10, p0

    .line 1367
    move v11, v7

    move v7, v8

    move v8, v11

    .line 1373
    :cond_2
    add-int/lit8 v0, v7, 0x3f

    ushr-int/lit8 v11, v0, 0x6

    .line 1374
    add-int/lit8 v0, v8, 0x3f

    ushr-int/lit8 v12, v0, 0x6

    .line 1375
    add-int v0, v7, v8

    add-int/lit8 v0, v0, 0x3e

    ushr-int/lit8 v13, v0, 0x6

    .line 1377
    const/4 v0, 0x1

    if-ne v11, v0, :cond_4

    .line 1379
    iget-object v0, v9, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    const/4 v1, 0x0

    aget-wide v14, v0, v1

    .line 1380
    const-wide/16 v0, 0x1

    cmp-long v0, v14, v0

    if-nez v0, :cond_3

    .line 1382
    return-object v10

    .line 1388
    :cond_3
    new-array v0, v13, [J

    move-object/from16 v16, v0

    .line 1389
    move-wide v0, v14

    iget-object v2, v10, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    move v3, v12

    move-object/from16 v4, v16

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/LongArray;->ˊ(J[JI[JI)V

    .line 1395
    new-instance v0, Lorg/spongycastle/math/ec/LongArray;

    move-object/from16 v1, v16

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v13}, Lorg/spongycastle/math/ec/LongArray;-><init>([JII)V

    return-object v0

    .line 1401
    :cond_4
    add-int/lit8 v0, v8, 0x7

    add-int/lit8 v0, v0, 0x3f

    ushr-int/lit8 v14, v0, 0x6

    .line 1406
    const/16 v0, 0x10

    new-array v15, v0, [I

    .line 1411
    shl-int/lit8 v0, v14, 0x4

    new-array v1, v0, [J

    move-object/from16 v16, v1

    .line 1412
    move/from16 v17, v14

    .line 1413
    const/4 v0, 0x1

    aput v17, v15, v0

    .line 1414
    iget-object v0, v10, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    const/4 v1, 0x0

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1415
    const/16 v18, 0x2

    :goto_0
    move/from16 v0, v18

    const/16 v1, 0x10

    if-ge v0, v1, :cond_6

    .line 1417
    add-int v0, v17, v14

    move/from16 v17, v0

    aput v0, v15, v18

    .line 1418
    and-int/lit8 v0, v18, 0x1

    if-nez v0, :cond_5

    .line 1420
    move-object/from16 v0, v16

    ushr-int/lit8 v1, v17, 0x1

    move-object/from16 v2, v16

    move/from16 v3, v17

    move v4, v14

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/LongArray;->ˊ([JI[JIII)J

    goto :goto_1

    .line 1424
    :cond_5
    move-object/from16 v0, v16

    move v1, v14

    move-object/from16 v2, v16

    sub-int v3, v17, v14

    move-object/from16 v4, v16

    move/from16 v5, v17

    move v6, v14

    invoke-static/range {v0 .. v6}, Lorg/spongycastle/math/ec/LongArray;->ˊ([JI[JI[JII)V

    .line 1415
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 1431
    :cond_6
    move-object/from16 v0, v16

    array-length v0, v0

    new-array v1, v0, [J

    move-object/from16 v18, v1

    .line 1432
    move-object/from16 v0, v16

    move-object/from16 v2, v18

    move-object/from16 v1, v16

    array-length v4, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x4

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/LongArray;->ˊ([JI[JIII)J

    .line 1435
    iget-object v0, v9, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    move-object/from16 v19, v0

    .line 1436
    shl-int/lit8 v0, v13, 0x3

    new-array v1, v0, [J

    move-object/from16 v20, v1

    .line 1438
    const/16 v21, 0xf

    .line 1444
    const/16 v22, 0x0

    :goto_2
    move/from16 v0, v22

    if-ge v0, v11, :cond_8

    .line 1446
    aget-wide v23, v19, v22

    .line 1447
    move/from16 v25, v22

    .line 1450
    :goto_3
    move-wide/from16 v0, v23

    long-to-int v0, v0

    and-int/lit8 v26, v0, 0xf

    .line 1451
    const/4 v0, 0x4

    ushr-long v23, v23, v0

    .line 1452
    move-wide/from16 v0, v23

    long-to-int v0, v0

    and-int/lit8 v27, v0, 0xf

    .line 1453
    move-object/from16 v0, v20

    move/from16 v1, v25

    move-object/from16 v2, v16

    aget v3, v15, v26

    move-object/from16 v4, v18

    aget v5, v15, v27

    move v6, v14

    invoke-static/range {v0 .. v6}, Lorg/spongycastle/math/ec/LongArray;->ˋ([JI[JI[JII)V

    .line 1454
    const/4 v0, 0x4

    ushr-long v23, v23, v0

    .line 1455
    const-wide/16 v0, 0x0

    cmp-long v0, v23, v0

    if-nez v0, :cond_7

    .line 1457
    goto :goto_4

    .line 1459
    :cond_7
    add-int v25, v25, v13

    .line 1460
    goto :goto_3

    .line 1444
    :goto_4
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 1464
    :cond_8
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    .line 1465
    :goto_5
    sub-int v0, v22, v13

    move/from16 v22, v0

    if-eqz v0, :cond_9

    .line 1467
    move-object/from16 v0, v20

    sub-int v1, v22, v13

    move-object/from16 v2, v20

    move/from16 v3, v22

    move v4, v13

    const/16 v5, 0x8

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/LongArray;->ˋ([JI[JIII)J

    goto :goto_5

    .line 1475
    :cond_9
    new-instance v0, Lorg/spongycastle/math/ec/LongArray;

    move-object/from16 v1, v20

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v13}, Lorg/spongycastle/math/ec/LongArray;-><init>([JII)V

    return-object v0
.end method

.method public ˋ(I[I)V
    .locals 5

    .line 1480
    iget-object v3, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    .line 1481
    array-length v0, v3

    const/4 v1, 0x0

    invoke-static {v3, v1, v0, p1, p2}, Lorg/spongycastle/math/ec/LongArray;->ˋ([JIII[I)I

    move-result v4

    .line 1482
    array-length v0, v3

    if-ge v4, v0, :cond_0

    .line 1484
    new-array v0, v4, [J

    iput-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    .line 1485
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v3, v1, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1487
    :cond_0
    return-void
.end method

.method public ˎ(I[I)Lorg/spongycastle/math/ec/LongArray;
    .locals 9

    .line 1659
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/LongArray;->pZ()I

    move-result v3

    .line 1660
    if-nez v3, :cond_0

    .line 1662
    return-object p0

    .line 1665
    :cond_0
    shl-int/lit8 v4, v3, 0x1

    .line 1666
    new-array v5, v4, [J

    .line 1668
    const/4 v6, 0x0

    .line 1669
    :goto_0
    if-ge v6, v4, :cond_1

    .line 1671
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    ushr-int/lit8 v1, v6, 0x1

    aget-wide v7, v0, v1

    .line 1672
    move v0, v6

    add-int/lit8 v6, v6, 0x1

    long-to-int v1, v7

    invoke-static {v1}, Lorg/spongycastle/math/ec/LongArray;->ｧ(I)J

    move-result-wide v1

    aput-wide v1, v5, v0

    .line 1673
    move v0, v6

    add-int/lit8 v6, v6, 0x1

    const/16 v1, 0x20

    ushr-long v1, v7, v1

    long-to-int v1, v1

    invoke-static {v1}, Lorg/spongycastle/math/ec/LongArray;->ｧ(I)J

    move-result-wide v1

    aput-wide v1, v5, v0

    .line 1674
    goto :goto_0

    .line 1676
    :cond_1
    new-instance v0, Lorg/spongycastle/math/ec/LongArray;

    array-length v1, v5

    const/4 v2, 0x0

    invoke-static {v5, v2, v1, p1, p2}, Lorg/spongycastle/math/ec/LongArray;->ˋ([JIII[I)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v5, v2, v1}, Lorg/spongycastle/math/ec/LongArray;-><init>([JII)V

    return-object v0
.end method

.method public ˏ(II[I)Lorg/spongycastle/math/ec/LongArray;
    .locals 6

    .line 1681
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/LongArray;->pZ()I

    move-result v3

    .line 1682
    if-nez v3, :cond_0

    .line 1684
    return-object p0

    .line 1687
    :cond_0
    add-int/lit8 v0, p2, 0x3f

    ushr-int/lit8 v4, v0, 0x6

    .line 1688
    shl-int/lit8 v0, v4, 0x1

    new-array v5, v0, [J

    .line 1689
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1691
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    .line 1693
    invoke-static {v5, v3, p2, p3}, Lorg/spongycastle/math/ec/LongArray;->ˊ([JII[I)V

    .line 1694
    array-length v0, v5

    const/4 v1, 0x0

    invoke-static {v5, v1, v0, p2, p3}, Lorg/spongycastle/math/ec/LongArray;->ˋ([JIII[I)I

    move-result v3

    goto :goto_0

    .line 1697
    :cond_1
    new-instance v0, Lorg/spongycastle/math/ec/LongArray;

    const/4 v1, 0x0

    invoke-direct {v0, v5, v1, v3}, Lorg/spongycastle/math/ec/LongArray;-><init>([JII)V

    return-object v0
.end method

.method public ˏ(I[I)Lorg/spongycastle/math/ec/LongArray;
    .locals 9

    .line 1702
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/LongArray;->pZ()I

    move-result v3

    .line 1703
    if-nez v3, :cond_0

    .line 1705
    return-object p0

    .line 1708
    :cond_0
    shl-int/lit8 v4, v3, 0x1

    .line 1709
    new-array v5, v4, [J

    .line 1711
    const/4 v6, 0x0

    .line 1712
    :goto_0
    if-ge v6, v4, :cond_1

    .line 1714
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    ushr-int/lit8 v1, v6, 0x1

    aget-wide v7, v0, v1

    .line 1715
    move v0, v6

    add-int/lit8 v6, v6, 0x1

    long-to-int v1, v7

    invoke-static {v1}, Lorg/spongycastle/math/ec/LongArray;->ｧ(I)J

    move-result-wide v1

    aput-wide v1, v5, v0

    .line 1716
    move v0, v6

    add-int/lit8 v6, v6, 0x1

    const/16 v1, 0x20

    ushr-long v1, v7, v1

    long-to-int v1, v1

    invoke-static {v1}, Lorg/spongycastle/math/ec/LongArray;->ｧ(I)J

    move-result-wide v1

    aput-wide v1, v5, v0

    .line 1717
    goto :goto_0

    .line 1719
    :cond_1
    new-instance v0, Lorg/spongycastle/math/ec/LongArray;

    array-length v1, v5

    const/4 v2, 0x0

    invoke-direct {v0, v5, v2, v1}, Lorg/spongycastle/math/ec/LongArray;-><init>([JII)V

    return-object v0
.end method

.method public ᐝ(I[I)Lorg/spongycastle/math/ec/LongArray;
    .locals 21

    .line 2054
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/LongArray;->qa()I

    move-result v5

    .line 2055
    if-nez v5, :cond_0

    .line 2057
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 2059
    :cond_0
    const/4 v0, 0x1

    if-ne v5, v0, :cond_1

    .line 2061
    return-object p0

    .line 2065
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/LongArray;

    move-object v6, v0

    .line 2067
    add-int/lit8 v0, p1, 0x3f

    ushr-int/lit8 v7, v0, 0x6

    .line 2070
    new-instance v8, Lorg/spongycastle/math/ec/LongArray;

    invoke-direct {v8, v7}, Lorg/spongycastle/math/ec/LongArray;-><init>(I)V

    .line 2071
    iget-object v0, v8, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    const/4 v1, 0x0

    move/from16 v2, p1

    move/from16 v3, p1

    move-object/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/math/ec/LongArray;->ˏ([JIII[I)V

    .line 2074
    new-instance v9, Lorg/spongycastle/math/ec/LongArray;

    invoke-direct {v9, v7}, Lorg/spongycastle/math/ec/LongArray;-><init>(I)V

    .line 2075
    iget-object v0, v9, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    const-wide/16 v1, 0x1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 2076
    new-instance v10, Lorg/spongycastle/math/ec/LongArray;

    invoke-direct {v10, v7}, Lorg/spongycastle/math/ec/LongArray;-><init>(I)V

    .line 2078
    const/4 v0, 0x2

    new-array v11, v0, [I

    const/4 v0, 0x0

    aput v5, v11, v0

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    aput v0, v11, v1

    .line 2079
    const/4 v0, 0x2

    new-array v12, v0, [Lorg/spongycastle/math/ec/LongArray;

    const/4 v0, 0x0

    aput-object v6, v12, v0

    const/4 v0, 0x1

    aput-object v8, v12, v0

    .line 2081
    const/4 v0, 0x2

    new-array v13, v0, [I

    fill-array-data v13, :array_0

    .line 2082
    const/4 v0, 0x2

    new-array v14, v0, [Lorg/spongycastle/math/ec/LongArray;

    const/4 v0, 0x0

    aput-object v9, v14, v0

    const/4 v0, 0x1

    aput-object v10, v14, v0

    .line 2084
    const/4 v15, 0x1

    .line 2085
    aget v16, v11, v15

    .line 2086
    aget v17, v13, v15

    .line 2087
    const/4 v0, 0x0

    aget v0, v11, v0

    sub-int v18, v16, v0

    .line 2091
    :goto_0
    if-gez v18, :cond_2

    .line 2093
    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    .line 2094
    aput v16, v11, v15

    .line 2095
    aput v17, v13, v15

    .line 2096
    rsub-int/lit8 v15, v15, 0x1

    .line 2097
    aget v16, v11, v15

    .line 2098
    aget v17, v13, v15

    .line 2101
    :cond_2
    aget-object v0, v12, v15

    rsub-int/lit8 v1, v15, 0x1

    aget-object v1, v12, v1

    rsub-int/lit8 v2, v15, 0x1

    aget v2, v11, v2

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/LongArray;->ˊ(Lorg/spongycastle/math/ec/LongArray;II)V

    .line 2103
    aget-object v0, v12, v15

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/LongArray;->Ｊ(I)I

    move-result v19

    .line 2104
    if-nez v19, :cond_3

    .line 2106
    rsub-int/lit8 v0, v15, 0x1

    aget-object v0, v14, v0

    return-object v0

    .line 2110
    :cond_3
    rsub-int/lit8 v0, v15, 0x1

    aget v20, v13, v0

    .line 2111
    aget-object v0, v14, v15

    rsub-int/lit8 v1, v15, 0x1

    aget-object v1, v14, v1

    move/from16 v2, v20

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/LongArray;->ˊ(Lorg/spongycastle/math/ec/LongArray;II)V

    .line 2112
    add-int v20, v20, v18

    .line 2114
    move/from16 v0, v20

    move/from16 v1, v17

    if-le v0, v1, :cond_4

    .line 2116
    move/from16 v17, v20

    goto :goto_1

    .line 2118
    :cond_4
    move/from16 v0, v20

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 2120
    aget-object v0, v14, v15

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/LongArray;->Ｊ(I)I

    move-result v17

    .line 2124
    :cond_5
    :goto_1
    sub-int v0, v19, v16

    add-int v18, v18, v0

    .line 2125
    move/from16 v16, v19

    .line 2126
    goto/16 :goto_0

    nop

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method public ﻣ(I)I
    .locals 5

    .line 411
    iget-object v4, p0, Lorg/spongycastle/math/ec/LongArray;->bcN:[J

    .line 412
    array-length v0, v4

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 414
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 416
    const/4 v0, 0x0

    return v0

    .line 420
    :cond_0
    const/4 v0, 0x0

    aget-wide v0, v4, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 422
    :goto_0
    add-int/lit8 p1, p1, -0x1

    aget-wide v0, v4, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    goto :goto_0

    .line 425
    :cond_1
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 430
    :cond_2
    add-int/lit8 p1, p1, -0x1

    aget-wide v0, v4, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 432
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 435
    :cond_3
    if-gtz p1, :cond_2

    .line 437
    const/4 v0, 0x0

    return v0
.end method
