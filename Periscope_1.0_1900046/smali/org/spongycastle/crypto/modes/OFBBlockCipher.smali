.class public Lorg/spongycastle/crypto/modes/OFBBlockCipher;
.super Lorg/spongycastle/crypto/StreamBlockCipher;
.source ""


# instance fields
.field private final aEX:Lorg/spongycastle/crypto/BlockCipher;

.field private aKF:[B

.field private aOL:I

.field private aPf:[B

.field private aPg:[B

.field private final fU:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;I)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/StreamBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    .line 36
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    .line 37
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->fU:I

    .line 39
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aKF:[B

    .line 40
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aPf:[B

    .line 41
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aPg:[B

    .line 42
    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 118
    iget v0, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->fU:I

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 3

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/OFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->fU:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 5

    .line 152
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aKF:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aPf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aKF:[B

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aOL:I

    .line 155
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 156
    return-void
.end method

.method public ˊ([BI[BI)I
    .locals 6

    .line 141
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    iget v3, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->fU:I

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->ˋ([BII[BI)I

    .line 143
    iget v0, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->fU:I

    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 7

    .line 60
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_3

    .line 62
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object v4, v0

    .line 63
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v5

    .line 65
    array-length v0, v5

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aKF:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 68
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aKF:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aKF:[B

    array-length v1, v1

    array-length v2, v5

    sub-int/2addr v1, v2

    array-length v2, v5

    const/4 v3, 0x0

    invoke-static {v5, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    const/4 v6, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aKF:[B

    array-length v0, v0

    array-length v1, v5

    sub-int/2addr v0, v1

    if-ge v6, v0, :cond_0

    .line 71
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aKF:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v6

    .line 69
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 76
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aKF:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aKF:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v5, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    :goto_1
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->reset()V

    .line 82
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 86
    :cond_2
    goto :goto_2

    .line 89
    :cond_3
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->reset()V

    .line 92
    if-eqz p2, :cond_4

    .line 94
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 97
    :cond_4
    :goto_2
    return-void
.end method

.method protected ͺ(B)B
    .locals 6

    .line 161
    iget v0, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aOL:I

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aPf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aPg:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aPg:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aOL:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aOL:I

    aget-byte v0, v0, v1

    xor-int/2addr v0, p1

    int-to-byte v5, v0

    .line 168
    iget v0, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aOL:I

    iget v1, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->fU:I

    if-ne v0, v1, :cond_1

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aOL:I

    .line 172
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aPf:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->fU:I

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aPf:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aPf:[B

    array-length v3, v3

    iget v4, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->fU:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aPg:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aPf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->aPf:[B

    array-length v2, v2

    iget v3, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->fU:I

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/modes/OFBBlockCipher;->fU:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    :cond_1
    return v5
.end method
