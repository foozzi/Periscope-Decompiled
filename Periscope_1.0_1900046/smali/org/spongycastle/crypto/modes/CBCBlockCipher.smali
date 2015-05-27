.class public Lorg/spongycastle/crypto/modes/CBCBlockCipher;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# instance fields
.field private aEX:Lorg/spongycastle/crypto/BlockCipher;

.field private aIY:Z

.field private aKF:[B

.field private aOD:[B

.field private aOE:[B

.field private fU:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    .line 31
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    .line 32
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->fU:I

    .line 34
    iget v0, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->fU:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->aKF:[B

    .line 35
    iget v0, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->fU:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->aOD:[B

    .line 36
    iget v0, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->fU:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->aOE:[B

    .line 37
    return-void
.end method

.method private ˏ([BI[BI)I
    .locals 4

    .line 182
    iget v0, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->fU:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 184
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->fU:I

    if-ge v3, v0, :cond_1

    .line 193
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->aOD:[B

    aget-byte v1, v0, v3

    add-int v2, p2, v3

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 191
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 196
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->aOD:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p3, p4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    move-result v3

    .line 201
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->aOD:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->aOD:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p3, p4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    return v3
.end method

.method private ᐝ([BI[BI)I
    .locals 5

    .line 225
    iget v0, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->fU:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 227
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->aOE:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->fU:I

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    move-result v3

    .line 237
    const/4 v4, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->fU:I

    if-ge v4, v0, :cond_1

    .line 239
    add-int v0, p4, v4

    aget-byte v1, p3, v0

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->aOD:[B

    aget-byte v2, v2, v4

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 237
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 247
    :cond_1
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->aOD:[B

    .line 248
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->aOE:[B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->aOD:[B

    .line 249
    iput-object v4, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->aOE:[B

    .line 251
    return v3
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/CBC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iH()Lorg/spongycastle/crypto/BlockCipher;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public reset()V
    .locals 5

    .line 157
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->aKF:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->aOD:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->aKF:[B

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->aOE:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 160
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 161
    return-void
.end method

.method public ˊ([BI[BI)I
    .locals 1

    .line 148
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->aIY:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->ˏ([BI[BI)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->ᐝ([BI[BI)I

    move-result v0

    :goto_0
    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 7

    .line 64
    iget-boolean v4, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->aIY:Z

    .line 66
    iput-boolean p1, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->aIY:Z

    .line 68
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_3

    .line 70
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object v5, v0

    .line 71
    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v6

    .line 73
    array-length v0, v6

    iget v1, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->fU:I

    if-eq v0, v1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "initialisation vector must be the same length as block size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->aKF:[B

    array-length v1, v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v6, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->reset()V

    .line 83
    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_0

    .line 87
    :cond_1
    if-eq v4, p1, :cond_2

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot change encrypting state without providing key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_2
    :goto_0
    goto :goto_1

    .line 94
    :cond_3
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->reset()V

    .line 97
    if-eqz p2, :cond_4

    .line 99
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_1

    .line 101
    :cond_4
    if-eq v4, p1, :cond_5

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot change encrypting state without providing key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_5
    :goto_1
    return-void
.end method
