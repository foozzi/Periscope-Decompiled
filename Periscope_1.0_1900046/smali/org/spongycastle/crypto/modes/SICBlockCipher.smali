.class public Lorg/spongycastle/crypto/modes/SICBlockCipher;
.super Lorg/spongycastle/crypto/StreamBlockCipher;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/SkippingStreamCipher;


# instance fields
.field private final aEX:Lorg/spongycastle/crypto/BlockCipher;

.field private aKF:[B

.field private aOL:I

.field private aOZ:[B

.field private aPE:[B

.field private final fU:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/StreamBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    .line 36
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    .line 37
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->fU:I

    .line 38
    iget v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->fU:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aKF:[B

    .line 39
    iget v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->fU:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aOZ:[B

    .line 40
    iget v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->fU:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aPE:[B

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aOL:I

    .line 42
    return-void
.end method

.method private kk()V
    .locals 4

    .line 112
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aOZ:[B

    array-length v0, v0

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_0

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aOZ:[B

    aget-byte v0, v1, v3

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    if-nez v0, :cond_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method

.method private kl()V
    .locals 5

    .line 120
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aOZ:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-nez v0, :cond_2

    .line 122
    const/4 v3, 0x0

    .line 124
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aOZ:[B

    array-length v0, v0

    add-int/lit8 v4, v0, -0x1

    :goto_0
    if-lez v4, :cond_1

    .line 126
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aOZ:[B

    aget-byte v0, v0, v4

    if-eqz v0, :cond_0

    .line 128
    const/4 v3, 0x1

    .line 124
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 132
    :cond_1
    if-nez v3, :cond_2

    .line 134
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to reduce counter past zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aOZ:[B

    array-length v0, v0

    add-int/lit8 v3, v0, -0x1

    :goto_1
    if-ltz v3, :cond_3

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aOZ:[B

    aget-byte v0, v1, v3

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 143
    :cond_3
    return-void
.end method

.method private ᵛ(J)V
    .locals 8

    .line 147
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 149
    iget v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aOL:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget v2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->fU:I

    int-to-long v2, v2

    div-long v4, v0, v2

    .line 151
    const-wide/16 v6, 0x0

    :goto_0
    cmp-long v0, v6, v4

    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->kk()V

    .line 151
    const-wide/16 v0, 0x1

    add-long/2addr v6, v0

    goto :goto_0

    .line 156
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aOL:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget v2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->fU:I

    int-to-long v2, v2

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aOL:I

    .line 157
    goto :goto_2

    .line 160
    :cond_1
    neg-long v0, p1

    iget v2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aOL:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iget v2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->fU:I

    int-to-long v2, v2

    div-long v4, v0, v2

    .line 162
    const-wide/16 v6, 0x0

    :goto_1
    cmp-long v0, v6, v4

    if-eqz v0, :cond_2

    .line 164
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->kl()V

    .line 162
    const-wide/16 v0, 0x1

    add-long/2addr v6, v0

    goto :goto_1

    .line 167
    :cond_2
    iget v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aOL:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget v2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->fU:I

    int-to-long v2, v2

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v6, v0

    .line 169
    if-ltz v6, :cond_3

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aOL:I

    goto :goto_2

    .line 175
    :cond_3
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->kl()V

    .line 176
    iget v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->fU:I

    add-int/2addr v0, v6

    iput v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aOL:I

    .line 179
    :goto_2
    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getPosition()J
    .locals 7

    .line 206
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aKF:[B

    array-length v0, v0

    new-array v4, v0, [B

    .line 208
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aOZ:[B

    array-length v1, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    array-length v0, v4

    add-int/lit8 v5, v0, -0x1

    :goto_0
    const/4 v0, 0x1

    if-lt v5, v0, :cond_1

    .line 212
    aget-byte v0, v4, v5

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aKF:[B

    aget-byte v1, v1, v5

    sub-int v6, v0, v1

    .line 214
    if-gez v6, :cond_0

    .line 216
    add-int/lit8 v0, v5, -0x1

    aget-byte v1, v4, v0

    add-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    .line 217
    add-int/lit16 v6, v6, 0x100

    .line 220
    :cond_0
    int-to-byte v0, v6

    aput-byte v0, v4, v5

    .line 210
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 223
    :cond_1
    array-length v0, v4

    add-int/lit8 v0, v0, -0x8

    invoke-static {v4, v0}, Lorg/spongycastle/util/Pack;->יּ([BI)J

    move-result-wide v0

    iget v2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->fU:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aOL:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public iG()Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/SIC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 5

    .line 183
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aKF:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aOZ:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aOZ:[B

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aOL:I

    .line 186
    return-void
.end method

.method public skip(J)J
    .locals 5

    .line 190
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->ᵛ(J)V

    .line 192
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aOZ:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aPE:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 194
    return-wide p1
.end method

.method public ˊ([BI[BI)I
    .locals 6

    .line 82
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    iget v3, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->fU:I

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->ˋ([BII[BI)I

    .line 84
    iget v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->fU:I

    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 6

    .line 49
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_1

    .line 51
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object v4, v0

    .line 52
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v5

    .line 53
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aKF:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aKF:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v5, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->reset()V

    .line 62
    goto :goto_0

    .line 65
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SIC mode requires ParametersWithIV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :goto_0
    return-void
.end method

.method protected ͺ(B)B
    .locals 6

    .line 90
    iget v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aOL:I

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aOZ:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aPE:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 94
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aPE:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aOL:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aOL:I

    aget-byte v0, v0, v1

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    return v0

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aPE:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aOL:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aOL:I

    aget-byte v0, v0, v1

    xor-int/2addr v0, p1

    int-to-byte v5, v0

    .line 99
    iget v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aOL:I

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aOZ:[B

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->aOL:I

    .line 103
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->kk()V

    .line 106
    :cond_1
    return v5
.end method

.method public ו(J)J
    .locals 2

    .line 199
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->reset()V

    .line 201
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
