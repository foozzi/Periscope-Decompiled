.class public Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$1;,
        Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$CombineTask;,
        Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$ModResultantTask;
    }
.end annotation


# static fields
.field private static final bjE:[I

.field private static final bjF:Ljava/util/List;


# instance fields
.field public bjG:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    const/16 v0, 0x26b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjE:[I

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjF:Ljava/util/List;

    .line 103
    const/4 v3, 0x0

    :goto_0
    sget-object v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjE:[I

    array-length v0, v0

    if-eq v3, v0, :cond_0

    .line 105
    sget-object v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjF:Ljava/util/List;

    sget-object v1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjE:[I

    aget v1, v1, v3

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    :cond_0
    return-void

    :array_0
    .array-data 4
        0x119b
        0x11a1
        0x11a5
        0x11a7
        0x11ab
        0x11c3
        0x11c5
        0x11d1
        0x11d7
        0x11e7
        0x11ef
        0x11f5
        0x11fb
        0x120d
        0x121d
        0x121f
        0x1223
        0x1229
        0x122b
        0x1231
        0x1237
        0x1241
        0x1247
        0x1253
        0x125f
        0x1271
        0x1273
        0x1279
        0x127d
        0x128f
        0x1297
        0x12af
        0x12b3
        0x12b5
        0x12b9
        0x12bf
        0x12c1
        0x12cd
        0x12d1
        0x12df
        0x12fd
        0x1307
        0x130d
        0x1319
        0x1327
        0x132d
        0x1337
        0x1343
        0x1345
        0x1349
        0x134f
        0x1357
        0x135d
        0x1367
        0x1369
        0x136d
        0x137b
        0x1381
        0x1387
        0x138b
        0x1391
        0x1393
        0x139d
        0x139f
        0x13af
        0x13bb
        0x13c3
        0x13d5
        0x13d9
        0x13df
        0x13eb
        0x13ed
        0x13f3
        0x13f9
        0x13ff
        0x141b
        0x1421
        0x142f
        0x1433
        0x143b
        0x1445
        0x144d
        0x1459
        0x146b
        0x146f
        0x1471
        0x1475
        0x148d
        0x1499
        0x149f
        0x14a1
        0x14b1
        0x14b7
        0x14bd
        0x14cb
        0x14d5
        0x14e3
        0x14e7
        0x1505
        0x150b
        0x1511
        0x1517
        0x151f
        0x1525
        0x1529
        0x152b
        0x1537
        0x153d
        0x1541
        0x1543
        0x1549
        0x155f
        0x1565
        0x1567
        0x156b
        0x157d
        0x157f
        0x1583
        0x158f
        0x1591
        0x1597
        0x159b
        0x15b5
        0x15bb
        0x15c1
        0x15c5
        0x15cd
        0x15d7
        0x15f7
        0x1607
        0x1609
        0x160f
        0x1613
        0x1615
        0x1619
        0x161b
        0x1625
        0x1633
        0x1639
        0x163d
        0x1645
        0x164f
        0x1655
        0x1669
        0x166d
        0x166f
        0x1675
        0x1693
        0x1697
        0x169f
        0x16a9
        0x16af
        0x16b5
        0x16bd
        0x16c3
        0x16cf
        0x16d3
        0x16d9
        0x16db
        0x16e1
        0x16e5
        0x16eb
        0x16ed
        0x16f7
        0x16f9
        0x1709
        0x170f
        0x1723
        0x1727
        0x1733
        0x1741
        0x175d
        0x1763
        0x1777
        0x177b
        0x178d
        0x1795
        0x179b
        0x179f
        0x17a5
        0x17b3
        0x17b9
        0x17bf
        0x17c9
        0x17cb
        0x17d5
        0x17e1
        0x17e9
        0x17f3
        0x17f5
        0x17ff
        0x1807
        0x1813
        0x181d
        0x1835
        0x1837
        0x183b
        0x1843
        0x1849
        0x184d
        0x1855
        0x1867
        0x1871
        0x1877
        0x187d
        0x187f
        0x1885
        0x188f
        0x189b
        0x189d
        0x18a7
        0x18ad
        0x18b3
        0x18b9
        0x18c1
        0x18c7
        0x18d1
        0x18d7
        0x18d9
        0x18df
        0x18e5
        0x18eb
        0x18f5
        0x18fd
        0x1915
        0x191b
        0x1931
        0x1933
        0x1945
        0x1949
        0x1951
        0x195b
        0x1979
        0x1981
        0x1993
        0x1997
        0x1999
        0x19a3
        0x19a9
        0x19ab
        0x19b1
        0x19b5
        0x19c7
        0x19cf
        0x19db
        0x19ed
        0x19fd
        0x1a03
        0x1a05
        0x1a11
        0x1a17
        0x1a21
        0x1a23
        0x1a2d
        0x1a2f
        0x1a35
        0x1a3f
        0x1a4d
        0x1a51
        0x1a69
        0x1a6b
        0x1a7b
        0x1a7d
        0x1a87
        0x1a89
        0x1a93
        0x1aa7
        0x1aab
        0x1aad
        0x1ab1
        0x1ab9
        0x1ac9
        0x1acf
        0x1ad5
        0x1ad7
        0x1ae3
        0x1af3
        0x1afb
        0x1aff
        0x1b05
        0x1b23
        0x1b25
        0x1b2f
        0x1b31
        0x1b37
        0x1b3b
        0x1b41
        0x1b47
        0x1b4f
        0x1b55
        0x1b59
        0x1b65
        0x1b6b
        0x1b73
        0x1b7f
        0x1b83
        0x1b91
        0x1b9d
        0x1ba7
        0x1bbf
        0x1bc5
        0x1bd1
        0x1bd7
        0x1bd9
        0x1bef
        0x1bf7
        0x1c09
        0x1c13
        0x1c19
        0x1c27
        0x1c2b
        0x1c2d
        0x1c33
        0x1c3d
        0x1c45
        0x1c4b
        0x1c4f
        0x1c55
        0x1c73
        0x1c81
        0x1c8b
        0x1c8d
        0x1c99
        0x1ca3
        0x1ca5
        0x1cb5
        0x1cb7
        0x1cc9
        0x1ce1
        0x1cf3
        0x1cf9
        0x1d09
        0x1d1b
        0x1d21
        0x1d23
        0x1d35
        0x1d39
        0x1d3f
        0x1d41
        0x1d4b
        0x1d53
        0x1d5d
        0x1d63
        0x1d69
        0x1d71
        0x1d75
        0x1d7b
        0x1d7d
        0x1d87
        0x1d89
        0x1d95
        0x1d99
        0x1d9f
        0x1da5
        0x1da7
        0x1db3
        0x1db7
        0x1dc5
        0x1dd7
        0x1ddb
        0x1de1
        0x1df5
        0x1df9
        0x1e01
        0x1e07
        0x1e0b
        0x1e13
        0x1e17
        0x1e25
        0x1e2b
        0x1e2f
        0x1e3d
        0x1e49
        0x1e4d
        0x1e4f
        0x1e6d
        0x1e71
        0x1e89
        0x1e8f
        0x1e95
        0x1ea1
        0x1ead
        0x1ebb
        0x1ec1
        0x1ec5
        0x1ec7
        0x1ecb
        0x1edd
        0x1ee3
        0x1eef
        0x1ef7
        0x1efd
        0x1f01
        0x1f0d
        0x1f0f
        0x1f1b
        0x1f39
        0x1f49
        0x1f4b
        0x1f51
        0x1f67
        0x1f75
        0x1f7b
        0x1f85
        0x1f91
        0x1f97
        0x1f99
        0x1f9d
        0x1fa5
        0x1faf
        0x1fb5
        0x1fbb
        0x1fd3
        0x1fe1
        0x1fe7
        0x1feb
        0x1ff3
        0x1fff
        0x2011
        0x201b
        0x201d
        0x2027
        0x2029
        0x202d
        0x2033
        0x2047
        0x204d
        0x2051
        0x205f
        0x2063
        0x2065
        0x2069
        0x2077
        0x207d
        0x2089
        0x20a1
        0x20ab
        0x20b1
        0x20b9
        0x20c3
        0x20c5
        0x20e3
        0x20e7
        0x20ed
        0x20ef
        0x20fb
        0x20ff
        0x210d
        0x2113
        0x2135
        0x2141
        0x2149
        0x214f
        0x2159
        0x215b
        0x215f
        0x2173
        0x217d
        0x2185
        0x2195
        0x2197
        0x21a1
        0x21af
        0x21b3
        0x21b5
        0x21c1
        0x21c7
        0x21d7
        0x21dd
        0x21e5
        0x21e9
        0x21f1
        0x21f5
        0x21fb
        0x2203
        0x2209
        0x220f
        0x221b
        0x2221
        0x2225
        0x222b
        0x2231
        0x2239
        0x224b
        0x224f
        0x2263
        0x2267
        0x2273
        0x2275
        0x227f
        0x2285
        0x2287
        0x2291
        0x229d
        0x229f
        0x22a3
        0x22b7
        0x22bd
        0x22db
        0x22e1
        0x22e5
        0x22ed
        0x22f7
        0x2303
        0x2309
        0x230b
        0x2327
        0x2329
        0x232f
        0x2333
        0x2335
        0x2345
        0x2351
        0x2353
        0x2359
        0x2363
        0x236b
        0x2383
        0x238f
        0x2395
        0x23a7
        0x23ad
        0x23b1
        0x23bf
        0x23c5
        0x23c9
        0x23d5
        0x23dd
        0x23e3
        0x23ef
        0x23f3
        0x23f9
        0x2405
        0x240b
        0x2417
        0x2419
        0x2429
        0x243d
        0x2441
        0x2443
        0x244d
        0x245f
        0x2467
        0x246b
        0x2479
        0x247d
        0x247f
        0x2485
        0x249b
        0x24a1
        0x24af
        0x24b5
        0x24bb
        0x24c5
        0x24cb
        0x24cd
        0x24d7
        0x24d9
        0x24dd
        0x24df
        0x24f5
        0x24f7
        0x24fb
        0x2501
        0x2507
        0x2513
        0x2519
        0x2527
        0x2531
        0x253d
        0x2543
        0x254b
        0x254f
        0x2573
        0x2581
        0x258d
        0x2593
        0x2597
        0x259d
        0x259f
        0x25ab
        0x25b1
        0x25bd
        0x25cd
        0x25cf
        0x25d9
        0x25e1
        0x25f7
        0x25f9
        0x2605
        0x260b
        0x260f
        0x2615
        0x2627
        0x2629
        0x2635
        0x263b
        0x263f
        0x264b
        0x2653
        0x2659
        0x2665
        0x2669
        0x266f
        0x267b
        0x2681
        0x2683
        0x268f
        0x269b
        0x269f
        0x26ad
        0x26b3
        0x26c3
        0x26c9
        0x26cb
        0x26d5
        0x26dd
        0x26ef
        0x26f5
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    .line 119
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)V
    .locals 3

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    .line 139
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 141
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    aput v1, v0, v2

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method

.method public constructor <init>([I)V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    .line 129
    return-void
.end method

.method private sW()Z
    .locals 2

    .line 1213
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 1215
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v0, v0, v1

    if-eqz v0, :cond_0

    .line 1217
    const/4 v0, 0x0

    return v0

    .line 1213
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1220
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private sY()Z
    .locals 3

    .line 1247
    const/4 v2, 0x1

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 1249
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v0, v0, v2

    if-eqz v0, :cond_0

    .line 1251
    const/4 v0, 0x0

    return v0

    .line 1247
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1254
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private sort([I)V
    .locals 5

    .line 1153
    const/4 v2, 0x1

    .line 1155
    :goto_0
    if-eqz v2, :cond_2

    .line 1157
    const/4 v2, 0x0

    .line 1158
    const/4 v3, 0x0

    :goto_1
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-eq v3, v0, :cond_1

    .line 1160
    aget v0, p1, v3

    add-int/lit8 v1, v3, 0x1

    aget v1, p1, v1

    if-le v0, v1, :cond_0

    .line 1162
    aget v4, p1, v3

    .line 1163
    add-int/lit8 v0, v3, 0x1

    aget v0, p1, v0

    aput v0, p1, v3

    .line 1164
    add-int/lit8 v0, v3, 0x1

    aput v4, p1, v0

    .line 1165
    const/4 v2, 0x1

    .line 1158
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    goto :goto_0

    .line 1169
    :cond_2
    return-void
.end method

.method private ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;III)V
    .locals 6

    .line 844
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v4, v0

    .line 845
    move v5, p3

    :goto_0
    if-ge v5, v4, :cond_0

    .line 847
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v1, v1, v5

    iget-object v2, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    sub-int v3, v5, p3

    aget v2, v2, v3

    mul-int/2addr v2, p2

    sub-int/2addr v1, v2

    rem-int/2addr v1, p4

    aput v1, v0, v5

    .line 845
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 849
    :cond_0
    return-void
.end method

.method private ˋ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 19

    .line 314
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    .line 315
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    .line 317
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v6, v0

    .line 318
    const/16 v0, 0x20

    if-gt v6, v0, :cond_2

    .line 320
    mul-int/lit8 v0, v6, 0x2

    add-int/lit8 v7, v0, -0x1

    .line 321
    new-instance v8, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    new-array v0, v7, [I

    invoke-direct {v8, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    .line 322
    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_1

    .line 324
    sub-int v0, v9, v6

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    :goto_1
    add-int/lit8 v0, v6, -0x1

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gt v10, v0, :cond_0

    .line 326
    iget-object v0, v8, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v1, v0, v9

    aget v2, v5, v10

    sub-int v3, v9, v10

    aget v3, v4, v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    aput v1, v0, v9

    .line 324
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 322
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 329
    :cond_1
    return-object v8

    .line 333
    :cond_2
    div-int/lit8 v7, v6, 0x2

    .line 335
    new-instance v8, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-static {v4, v7}, Lorg/spongycastle/util/Arrays;->copyOf([II)[I

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    .line 336
    new-instance v9, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-static {v4, v7, v6}, Lorg/spongycastle/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    invoke-direct {v9, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    .line 337
    new-instance v10, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-static {v5, v7}, Lorg/spongycastle/util/Arrays;->copyOf([II)[I

    move-result-object v0

    invoke-direct {v10, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    .line 338
    new-instance v11, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-static {v5, v7, v6}, Lorg/spongycastle/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    invoke-direct {v11, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    .line 340
    invoke-virtual {v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-object v12, v0

    .line 341
    invoke-virtual {v12, v9}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˎ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 342
    invoke-virtual {v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-object v13, v0

    .line 343
    invoke-virtual {v13, v11}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˎ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 345
    invoke-direct {v8, v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˋ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v14

    .line 346
    invoke-direct {v9, v11}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˋ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v15

    .line 347
    invoke-direct {v12, v13}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˋ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v16

    .line 348
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˏ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 349
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˏ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 351
    new-instance v17, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    mul-int/lit8 v0, v6, 0x2

    add-int/lit8 v0, v0, -0x1

    move-object/from16 v1, v17

    invoke-direct {v1, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 352
    const/16 v18, 0x0

    :goto_2
    iget-object v0, v14, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v0, v0

    move/from16 v1, v18

    if-ge v1, v0, :cond_3

    .line 354
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    iget-object v1, v14, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v1, v1, v18

    aput v1, v0, v18

    .line 352
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 356
    :cond_3
    const/16 v18, 0x0

    :goto_3
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v0, v0

    move/from16 v1, v18

    if-ge v1, v0, :cond_4

    .line 358
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    add-int v1, v7, v18

    aget v2, v0, v1

    move-object/from16 v3, v16

    iget-object v3, v3, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v3, v3, v18

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 356
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 360
    :cond_4
    const/16 v18, 0x0

    :goto_4
    iget-object v0, v15, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v0, v0

    move/from16 v1, v18

    if-ge v1, v0, :cond_5

    .line 362
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    mul-int/lit8 v1, v7, 0x2

    add-int v1, v1, v18

    aget v2, v0, v1

    iget-object v3, v15, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v3, v3, v18

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 360
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 364
    :cond_5
    return-object v17
.end method

.method private ˋ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 6

    .line 455
    invoke-static {}, Lorg/spongycastle/pqc/math/ntru/util/Util;->tc()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x800

    if-ne p2, v0, :cond_1

    .line 457
    new-instance v2, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    invoke-direct {v2, p0}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 458
    new-instance v3, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    invoke-direct {v3, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 459
    const/4 v4, 0x2

    .line 460
    :goto_0
    if-ge v4, p2, :cond_0

    .line 462
    mul-int/lit8 v4, v4, 0x2

    .line 463
    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    move-object v5, v0

    .line 464
    add-int/lit8 v0, v4, -0x1

    invoke-virtual {v5, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->לּ(I)V

    .line 465
    invoke-virtual {v2, v3}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    move-result-object v3

    .line 466
    add-int/lit8 v0, v4, -0x1

    invoke-virtual {v5, v3, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;I)V

    .line 467
    move-object v3, v5

    .line 468
    goto :goto_0

    .line 469
    :cond_0
    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->ta()Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    return-object v0

    .line 473
    :cond_1
    const/4 v2, 0x2

    .line 474
    :goto_1
    if-ge v2, p2, :cond_2

    .line 476
    mul-int/lit8 v2, v2, 0x2

    .line 477
    new-instance v3, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->copyOf([II)[I

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    .line 478
    invoke-direct {v3, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ᵝ(I)V

    .line 479
    invoke-virtual {p0, p1, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p1

    .line 480
    invoke-virtual {v3, p1, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˏ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)V

    .line 481
    move-object p1, v3

    .line 482
    goto :goto_1

    .line 483
    :cond_2
    return-object p1
.end method

.method public static ᐠ([BII)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 2

    .line 195
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-static {p0, p1, p2}, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->ᐣ([BII)[I

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    return-object v0
.end method

.method public static ᕀ([BI)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 2

    .line 155
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-static {p0, p1}, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->ᵕ([BI)[I

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    return-object v0
.end method

.method private ᵝ(I)V
    .locals 4

    .line 972
    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v0, v0

    if-ge v3, v0, :cond_0

    .line 974
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v1, v0, v3

    mul-int/lit8 v1, v1, 0x2

    aput v1, v0, v3

    .line 975
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v1, v0, v3

    rem-int/2addr v1, p1

    aput v1, v0, v3

    .line 972
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 977
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 1291
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 1293
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    const/4 v1, 0x0

    aput v1, v0, v2

    .line 1291
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1295
    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 1304
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1309
    instance-of v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    if-eqz v0, :cond_0

    .line 1311
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget-object v1, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ՙ([I[I)Z

    move-result v0

    return v0

    .line 1315
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method qa()I
    .locals 3

    .line 873
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v0, v0

    add-int/lit8 v2, v0, -0x1

    .line 874
    :goto_0
    if-lez v2, :cond_0

    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v0, v0, v2

    if-nez v0, :cond_0

    .line 876
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 878
    :cond_0
    return v2
.end method

.method public sR()[B
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    invoke-static {v0}, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->ᵢ([I)[B

    move-result-object v0

    return-object v0
.end method

.method public sS()Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 13

    .line 495
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v4, v0

    .line 496
    const/4 v5, 0x0

    .line 497
    new-instance v6, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    add-int/lit8 v0, v4, 0x1

    invoke-direct {v6, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 498
    iget-object v0, v6, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 499
    new-instance v7, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    add-int/lit8 v0, v4, 0x1

    invoke-direct {v7, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 500
    new-instance v8, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    add-int/lit8 v0, v4, 0x1

    invoke-direct {v8, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 501
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    add-int/lit8 v1, v4, 0x1

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, v8, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    .line 502
    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ẋ(I)V

    .line 504
    new-instance v9, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    add-int/lit8 v0, v4, 0x1

    invoke-direct {v9, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 505
    iget-object v0, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    const/4 v1, -0x1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 506
    iget-object v0, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    const/4 v1, 0x1

    aput v1, v0, v4

    .line 509
    :cond_0
    :goto_0
    iget-object v0, v8, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_2

    .line 511
    const/4 v10, 0x1

    :goto_1
    if-gt v10, v4, :cond_1

    .line 513
    iget-object v0, v8, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    add-int/lit8 v1, v10, -0x1

    iget-object v2, v8, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v2, v2, v10

    aput v2, v0, v1

    .line 514
    iget-object v0, v7, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    add-int/lit8 v1, v4, 0x1

    sub-int/2addr v1, v10

    iget-object v2, v7, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    sub-int v3, v4, v10

    aget v2, v2, v3

    aput v2, v0, v1

    .line 511
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 516
    :cond_1
    iget-object v0, v8, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    const/4 v1, 0x0

    aput v1, v0, v4

    .line 517
    iget-object v0, v7, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 518
    add-int/lit8 v5, v5, 0x1

    .line 519
    invoke-direct {v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sW()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    const/4 v0, 0x0

    return-object v0

    .line 524
    :cond_2
    invoke-direct {v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sY()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 526
    goto :goto_2

    .line 528
    :cond_3
    invoke-virtual {v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->qa()I

    move-result v0

    invoke-virtual {v9}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->qa()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 531
    move-object v10, v8

    .line 532
    move-object v8, v9

    .line 533
    move-object v9, v10

    .line 535
    move-object v10, v6

    .line 536
    move-object v6, v7

    .line 537
    move-object v7, v10

    .line 539
    :cond_4
    iget-object v0, v8, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ne v0, v1, :cond_5

    .line 541
    const/4 v0, 0x3

    invoke-virtual {v8, v9, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˏ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)V

    .line 542
    const/4 v0, 0x3

    invoke-virtual {v6, v7, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˏ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)V

    goto/16 :goto_0

    .line 546
    :cond_5
    const/4 v0, 0x3

    invoke-virtual {v8, v9, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˎ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)V

    .line 547
    const/4 v0, 0x3

    invoke-virtual {v6, v7, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˎ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)V

    goto/16 :goto_0

    .line 551
    :goto_2
    iget-object v0, v6, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v0, v0, v4

    if-eqz v0, :cond_6

    .line 553
    const/4 v0, 0x0

    return-object v0

    .line 556
    :cond_6
    new-instance v10, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v10, v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 557
    const/4 v11, 0x0

    .line 558
    rem-int/2addr v5, v4

    .line 559
    add-int/lit8 v12, v4, -0x1

    :goto_3
    if-ltz v12, :cond_8

    .line 561
    sub-int v11, v12, v5

    .line 562
    if-gez v11, :cond_7

    .line 564
    add-int/2addr v11, v4

    .line 566
    :cond_7
    iget-object v0, v10, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    iget-object v1, v8, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, v6, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v2, v2, v12

    mul-int/2addr v1, v2

    aput v1, v0, v11

    .line 559
    add-int/lit8 v12, v12, -0x1

    goto :goto_3

    .line 569
    :cond_8
    const/4 v0, 0x3

    invoke-virtual {v10, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->〵(I)V

    .line 570
    return-object v10
.end method

.method public sT()Lorg/spongycastle/pqc/math/ntru/polynomial/Resultant;
    .locals 16

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v2, v0

    .line 592
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 593
    const/4 v4, 0x0

    .line 594
    sget-object v5, Lorg/spongycastle/pqc/math/ntru/polynomial/Constants;->bjC:Ljava/math/BigInteger;

    .line 595
    sget-object v6, Lorg/spongycastle/pqc/math/ntru/polynomial/Constants;->bjC:Ljava/math/BigInteger;

    .line 596
    const/4 v7, 0x1

    .line 597
    sget-object v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 600
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    move-object v4, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Ljava/math/BigInteger;->nextProbablePrime()Ljava/math/BigInteger;

    move-result-object v4

    .line 601
    :goto_1
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ᵍ(I)Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;

    move-result-object v9

    .line 602
    invoke-virtual {v3, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 604
    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 605
    invoke-static {v4, v5}, Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;->ͺ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;

    move-result-object v11

    .line 606
    move-object v12, v6

    .line 607
    iget-object v0, v11, Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;->aFO:Ljava/math/BigInteger;

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 608
    iget-object v0, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;->bjR:Ljava/math/BigInteger;

    iget-object v1, v11, Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;->aPZ:Ljava/math/BigInteger;

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 609
    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 610
    move-object v5, v10

    .line 612
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    .line 613
    invoke-virtual {v14}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v15

    .line 614
    invoke-virtual {v6, v14}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_1

    .line 616
    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    goto :goto_2

    .line 618
    :cond_1
    invoke-virtual {v6, v15}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_2

    .line 620
    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 623
    :cond_2
    :goto_2
    invoke-virtual {v6, v12}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 625
    add-int/lit8 v7, v7, 0x1

    .line 626
    const/4 v0, 0x3

    if-lt v7, v0, :cond_4

    .line 628
    goto :goto_3

    .line 633
    :cond_3
    const/4 v7, 0x1

    .line 635
    :cond_4
    goto/16 :goto_0

    .line 640
    :goto_3
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 642
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;

    move-object v9, v0

    .line 643
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;

    move-object v10, v0

    .line 644
    invoke-static {v9, v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;->ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;)Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;

    move-result-object v11

    .line 645
    invoke-virtual {v3, v11}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 646
    goto :goto_3

    .line 647
    :cond_5
    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;

    iget-object v9, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;->bjQ:Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    .line 649
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 650
    invoke-virtual {v10}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v11

    .line 651
    invoke-virtual {v6, v10}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_6

    .line 653
    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 655
    :cond_6
    invoke-virtual {v6, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_7

    .line 657
    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 660
    :cond_7
    const/4 v12, 0x0

    :goto_4
    if-ge v12, v2, :cond_a

    .line 662
    iget-object v0, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    aget-object v13, v0, v12

    .line 663
    invoke-virtual {v13, v10}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_8

    .line 665
    iget-object v0, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    invoke-virtual {v13, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v0, v12

    .line 667
    :cond_8
    invoke-virtual {v13, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_9

    .line 669
    iget-object v0, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->bjA:[Ljava/math/BigInteger;

    invoke-virtual {v13, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v0, v12

    .line 660
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 673
    :cond_a
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/Resultant;

    invoke-direct {v0, v9, v6}, Lorg/spongycastle/pqc/math/ntru/polynomial/Resultant;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public sU()V
    .locals 4

    .line 1013
    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v0, v0

    if-ge v3, v0, :cond_2

    .line 1015
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v1, v0, v3

    rem-int/lit8 v1, v1, 0x3

    aput v1, v0, v3

    .line 1016
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v0, v0, v3

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1018
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, -0x3

    aput v1, v0, v3

    .line 1020
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v0, v0, v3

    const/4 v1, -0x1

    if-ge v0, v1, :cond_1

    .line 1022
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x3

    aput v1, v0, v3

    .line 1013
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1025
    :cond_2
    return-void
.end method

.method public sV()I
    .locals 3

    .line 1198
    const/4 v1, 0x0

    .line 1199
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 1201
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v0, v0, v2

    add-int/2addr v1, v0

    .line 1199
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1203
    :cond_0
    return v1
.end method

.method public sX()Z
    .locals 3

    .line 1230
    const/4 v2, 0x1

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 1232
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v0, v0, v2

    if-eqz v0, :cond_0

    .line 1234
    const/4 v0, 0x0

    return v0

    .line 1230
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1237
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public sZ()V
    .locals 5

    .line 1281
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v3, v0, v1

    .line 1282
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v0, v0

    add-int/lit8 v4, v0, -0x1

    :goto_0
    if-lez v4, :cond_0

    .line 1284
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    add-int/lit8 v2, v4, -0x1

    aget v1, v1, v2

    aput v1, v0, v4

    .line 1282
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1286
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 1287
    return-void
.end method

.method public ta()Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 1

    .line 1299
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    return-object v0
.end method

.method public ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 7

    .line 285
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v4, v0

    .line 286
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v0, v0

    if-eq v0, v4, :cond_0

    .line 288
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of coefficients must be the same"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_0
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˋ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v5

    .line 293
    iget-object v0, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v0, v0

    if-le v0, v4, :cond_2

    .line 295
    move v6, v4

    :goto_0
    iget-object v0, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v0, v0

    if-ge v6, v0, :cond_1

    .line 297
    iget-object v0, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    sub-int v1, v6, v4

    aget v2, v0, v1

    iget-object v3, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v3, v3, v6

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 295
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 299
    :cond_1
    iget-object v0, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    invoke-static {v0, v4}, Lorg/spongycastle/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    .line 301
    :cond_2
    return-object v5
.end method

.method public ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 1

    .line 275
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    .line 276
    invoke-virtual {v0, p2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->〳(I)V

    .line 277
    return-object v0
.end method

.method public ˋ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;
    .locals 1

    .line 306
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->ˋ(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v0

    return-object v0
.end method

.method public ˎ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V
    .locals 4

    .line 900
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v0, v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 902
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    .line 904
    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v0, v0

    if-ge v3, v0, :cond_1

    .line 906
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v1, v0, v3

    iget-object v2, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v2, v2, v3

    add-int/2addr v1, v2

    aput v1, v0, v3

    .line 904
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 908
    :cond_1
    return-void
.end method

.method public ˎ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)V
    .locals 0

    .line 889
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˎ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 890
    invoke-virtual {p0, p2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->〳(I)V

    .line 891
    return-void
.end method

.method public ˏ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V
    .locals 4

    .line 929
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v0, v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 931
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    .line 933
    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v0, v0

    if-ge v3, v0, :cond_1

    .line 935
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v1, v0, v3

    iget-object v2, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    aput v1, v0, v3

    .line 933
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 937
    :cond_1
    return-void
.end method

.method public ˏ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)V
    .locals 0

    .line 918
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˏ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 919
    invoke-virtual {p0, p2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->〳(I)V

    .line 920
    return-void
.end method

.method public ᴳ(I)[B
    .locals 1

    .line 267
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    invoke-static {v0, p1}, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->ι([II)[B

    move-result-object v0

    return-object v0
.end method

.method public ᴼ(I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 13

    .line 377
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v4, v0

    .line 378
    const/4 v5, 0x0

    .line 379
    new-instance v6, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    add-int/lit8 v0, v4, 0x1

    invoke-direct {v6, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 380
    iget-object v0, v6, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 381
    new-instance v7, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    add-int/lit8 v0, v4, 0x1

    invoke-direct {v7, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 382
    new-instance v8, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    add-int/lit8 v0, v4, 0x1

    invoke-direct {v8, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 383
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    add-int/lit8 v1, v4, 0x1

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, v8, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    .line 384
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ẋ(I)V

    .line 386
    new-instance v9, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    add-int/lit8 v0, v4, 0x1

    invoke-direct {v9, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 387
    iget-object v0, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 388
    iget-object v0, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    const/4 v1, 0x1

    aput v1, v0, v4

    .line 391
    :cond_0
    :goto_0
    iget-object v0, v8, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_2

    .line 393
    const/4 v10, 0x1

    :goto_1
    if-gt v10, v4, :cond_1

    .line 395
    iget-object v0, v8, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    add-int/lit8 v1, v10, -0x1

    iget-object v2, v8, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v2, v2, v10

    aput v2, v0, v1

    .line 396
    iget-object v0, v7, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    add-int/lit8 v1, v4, 0x1

    sub-int/2addr v1, v10

    iget-object v2, v7, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    sub-int v3, v4, v10

    aget v2, v2, v3

    aput v2, v0, v1

    .line 393
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 398
    :cond_1
    iget-object v0, v8, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    const/4 v1, 0x0

    aput v1, v0, v4

    .line 399
    iget-object v0, v7, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 400
    add-int/lit8 v5, v5, 0x1

    .line 401
    invoke-direct {v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sW()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    const/4 v0, 0x0

    return-object v0

    .line 406
    :cond_2
    invoke-virtual {v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sX()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 408
    goto :goto_2

    .line 410
    :cond_3
    invoke-virtual {v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->qa()I

    move-result v0

    invoke-virtual {v9}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->qa()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 413
    move-object v10, v8

    .line 414
    move-object v8, v9

    .line 415
    move-object v9, v10

    .line 417
    move-object v10, v6

    .line 418
    move-object v6, v7

    .line 419
    move-object v7, v10

    .line 421
    :cond_4
    const/4 v0, 0x2

    invoke-virtual {v8, v9, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˎ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)V

    .line 422
    const/4 v0, 0x2

    invoke-virtual {v6, v7, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˎ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)V

    goto/16 :goto_0

    .line 425
    :goto_2
    iget-object v0, v6, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v0, v0, v4

    if-eqz v0, :cond_5

    .line 427
    const/4 v0, 0x0

    return-object v0

    .line 430
    :cond_5
    new-instance v10, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v10, v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 431
    const/4 v11, 0x0

    .line 432
    rem-int/2addr v5, v4

    .line 433
    add-int/lit8 v12, v4, -0x1

    :goto_3
    if-ltz v12, :cond_7

    .line 435
    sub-int v11, v12, v5

    .line 436
    if-gez v11, :cond_6

    .line 438
    add-int/2addr v11, v4

    .line 440
    :cond_6
    iget-object v0, v10, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    iget-object v1, v6, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v1, v1, v12

    aput v1, v0, v11

    .line 433
    add-int/lit8 v12, v12, -0x1

    goto :goto_3

    .line 443
    :cond_7
    invoke-direct {p0, v10, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˋ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    return-object v0
.end method

.method public ᵍ(I)Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;
    .locals 19

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->copyOf([II)[I

    move-result-object v5

    .line 777
    new-instance v6, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v6, v5}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    .line 778
    array-length v7, v5

    .line 780
    new-instance v8, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v8, v7}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 781
    iget-object v0, v8, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    const/4 v1, -0x1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 782
    iget-object v0, v8, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    add-int/lit8 v1, v7, -0x1

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 783
    new-instance v9, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget-object v0, v6, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    invoke-direct {v9, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    .line 784
    new-instance v10, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v10, v7}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 785
    new-instance v11, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v11, v7}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 786
    iget-object v0, v11, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 787
    add-int/lit8 v12, v7, -0x1

    .line 788
    invoke-virtual {v9}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->qa()I

    move-result v13

    .line 789
    move v14, v12

    .line 790
    const/4 v15, 0x0

    .line 791
    const/16 v16, 0x1

    .line 792
    :cond_0
    :goto_0
    if-lez v13, :cond_2

    .line 794
    iget-object v0, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v0, v0, v13

    move/from16 v1, p1

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/math/ntru/util/Util;->וֹ(II)I

    move-result v15

    .line 795
    iget-object v0, v8, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v0, v0, v12

    mul-int/2addr v0, v15

    rem-int v15, v0, p1

    .line 796
    sub-int v0, v12, v13

    move/from16 v1, p1

    invoke-direct {v8, v9, v15, v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;III)V

    .line 797
    sub-int v0, v12, v13

    move/from16 v1, p1

    invoke-direct {v10, v11, v15, v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ˊ(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;III)V

    .line 799
    invoke-virtual {v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->qa()I

    move-result v12

    .line 800
    if-ge v12, v13, :cond_0

    .line 802
    iget-object v0, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v0, v0, v13

    sub-int v1, v14, v12

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lorg/spongycastle/pqc/math/ntru/util/Util;->ˡ(III)I

    move-result v0

    mul-int v16, v16, v0

    .line 803
    rem-int v16, v16, p1

    .line 804
    rem-int/lit8 v0, v14, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    rem-int/lit8 v0, v13, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 806
    move/from16 v0, v16

    neg-int v0, v0

    rem-int v16, v0, p1

    .line 808
    :cond_1
    move-object/from16 v17, v8

    .line 809
    move-object v8, v9

    .line 810
    move-object/from16 v9, v17

    .line 811
    move/from16 v18, v12

    .line 812
    move v12, v13

    .line 813
    move-object/from16 v17, v10

    .line 814
    move-object v10, v11

    .line 815
    move-object/from16 v11, v17

    .line 816
    move v14, v13

    .line 817
    move/from16 v13, v18

    .line 818
    goto/16 :goto_0

    .line 820
    :cond_2
    iget-object v0, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    move/from16 v1, p1

    invoke-static {v0, v12, v1}, Lorg/spongycastle/pqc/math/ntru/util/Util;->ˡ(III)I

    move-result v0

    mul-int v16, v16, v0

    .line 821
    rem-int v16, v16, p1

    .line 822
    iget-object v0, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    move/from16 v1, p1

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/math/ntru/util/Util;->וֹ(II)I

    move-result v15

    .line 823
    invoke-virtual {v11, v15}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ᵚ(I)V

    .line 824
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->〳(I)V

    .line 825
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ᵚ(I)V

    .line 826
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->〳(I)V

    .line 829
    iget-object v0, v11, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    iget-object v1, v11, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, v11, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    .line 830
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;

    new-instance v1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    invoke-direct {v1, v11}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    move/from16 v2, v16

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    move/from16 v3, p1

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method ᵐ(I)V
    .locals 3

    .line 946
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 948
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v1, v0, v2

    sub-int/2addr v1, p1

    aput v1, v0, v2

    .line 946
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 950
    :cond_0
    return-void
.end method

.method public ᵚ(I)V
    .locals 3

    .line 959
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 961
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v1, v0, v2

    mul-int/2addr v1, p1

    aput v1, v0, v2

    .line 959
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 963
    :cond_0
    return-void
.end method

.method public ᵦ(I)V
    .locals 4

    .line 986
    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v0, v0

    if-ge v3, v0, :cond_0

    .line 988
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v1, v0, v3

    mul-int/lit8 v1, v1, 0x3

    aput v1, v0, v3

    .line 989
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v1, v0, v3

    rem-int/2addr v1, p1

    aput v1, v0, v3

    .line 986
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 991
    :cond_0
    return-void
.end method

.method public ẋ(I)V
    .locals 0

    .line 1034
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->〳(I)V

    .line 1035
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->〵(I)V

    .line 1036
    return-void
.end method

.method ẍ(I)V
    .locals 3

    .line 1043
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->〳(I)V

    .line 1044
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v0, v0

    if-ge v2, v0, :cond_2

    .line 1046
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v0, v0, v2

    div-int/lit8 v1, p1, 0x2

    if-ge v0, v1, :cond_0

    .line 1048
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v1, v0, v2

    add-int/2addr v1, p1

    aput v1, v0, v2

    goto :goto_1

    .line 1050
    :cond_0
    :goto_2
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v0, v0, v2

    div-int/lit8 v1, p1, 0x2

    if-lt v0, v1, :cond_1

    .line 1052
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v1, v0, v2

    sub-int/2addr v1, p1

    aput v1, v0, v2

    goto :goto_2

    .line 1044
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1055
    :cond_2
    return-void
.end method

.method public 〳(I)V
    .locals 3

    .line 1062
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 1064
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v1, v0, v2

    rem-int/2addr v1, p1

    aput v1, v0, v2

    .line 1062
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1066
    :cond_0
    return-void
.end method

.method public 〵(I)V
    .locals 3

    .line 1075
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 1077
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v0, v0, v2

    if-gez v0, :cond_0

    .line 1079
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v1, v0, v2

    add-int/2addr v1, p1

    aput v1, v0, v2

    goto :goto_1

    .line 1075
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1082
    :cond_1
    return-void
.end method

.method public ノ(I)J
    .locals 12

    .line 1092
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v4, v0

    .line 1093
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-object v5, v0

    .line 1094
    invoke-virtual {v5, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->亅(I)V

    .line 1096
    const-wide/16 v6, 0x0

    .line 1097
    const-wide/16 v8, 0x0

    .line 1098
    const/4 v10, 0x0

    :goto_0
    iget-object v0, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v0, v0

    if-eq v10, v0, :cond_0

    .line 1100
    iget-object v0, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v11, v0, v10

    .line 1101
    int-to-long v0, v11

    add-long/2addr v6, v0

    .line 1102
    mul-int v0, v11, v11

    int-to-long v0, v0

    add-long/2addr v8, v0

    .line 1098
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1105
    :cond_0
    mul-long v0, v6, v6

    int-to-long v2, v4

    div-long/2addr v0, v2

    sub-long v10, v8, v0

    .line 1106
    return-wide v10
.end method

.method 亅(I)V
    .locals 9

    .line 1116
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ẍ(I)V

    .line 1118
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->י([I)[I

    move-result-object v2

    .line 1120
    invoke-direct {p0, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sort([I)V

    .line 1122
    const/4 v3, 0x0

    .line 1123
    const/4 v4, 0x0

    .line 1124
    const/4 v5, 0x0

    :goto_0
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    if-ge v5, v0, :cond_1

    .line 1126
    add-int/lit8 v0, v5, 0x1

    aget v0, v2, v0

    aget v1, v2, v5

    sub-int v6, v0, v1

    .line 1127
    if-le v6, v3, :cond_0

    .line 1129
    move v3, v6

    .line 1130
    aget v4, v2, v5

    .line 1124
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1134
    :cond_1
    const/4 v0, 0x0

    aget v5, v2, v0

    .line 1135
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    aget v6, v2, v0

    .line 1137
    sub-int v0, p1, v6

    add-int v7, v0, v5

    .line 1139
    if-le v7, v3, :cond_2

    .line 1141
    add-int v0, v6, v5

    div-int/lit8 v8, v0, 0x2

    goto :goto_1

    .line 1145
    :cond_2
    div-int/lit8 v0, v3, 0x2

    add-int/2addr v0, v4

    div-int/lit8 v1, p1, 0x2

    add-int v8, v0, v1

    .line 1148
    :goto_1
    invoke-virtual {p0, v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ᵐ(I)V

    .line 1149
    return-void
.end method

.method public 亠(I)V
    .locals 4

    .line 1178
    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v0, v0

    if-ge v3, v0, :cond_2

    .line 1180
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v0, v0, v3

    neg-int v1, p1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 1182
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v1, v0, v3

    add-int/2addr v1, p1

    aput v1, v0, v3

    goto :goto_1

    .line 1184
    :cond_0
    :goto_2
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v0, v0, v3

    div-int/lit8 v1, p1, 0x2

    if-le v0, v1, :cond_1

    .line 1186
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v1, v0, v3

    sub-int/2addr v1, p1

    aput v1, v0, v3

    goto :goto_2

    .line 1178
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1189
    :cond_2
    return-void
.end method

.method public 冫(I)I
    .locals 3

    .line 1265
    const/4 v1, 0x0

    .line 1266
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    array-length v0, v0

    if-eq v2, v0, :cond_1

    .line 1268
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->bjG:[I

    aget v0, v0, v2

    if-ne v0, p1, :cond_0

    .line 1270
    add-int/lit8 v1, v1, 0x1

    .line 1266
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1273
    :cond_1
    return v1
.end method
