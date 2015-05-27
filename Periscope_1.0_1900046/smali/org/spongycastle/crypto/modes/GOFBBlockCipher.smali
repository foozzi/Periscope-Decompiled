.class public Lorg/spongycastle/crypto/modes/GOFBBlockCipher;
.super Lorg/spongycastle/crypto/StreamBlockCipher;
.source ""


# instance fields
.field private final aEX:Lorg/spongycastle/crypto/BlockCipher;

.field private aKF:[B

.field aNH:Z

.field private aOL:I

.field private aPf:[B

.field private aPg:[B

.field aPh:I

.field aPi:I

.field private final fU:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 2

    .line 39
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/StreamBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aNH:Z

    .line 41
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    .line 42
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->fU:I

    .line 44
    iget v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->fU:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GCTR only for 64 bit block ciphers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aKF:[B

    .line 50
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aPf:[B

    .line 51
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aPg:[B

    .line 52
    return-void
.end method

.method private ˏ(I[BI)V
    .locals 2

    .line 188
    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 189
    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 190
    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 191
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 192
    return-void
.end method

.method private ـ([BI)I
    .locals 3

    .line 178
    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 131
    iget v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->fU:I

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/GCTR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 5

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aNH:Z

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aPh:I

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aPi:I

    .line 168
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aKF:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aPf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aKF:[B

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aOL:I

    .line 170
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 171
    return-void
.end method

.method public ˊ([BI[BI)I
    .locals 6

    .line 154
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    iget v3, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->fU:I

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->ˋ([BII[BI)I

    .line 156
    iget v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->fU:I

    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 7

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aNH:Z

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aPh:I

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aPi:I

    .line 74
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_3

    .line 76
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object v4, v0

    .line 77
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v5

    .line 79
    array-length v0, v5

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aKF:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 82
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aKF:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aKF:[B

    array-length v1, v1

    array-length v2, v5

    sub-int/2addr v1, v2

    array-length v2, v5

    const/4 v3, 0x0

    invoke-static {v5, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    const/4 v6, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aKF:[B

    array-length v0, v0

    array-length v1, v5

    sub-int/2addr v0, v1

    if-ge v6, v0, :cond_0

    .line 85
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aKF:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v6

    .line 83
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 90
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aKF:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aKF:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v5, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    :goto_1
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->reset()V

    .line 96
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 100
    :cond_2
    goto :goto_2

    .line 103
    :cond_3
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->reset()V

    .line 106
    if-eqz p2, :cond_4

    .line 108
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 111
    :cond_4
    :goto_2
    return-void
.end method

.method protected ͺ(B)B
    .locals 6

    .line 196
    iget v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aOL:I

    if-nez v0, :cond_1

    .line 198
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aNH:Z

    if-eqz v0, :cond_0

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aNH:Z

    .line 201
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aPf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aPg:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 202
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aPg:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->ـ([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aPh:I

    .line 203
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aPg:[B

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->ـ([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aPi:I

    .line 205
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aPh:I

    const v1, 0x1010101

    add-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aPh:I

    .line 206
    iget v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aPi:I

    const v1, 0x1010104

    add-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aPi:I

    .line 207
    iget v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aPh:I

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aPf:[B

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->ˏ(I[BI)V

    .line 208
    iget v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aPi:I

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aPf:[B

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->ˏ(I[BI)V

    .line 210
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aPf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aPg:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 213
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aPg:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aOL:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aOL:I

    aget-byte v0, v0, v1

    xor-int/2addr v0, p1

    int-to-byte v5, v0

    .line 215
    iget v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aOL:I

    iget v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->fU:I

    if-ne v0, v1, :cond_2

    .line 217
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aOL:I

    .line 222
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aPf:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->fU:I

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aPf:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aPf:[B

    array-length v3, v3

    iget v4, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->fU:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aPg:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aPf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->aPf:[B

    array-length v2, v2

    iget v3, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->fU:I

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->fU:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    :cond_2
    return v5
.end method
