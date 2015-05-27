.class public final Lorg/spongycastle/crypto/digests/WhirlpoolDigest;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/ExtendedDigest;
.implements Lorg/spongycastle/util/Memoable;


# static fields
.field private static final aHQ:[I

.field private static final aHR:[J

.field private static final aHS:[J

.field private static final aHT:[J

.field private static final aHU:[J

.field private static final aHV:[J

.field private static final aHW:[J

.field private static final aHX:[J

.field private static final aHY:[J

.field private static final aIi:[S


# instance fields
.field private final aHZ:[J

.field private aIa:[B

.field private aIb:I

.field private aIc:[S

.field private aId:[J

.field private aIe:[J

.field private aIf:[J

.field private aIg:[J

.field private aIh:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHQ:[I

    .line 41
    const/16 v0, 0x100

    new-array v0, v0, [J

    sput-object v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHR:[J

    .line 42
    const/16 v0, 0x100

    new-array v0, v0, [J

    sput-object v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHS:[J

    .line 43
    const/16 v0, 0x100

    new-array v0, v0, [J

    sput-object v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHT:[J

    .line 44
    const/16 v0, 0x100

    new-array v0, v0, [J

    sput-object v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHU:[J

    .line 45
    const/16 v0, 0x100

    new-array v0, v0, [J

    sput-object v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHV:[J

    .line 46
    const/16 v0, 0x100

    new-array v0, v0, [J

    sput-object v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHW:[J

    .line 47
    const/16 v0, 0x100

    new-array v0, v0, [J

    sput-object v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHX:[J

    .line 48
    const/16 v0, 0x100

    new-array v0, v0, [J

    sput-object v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHY:[J

    .line 300
    const/16 v0, 0x20

    new-array v0, v0, [S

    sput-object v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIi:[S

    .line 303
    sget-object v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIi:[S

    const/16 v1, 0x8

    const/16 v2, 0x1f

    aput-short v1, v0, v2

    .line 304
    return-void

    :array_0
    .array-data 4
        0x18
        0x23
        0xc6
        0xe8
        0x87
        0xb8
        0x1
        0x4f
        0x36
        0xa6
        0xd2
        0xf5
        0x79
        0x6f
        0x91
        0x52
        0x60
        0xbc
        0x9b
        0x8e
        0xa3
        0xc
        0x7b
        0x35
        0x1d
        0xe0
        0xd7
        0xc2
        0x2e
        0x4b
        0xfe
        0x57
        0x15
        0x77
        0x37
        0xe5
        0x9f
        0xf0
        0x4a
        0xda
        0x58
        0xc9
        0x29
        0xa
        0xb1
        0xa0
        0x6b
        0x85
        0xbd
        0x5d
        0x10
        0xf4
        0xcb
        0x3e
        0x5
        0x67
        0xe4
        0x27
        0x41
        0x8b
        0xa7
        0x7d
        0x95
        0xd8
        0xfb
        0xee
        0x7c
        0x66
        0xdd
        0x17
        0x47
        0x9e
        0xca
        0x2d
        0xbf
        0x7
        0xad
        0x5a
        0x83
        0x33
        0x63
        0x2
        0xaa
        0x71
        0xc8
        0x19
        0x49
        0xd9
        0xf2
        0xe3
        0x5b
        0x88
        0x9a
        0x26
        0x32
        0xb0
        0xe9
        0xf
        0xd5
        0x80
        0xbe
        0xcd
        0x34
        0x48
        0xff
        0x7a
        0x90
        0x5f
        0x20
        0x68
        0x1a
        0xae
        0xb4
        0x54
        0x93
        0x22
        0x64
        0xf1
        0x73
        0x12
        0x40
        0x8
        0xc3
        0xec
        0xdb
        0xa1
        0x8d
        0x3d
        0x97
        0x0
        0xcf
        0x2b
        0x76
        0x82
        0xd6
        0x1b
        0xb5
        0xaf
        0x6a
        0x50
        0x45
        0xf3
        0x30
        0xef
        0x3f
        0x55
        0xa2
        0xea
        0x65
        0xba
        0x2f
        0xc0
        0xde
        0x1c
        0xfd
        0x4d
        0x92
        0x75
        0x6
        0x8a
        0xb2
        0xe6
        0xe
        0x1f
        0x62
        0xd4
        0xa8
        0x96
        0xf9
        0xc5
        0x25
        0x59
        0x84
        0x72
        0x39
        0x4c
        0x5e
        0x78
        0x38
        0x8c
        0xd1
        0xa5
        0xe2
        0x61
        0xb3
        0x21
        0x9c
        0x1e
        0x43
        0xc7
        0xfc
        0x4
        0x51
        0x99
        0x6d
        0xd
        0xfa
        0xdf
        0x7e
        0x24
        0x3b
        0xab
        0xce
        0x11
        0x8f
        0x4e
        0xb7
        0xeb
        0x3c
        0x81
        0x94
        0xf7
        0xb9
        0x13
        0x2c
        0xd3
        0xe7
        0x6e
        0xc4
        0x3
        0x56
        0x44
        0x7f
        0xa9
        0x2a
        0xbb
        0xc1
        0x53
        0xdc
        0xb
        0x9d
        0x6c
        0x31
        0x74
        0xf6
        0x46
        0xac
        0x89
        0x14
        0xe1
        0x16
        0x3a
        0x69
        0x9
        0x70
        0xb6
        0xd0
        0xed
        0xcc
        0x42
        0x98
        0xa4
        0x28
        0x5c
        0xf8
        0x86
    .end array-data
.end method

.method public constructor <init>()V
    .locals 17

    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0xb

    new-array v0, v0, [J

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHZ:[J

    .line 121
    const/16 v0, 0x40

    new-array v0, v0, [B

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIa:[B

    .line 122
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIb:I

    .line 123
    const/16 v0, 0x20

    new-array v0, v0, [S

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIc:[S

    .line 126
    const/16 v0, 0x8

    new-array v0, v0, [J

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aId:[J

    .line 127
    const/16 v0, 0x8

    new-array v0, v0, [J

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIe:[J

    .line 128
    const/16 v0, 0x8

    new-array v0, v0, [J

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIf:[J

    .line 129
    const/16 v0, 0x8

    new-array v0, v0, [J

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIg:[J

    .line 130
    const/16 v0, 0x8

    new-array v0, v0, [J

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIh:[J

    .line 54
    const/4 v10, 0x0

    :goto_0
    const/16 v0, 0x100

    if-ge v10, v0, :cond_0

    .line 56
    sget-object v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHQ:[I

    aget v11, v0, v10

    .line 57
    shl-int/lit8 v0, v11, 0x1

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->ᴐ(I)I

    move-result v12

    .line 58
    shl-int/lit8 v0, v12, 0x1

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->ᴐ(I)I

    move-result v13

    .line 59
    xor-int v14, v13, v11

    .line 60
    shl-int/lit8 v0, v13, 0x1

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->ᴐ(I)I

    move-result v15

    .line 61
    xor-int v16, v15, v11

    .line 63
    sget-object v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHR:[J

    move-object/from16 v1, p0

    move v2, v11

    move v3, v11

    move v4, v13

    move v5, v11

    move v6, v15

    move v7, v14

    move v8, v12

    move/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->ˊ(IIIIIIII)J

    move-result-wide v1

    aput-wide v1, v0, v10

    .line 64
    sget-object v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHS:[J

    move-object/from16 v1, p0

    move/from16 v2, v16

    move v3, v11

    move v4, v11

    move v5, v13

    move v6, v11

    move v7, v15

    move v8, v14

    move v9, v12

    invoke-direct/range {v1 .. v9}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->ˊ(IIIIIIII)J

    move-result-wide v1

    aput-wide v1, v0, v10

    .line 65
    sget-object v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHT:[J

    move-object/from16 v1, p0

    move v2, v12

    move/from16 v3, v16

    move v4, v11

    move v5, v11

    move v6, v13

    move v7, v11

    move v8, v15

    move v9, v14

    invoke-direct/range {v1 .. v9}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->ˊ(IIIIIIII)J

    move-result-wide v1

    aput-wide v1, v0, v10

    .line 66
    sget-object v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHU:[J

    move-object/from16 v1, p0

    move v2, v14

    move v3, v12

    move/from16 v4, v16

    move v5, v11

    move v6, v11

    move v7, v13

    move v8, v11

    move v9, v15

    invoke-direct/range {v1 .. v9}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->ˊ(IIIIIIII)J

    move-result-wide v1

    aput-wide v1, v0, v10

    .line 67
    sget-object v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHV:[J

    move-object/from16 v1, p0

    move v2, v15

    move v3, v14

    move v4, v12

    move/from16 v5, v16

    move v6, v11

    move v7, v11

    move v8, v13

    move v9, v11

    invoke-direct/range {v1 .. v9}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->ˊ(IIIIIIII)J

    move-result-wide v1

    aput-wide v1, v0, v10

    .line 68
    sget-object v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHW:[J

    move-object/from16 v1, p0

    move v2, v11

    move v3, v15

    move v4, v14

    move v5, v12

    move/from16 v6, v16

    move v7, v11

    move v8, v11

    move v9, v13

    invoke-direct/range {v1 .. v9}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->ˊ(IIIIIIII)J

    move-result-wide v1

    aput-wide v1, v0, v10

    .line 69
    sget-object v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHX:[J

    move-object/from16 v1, p0

    move v2, v13

    move v3, v11

    move v4, v15

    move v5, v14

    move v6, v12

    move/from16 v7, v16

    move v8, v11

    move v9, v11

    invoke-direct/range {v1 .. v9}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->ˊ(IIIIIIII)J

    move-result-wide v1

    aput-wide v1, v0, v10

    .line 70
    sget-object v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHY:[J

    move-object/from16 v1, p0

    move v2, v11

    move v3, v13

    move v4, v11

    move v5, v15

    move v6, v14

    move v7, v12

    move/from16 v8, v16

    move v9, v11

    invoke-direct/range {v1 .. v9}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->ˊ(IIIIIIII)J

    move-result-wide v1

    aput-wide v1, v0, v10

    .line 54
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 74
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHZ:[J

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 75
    const/4 v10, 0x1

    :goto_1
    const/16 v0, 0xa

    if-gt v10, v0, :cond_1

    .line 77
    add-int/lit8 v0, v10, -0x1

    mul-int/lit8 v11, v0, 0x8

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHZ:[J

    sget-object v1, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHR:[J

    aget-wide v1, v1, v11

    const-wide/high16 v3, -0x100000000000000L

    and-long/2addr v1, v3

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHS:[J

    add-int/lit8 v4, v11, 0x1

    aget-wide v3, v3, v4

    const-wide/high16 v5, 0xff000000000000L

    and-long/2addr v3, v5

    xor-long/2addr v1, v3

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHT:[J

    add-int/lit8 v4, v11, 0x2

    aget-wide v3, v3, v4

    const-wide v5, 0xff0000000000L

    and-long/2addr v3, v5

    xor-long/2addr v1, v3

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHU:[J

    add-int/lit8 v4, v11, 0x3

    aget-wide v3, v3, v4

    const-wide v5, 0xff00000000L

    and-long/2addr v3, v5

    xor-long/2addr v1, v3

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHV:[J

    add-int/lit8 v4, v11, 0x4

    aget-wide v3, v3, v4

    const-wide v5, 0xff000000L

    and-long/2addr v3, v5

    xor-long/2addr v1, v3

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHW:[J

    add-int/lit8 v4, v11, 0x5

    aget-wide v3, v3, v4

    const-wide/32 v5, 0xff0000

    and-long/2addr v3, v5

    xor-long/2addr v1, v3

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHX:[J

    add-int/lit8 v4, v11, 0x6

    aget-wide v3, v3, v4

    const-wide/32 v5, 0xff00

    and-long/2addr v3, v5

    xor-long/2addr v1, v3

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHY:[J

    add-int/lit8 v4, v11, 0x7

    aget-wide v3, v3, v4

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    xor-long/2addr v1, v3

    aput-wide v1, v0, v10

    .line 75
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 88
    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/WhirlpoolDigest;)V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0xb

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHZ:[J

    .line 121
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIa:[B

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIb:I

    .line 123
    const/16 v0, 0x20

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIc:[S

    .line 126
    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aId:[J

    .line 127
    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIe:[J

    .line 128
    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIf:[J

    .line 129
    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIg:[J

    .line 130
    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIh:[J

    .line 140
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->ˊ(Lorg/spongycastle/util/Memoable;)V

    .line 141
    return-void
.end method

.method private finish()V
    .locals 5

    .line 336
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->jj()[B

    move-result-object v4

    .line 338
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIa:[B

    iget v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIb:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIb:I

    aget-byte v2, v0, v1

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 340
    iget v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIb:I

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIa:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 342
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIa:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->ʾ([BI)V

    .line 351
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIb:I

    const/16 v1, 0x20

    if-le v0, v1, :cond_1

    .line 353
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIb:I

    if-eqz v0, :cond_1

    .line 355
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->update(B)V

    goto :goto_0

    .line 359
    :cond_1
    :goto_1
    iget v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIb:I

    const/16 v1, 0x20

    if-gt v0, v1, :cond_2

    .line 361
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->update(B)V

    goto :goto_1

    .line 366
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIa:[B

    array-length v1, v4

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-static {v4, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIa:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->ʾ([BI)V

    .line 369
    return-void
.end method

.method private ji()V
    .locals 5

    .line 308
    const/4 v2, 0x0

    .line 309
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIc:[S

    array-length v0, v0

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_0

    .line 311
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIc:[S

    aget-short v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    sget-object v1, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIi:[S

    aget-short v1, v1, v3

    add-int/2addr v0, v1

    add-int v4, v0, v2

    .line 313
    ushr-int/lit8 v2, v4, 0x8

    .line 314
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIc:[S

    and-int/lit16 v1, v4, 0xff

    int-to-short v1, v1

    aput-short v1, v0, v3

    .line 309
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 316
    :cond_0
    return-void
.end method

.method private jj()[B
    .locals 4

    .line 373
    const/16 v0, 0x20

    new-array v2, v0, [B

    .line 374
    const/4 v3, 0x0

    :goto_0
    array-length v0, v2

    if-ge v3, v0, :cond_0

    .line 376
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIc:[S

    aget-short v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 374
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 378
    :cond_0
    return-object v2
.end method

.method private ʾ([BI)V
    .locals 4

    .line 187
    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIh:[J

    array-length v0, v0

    if-ge v3, v0, :cond_0

    .line 189
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIg:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIa:[B

    mul-int/lit8 v2, v3, 0x8

    invoke-direct {p0, v1, v2}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->ʿ([BI)J

    move-result-wide v1

    aput-wide v1, v0, v3

    .line 187
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->iV()V

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIb:I

    .line 193
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIa:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 194
    return-void
.end method

.method private ʿ([BI)J
    .locals 8

    .line 198
    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    or-long v6, v0, v2

    .line 207
    return-wide v6
.end method

.method private ˊ(IIIIIIII)J
    .locals 5

    .line 92
    int-to-long v0, p1

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    int-to-long v2, p2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p3

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p5

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p7

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p8

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private ˎ(J[BI)V
    .locals 6

    .line 212
    const/4 v5, 0x0

    :goto_0
    const/16 v0, 0x8

    if-ge v5, v0, :cond_0

    .line 214
    add-int v0, p4, v5

    mul-int/lit8 v1, v5, 0x8

    rsub-int/lit8 v1, v1, 0x38

    shr-long v1, p1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 212
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 216
    :cond_0
    return-void
.end method

.method private ᴐ(I)I
    .locals 5

    .line 109
    move v4, p1

    .line 110
    int-to-long v0, v4

    const-wide/16 v2, 0x100

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 112
    xor-int/lit16 v4, v4, 0x11d

    .line 114
    :cond_0
    return v4
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 4

    .line 156
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->finish()V

    .line 158
    const/4 v3, 0x0

    :goto_0
    const/16 v0, 0x8

    if-ge v3, v0, :cond_0

    .line 160
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aId:[J

    aget-wide v0, v0, v3

    mul-int/lit8 v2, v3, 0x8

    add-int/2addr v2, p2

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->ˎ(J[BI)V

    .line 158
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->reset()V

    .line 164
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->iJ()I

    move-result v0

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 1

    .line 145
    const-string v0, "Whirlpool"

    return-object v0
.end method

.method public iJ()I
    .locals 1

    .line 150
    const/16 v0, 0x40

    return v0
.end method

.method public iM()I
    .locals 1

    .line 383
    const/16 v0, 0x40

    return v0
.end method

.method public iU()Lorg/spongycastle/util/Memoable;
    .locals 1

    .line 388
    new-instance v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;-><init>(Lorg/spongycastle/crypto/digests/WhirlpoolDigest;)V

    return-object v0
.end method

.method protected iV()V
    .locals 9

    .line 224
    const/4 v7, 0x0

    :goto_0
    const/16 v0, 0x8

    if-ge v7, v0, :cond_0

    .line 226
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIh:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIg:[J

    aget-wide v1, v1, v7

    iget-object v5, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIe:[J

    iget-object v3, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aId:[J

    aget-wide v3, v3, v7

    aput-wide v3, v5, v7

    xor-long/2addr v1, v3

    aput-wide v1, v0, v7

    .line 224
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 230
    :cond_0
    const/4 v7, 0x1

    :goto_1
    const/16 v0, 0xa

    if-gt v7, v0, :cond_3

    .line 232
    const/4 v8, 0x0

    :goto_2
    const/16 v0, 0x8

    if-ge v8, v0, :cond_1

    .line 234
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIf:[J

    const-wide/16 v1, 0x0

    aput-wide v1, v0, v8

    .line 235
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIf:[J

    aget-wide v1, v0, v8

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHR:[J

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIe:[J

    add-int/lit8 v5, v8, 0x0

    and-int/lit8 v5, v5, 0x7

    aget-wide v4, v4, v5

    const/16 v6, 0x38

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    aget-wide v3, v3, v4

    xor-long/2addr v1, v3

    aput-wide v1, v0, v8

    .line 236
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIf:[J

    aget-wide v1, v0, v8

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHS:[J

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIe:[J

    add-int/lit8 v5, v8, -0x1

    and-int/lit8 v5, v5, 0x7

    aget-wide v4, v4, v5

    const/16 v6, 0x30

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    aget-wide v3, v3, v4

    xor-long/2addr v1, v3

    aput-wide v1, v0, v8

    .line 237
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIf:[J

    aget-wide v1, v0, v8

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHT:[J

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIe:[J

    add-int/lit8 v5, v8, -0x2

    and-int/lit8 v5, v5, 0x7

    aget-wide v4, v4, v5

    const/16 v6, 0x28

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    aget-wide v3, v3, v4

    xor-long/2addr v1, v3

    aput-wide v1, v0, v8

    .line 238
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIf:[J

    aget-wide v1, v0, v8

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHU:[J

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIe:[J

    add-int/lit8 v5, v8, -0x3

    and-int/lit8 v5, v5, 0x7

    aget-wide v4, v4, v5

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    aget-wide v3, v3, v4

    xor-long/2addr v1, v3

    aput-wide v1, v0, v8

    .line 239
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIf:[J

    aget-wide v1, v0, v8

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHV:[J

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIe:[J

    add-int/lit8 v5, v8, -0x4

    and-int/lit8 v5, v5, 0x7

    aget-wide v4, v4, v5

    const/16 v6, 0x18

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    aget-wide v3, v3, v4

    xor-long/2addr v1, v3

    aput-wide v1, v0, v8

    .line 240
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIf:[J

    aget-wide v1, v0, v8

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHW:[J

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIe:[J

    add-int/lit8 v5, v8, -0x5

    and-int/lit8 v5, v5, 0x7

    aget-wide v4, v4, v5

    const/16 v6, 0x10

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    aget-wide v3, v3, v4

    xor-long/2addr v1, v3

    aput-wide v1, v0, v8

    .line 241
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIf:[J

    aget-wide v1, v0, v8

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHX:[J

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIe:[J

    add-int/lit8 v5, v8, -0x6

    and-int/lit8 v5, v5, 0x7

    aget-wide v4, v4, v5

    const/16 v6, 0x8

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    aget-wide v3, v3, v4

    xor-long/2addr v1, v3

    aput-wide v1, v0, v8

    .line 242
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIf:[J

    aget-wide v1, v0, v8

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHY:[J

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIe:[J

    add-int/lit8 v5, v8, -0x7

    and-int/lit8 v5, v5, 0x7

    aget-wide v4, v4, v5

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    aget-wide v3, v3, v4

    xor-long/2addr v1, v3

    aput-wide v1, v0, v8

    .line 232
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 245
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIf:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIe:[J

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIe:[J

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIe:[J

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    iget-object v3, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHZ:[J

    aget-wide v3, v3, v7

    xor-long/2addr v1, v3

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 250
    const/4 v8, 0x0

    :goto_3
    const/16 v0, 0x8

    if-ge v8, v0, :cond_2

    .line 252
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIf:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIe:[J

    aget-wide v1, v1, v8

    aput-wide v1, v0, v8

    .line 254
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIf:[J

    aget-wide v1, v0, v8

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHR:[J

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIh:[J

    add-int/lit8 v5, v8, 0x0

    and-int/lit8 v5, v5, 0x7

    aget-wide v4, v4, v5

    const/16 v6, 0x38

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    aget-wide v3, v3, v4

    xor-long/2addr v1, v3

    aput-wide v1, v0, v8

    .line 255
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIf:[J

    aget-wide v1, v0, v8

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHS:[J

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIh:[J

    add-int/lit8 v5, v8, -0x1

    and-int/lit8 v5, v5, 0x7

    aget-wide v4, v4, v5

    const/16 v6, 0x30

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    aget-wide v3, v3, v4

    xor-long/2addr v1, v3

    aput-wide v1, v0, v8

    .line 256
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIf:[J

    aget-wide v1, v0, v8

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHT:[J

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIh:[J

    add-int/lit8 v5, v8, -0x2

    and-int/lit8 v5, v5, 0x7

    aget-wide v4, v4, v5

    const/16 v6, 0x28

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    aget-wide v3, v3, v4

    xor-long/2addr v1, v3

    aput-wide v1, v0, v8

    .line 257
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIf:[J

    aget-wide v1, v0, v8

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHU:[J

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIh:[J

    add-int/lit8 v5, v8, -0x3

    and-int/lit8 v5, v5, 0x7

    aget-wide v4, v4, v5

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    aget-wide v3, v3, v4

    xor-long/2addr v1, v3

    aput-wide v1, v0, v8

    .line 258
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIf:[J

    aget-wide v1, v0, v8

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHV:[J

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIh:[J

    add-int/lit8 v5, v8, -0x4

    and-int/lit8 v5, v5, 0x7

    aget-wide v4, v4, v5

    const/16 v6, 0x18

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    aget-wide v3, v3, v4

    xor-long/2addr v1, v3

    aput-wide v1, v0, v8

    .line 259
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIf:[J

    aget-wide v1, v0, v8

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHW:[J

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIh:[J

    add-int/lit8 v5, v8, -0x5

    and-int/lit8 v5, v5, 0x7

    aget-wide v4, v4, v5

    const/16 v6, 0x10

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    aget-wide v3, v3, v4

    xor-long/2addr v1, v3

    aput-wide v1, v0, v8

    .line 260
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIf:[J

    aget-wide v1, v0, v8

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHX:[J

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIh:[J

    add-int/lit8 v5, v8, -0x6

    and-int/lit8 v5, v5, 0x7

    aget-wide v4, v4, v5

    const/16 v6, 0x8

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    aget-wide v3, v3, v4

    xor-long/2addr v1, v3

    aput-wide v1, v0, v8

    .line 261
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIf:[J

    aget-wide v1, v0, v8

    sget-object v3, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHY:[J

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIh:[J

    add-int/lit8 v5, v8, -0x7

    and-int/lit8 v5, v5, 0x7

    aget-wide v4, v4, v5

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    aget-wide v3, v3, v4

    xor-long/2addr v1, v3

    aput-wide v1, v0, v8

    .line 250
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 265
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIf:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIh:[J

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIh:[J

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 269
    :cond_3
    const/4 v7, 0x0

    :goto_4
    const/16 v0, 0x8

    if-ge v7, v0, :cond_4

    .line 271
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aId:[J

    aget-wide v1, v0, v7

    iget-object v3, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIh:[J

    aget-wide v3, v3, v7

    iget-object v5, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIg:[J

    aget-wide v5, v5, v7

    xor-long/2addr v3, v5

    xor-long/2addr v1, v3

    aput-wide v1, v0, v7

    .line 269
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 274
    :cond_4
    return-void
.end method

.method public reset()V
    .locals 3

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIb:I

    .line 174
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIc:[S

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([SS)V

    .line 175
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIa:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 176
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aId:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/spongycastle/util/Arrays;->fill([JJ)V

    .line 177
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIe:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/spongycastle/util/Arrays;->fill([JJ)V

    .line 178
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIf:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/spongycastle/util/Arrays;->fill([JJ)V

    .line 179
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIg:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/spongycastle/util/Arrays;->fill([JJ)V

    .line 180
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIh:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/spongycastle/util/Arrays;->fill([JJ)V

    .line 181
    return-void
.end method

.method public update(B)V
    .locals 2

    .line 278
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIa:[B

    iget v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIb:I

    aput-byte p1, v0, v1

    .line 282
    iget v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIb:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIb:I

    .line 284
    iget v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIb:I

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIa:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 286
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIa:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->ʾ([BI)V

    .line 289
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->ji()V

    .line 290
    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 320
    :goto_0
    if-lez p3, :cond_0

    .line 322
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->update(B)V

    .line 323
    add-int/lit8 p2, p2, 0x1

    .line 324
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 327
    :cond_0
    return-void
.end method

.method public ˊ(Lorg/spongycastle/util/Memoable;)V
    .locals 6

    .line 393
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;

    move-object v5, v0

    .line 395
    iget-object v0, v5, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHZ:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHZ:[J

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aHZ:[J

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    iget-object v0, v5, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIa:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIa:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIa:[B

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    iget v0, v5, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIb:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIb:I

    .line 400
    iget-object v0, v5, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIc:[S

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIc:[S

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIc:[S

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 403
    iget-object v0, v5, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aId:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aId:[J

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aId:[J

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    iget-object v0, v5, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIe:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIe:[J

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIe:[J

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    iget-object v0, v5, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIf:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIf:[J

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIf:[J

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 406
    iget-object v0, v5, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIg:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIg:[J

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIg:[J

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    iget-object v0, v5, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIh:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIh:[J

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/WhirlpoolDigest;->aIh:[J

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 408
    return-void
.end method
