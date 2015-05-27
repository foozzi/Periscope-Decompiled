.class public Lorg/spongycastle/crypto/engines/RC564Engine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# instance fields
.field private aEW:Z

.field private aLb:I

.field private aLd:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/16 v0, 0xc

    iput v0, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->aLb:I

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->aLd:[J

    .line 54
    return-void
.end method

.method private ʾ(JJ)J
    .locals 6

    .line 260
    const-wide/16 v0, 0x3f

    and-long/2addr v0, p3

    long-to-int v0, v0

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x3f

    and-long/2addr v2, p3

    const-wide/16 v4, 0x40

    sub-long v2, v4, v2

    long-to-int v2, v2

    shl-long v2, p1, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private ˇ([B)V
    .locals 16

    .line 126
    move-object/from16 v0, p1

    array-length v0, v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v7, v0, [J

    .line 128
    const/4 v8, 0x0

    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    if-eq v8, v0, :cond_0

    .line 130
    div-int/lit8 v0, v8, 0x8

    aget-wide v1, v7, v0

    aget-byte v3, p1, v8

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    rem-int/lit8 v5, v8, 0x8

    mul-int/lit8 v5, v5, 0x8

    shl-long/2addr v3, v5

    add-long/2addr v1, v3

    aput-wide v1, v7, v0

    .line 128
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 139
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/engines/RC564Engine;->aLb:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/engines/RC564Engine;->aLd:[J

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RC564Engine;->aLd:[J

    const-wide v1, -0x481eae9d7512d595L    # -1.590398847350152E-39

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 142
    const/4 v8, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RC564Engine;->aLd:[J

    array-length v0, v0

    if-ge v8, v0, :cond_1

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RC564Engine;->aLd:[J

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/RC564Engine;->aLd:[J

    add-int/lit8 v2, v8, -0x1

    aget-wide v1, v1, v2

    const-wide v3, -0x61c8864680b583ebL

    add-long/2addr v1, v3

    aput-wide v1, v0, v8

    .line 142
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 154
    :cond_1
    array-length v0, v7

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/RC564Engine;->aLd:[J

    array-length v1, v1

    if-le v0, v1, :cond_2

    .line 156
    array-length v0, v7

    mul-int/lit8 v8, v0, 0x3

    goto :goto_2

    .line 160
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RC564Engine;->aLd:[J

    array-length v0, v0

    mul-int/lit8 v8, v0, 0x3

    .line 163
    :goto_2
    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    .line 164
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 166
    const/4 v15, 0x0

    :goto_3
    if-ge v15, v8, :cond_3

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/crypto/engines/RC564Engine;->aLd:[J

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RC564Engine;->aLd:[J

    aget-wide v0, v0, v13

    add-long/2addr v0, v9

    add-long/2addr v0, v11

    move-object/from16 v3, p0

    const-wide/16 v4, 0x3

    invoke-direct {v3, v0, v1, v4, v5}, Lorg/spongycastle/crypto/engines/RC564Engine;->ι(JJ)J

    move-result-wide v0

    aput-wide v0, v2, v13

    move-wide v9, v0

    .line 169
    aget-wide v0, v7, v14

    add-long/2addr v0, v9

    add-long/2addr v0, v11

    add-long v2, v9, v11

    move-object/from16 v4, p0

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/RC564Engine;->ι(JJ)J

    move-result-wide v0

    aput-wide v0, v7, v14

    move-wide v11, v0

    .line 170
    add-int/lit8 v0, v13, 0x1

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/crypto/engines/RC564Engine;->aLd:[J

    array-length v1, v1

    rem-int v13, v0, v1

    .line 171
    add-int/lit8 v0, v14, 0x1

    array-length v1, v7

    rem-int v14, v0, v1

    .line 166
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 173
    :cond_3
    return-void
.end method

.method private ˏ([BI[BI)I
    .locals 10

    .line 190
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/RC564Engine;->ﾞ([BI)J

    move-result-wide v0

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->aLd:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    add-long v5, v0, v2

    .line 191
    add-int/lit8 v0, p2, 0x8

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/RC564Engine;->ﾞ([BI)J

    move-result-wide v0

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->aLd:[J

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    add-long v7, v0, v2

    .line 193
    const/4 v9, 0x1

    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->aLb:I

    if-gt v9, v0, :cond_0

    .line 195
    xor-long v0, v5, v7

    invoke-direct {p0, v0, v1, v7, v8}, Lorg/spongycastle/crypto/engines/RC564Engine;->ι(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->aLd:[J

    mul-int/lit8 v3, v9, 0x2

    aget-wide v2, v2, v3

    add-long v5, v0, v2

    .line 196
    xor-long v0, v7, v5

    invoke-direct {p0, v0, v1, v5, v6}, Lorg/spongycastle/crypto/engines/RC564Engine;->ι(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->aLd:[J

    mul-int/lit8 v3, v9, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-wide v2, v2, v3

    add-long v7, v0, v2

    .line 193
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 199
    :cond_0
    invoke-direct {p0, v5, v6, p3, p4}, Lorg/spongycastle/crypto/engines/RC564Engine;->ˏ(J[BI)V

    .line 200
    add-int/lit8 v0, p4, 0x8

    invoke-direct {p0, v7, v8, p3, v0}, Lorg/spongycastle/crypto/engines/RC564Engine;->ˏ(J[BI)V

    .line 202
    const/16 v0, 0x10

    return v0
.end method

.method private ˏ(J[BI)V
    .locals 3

    .line 282
    const/4 v2, 0x0

    :goto_0
    const/16 v0, 0x8

    if-ge v2, v0, :cond_0

    .line 284
    add-int v0, v2, p4

    long-to-int v1, p1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 285
    const/16 v0, 0x8

    ushr-long/2addr p1, v0

    .line 282
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 287
    :cond_0
    return-void
.end method

.method private ᐝ([BI[BI)I
    .locals 8

    .line 211
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/RC564Engine;->ﾞ([BI)J

    move-result-wide v3

    .line 212
    add-int/lit8 v0, p2, 0x8

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/RC564Engine;->ﾞ([BI)J

    move-result-wide v5

    .line 214
    iget v7, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->aLb:I

    :goto_0
    const/4 v0, 0x1

    if-lt v7, v0, :cond_0

    .line 216
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->aLd:[J

    mul-int/lit8 v1, v7, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-wide v0, v0, v1

    sub-long v0, v5, v0

    invoke-direct {p0, v0, v1, v3, v4}, Lorg/spongycastle/crypto/engines/RC564Engine;->ʾ(JJ)J

    move-result-wide v0

    xor-long v5, v0, v3

    .line 217
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->aLd:[J

    mul-int/lit8 v1, v7, 0x2

    aget-wide v0, v0, v1

    sub-long v0, v3, v0

    invoke-direct {p0, v0, v1, v5, v6}, Lorg/spongycastle/crypto/engines/RC564Engine;->ʾ(JJ)J

    move-result-wide v0

    xor-long v3, v0, v5

    .line 214
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->aLd:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    sub-long v0, v3, v0

    invoke-direct {p0, v0, v1, p3, p4}, Lorg/spongycastle/crypto/engines/RC564Engine;->ˏ(J[BI)V

    .line 221
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->aLd:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    sub-long v0, v5, v0

    add-int/lit8 v2, p4, 0x8

    invoke-direct {p0, v0, v1, p3, v2}, Lorg/spongycastle/crypto/engines/RC564Engine;->ˏ(J[BI)V

    .line 223
    const/16 v0, 0x10

    return v0
.end method

.method private ι(JJ)J
    .locals 6

    .line 245
    const-wide/16 v0, 0x3f

    and-long/2addr v0, p3

    long-to-int v0, v0

    shl-long v0, p1, v0

    const-wide/16 v2, 0x3f

    and-long/2addr v2, p3

    const-wide/16 v4, 0x40

    sub-long v2, v4, v2

    long-to-int v2, v2

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private ﾞ([BI)J
    .locals 7

    .line 267
    const-wide/16 v4, 0x0

    .line 269
    const/4 v6, 0x7

    :goto_0
    if-ltz v6, :cond_0

    .line 271
    const/16 v0, 0x8

    shl-long v0, v4, v0

    add-int v2, v6, p2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long v4, v0, v2

    .line 269
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 274
    :cond_0
    return-wide v4
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 63
    const/16 v0, 0x10

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 1

    .line 58
    const-string v0, "RC5-64"

    return-object v0
.end method

.method public reset()V
    .locals 0

    .line 104
    return-void
.end method

.method public ˊ([BI[BI)I
    .locals 1

    .line 98
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->aEW:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/RC564Engine;->ˏ([BI[BI)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/RC564Engine;->ᐝ([BI[BI)I

    move-result v0

    :goto_0
    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 4

    .line 78
    instance-of v0, p2, Lorg/spongycastle/crypto/params/RC5Parameters;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to RC564 init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/RC5Parameters;

    move-object v3, v0

    .line 85
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->aEW:Z

    .line 87
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/RC5Parameters;->getRounds()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->aLb:I

    .line 89
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/RC5Parameters;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/RC564Engine;->ˇ([B)V

    .line 90
    return-void
.end method
