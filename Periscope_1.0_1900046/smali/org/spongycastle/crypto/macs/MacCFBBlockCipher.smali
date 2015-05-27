.class Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aEX:Lorg/spongycastle/crypto/BlockCipher;

.field private aKF:[B

.field private aNR:[B

.field private aNS:[B

.field private fU:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;I)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    .line 33
    iput-object p1, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    .line 34
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->fU:I

    .line 36
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->aKF:[B

    .line 37
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->aNR:[B

    .line 38
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->aNS:[B

    .line 39
    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 98
    iget v0, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->fU:I

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 3

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/CFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->fU:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 5

    .line 156
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->aKF:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->aNR:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->aKF:[B

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 159
    return-void
.end method

.method public ˊ([BI[BI)I
    .locals 6

    .line 121
    iget v0, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->fU:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 123
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->fU:I

    add-int/2addr v0, p4

    array-length v1, p3

    if-le v0, v1, :cond_1

    .line 128
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->aNR:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->aNS:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 136
    const/4 v5, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->fU:I

    if-ge v5, v0, :cond_2

    .line 138
    add-int v0, p4, v5

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->aNS:[B

    aget-byte v1, v1, v5

    add-int v2, p2, v5

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 136
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->aNR:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->fU:I

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->aNR:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->aNR:[B

    array-length v3, v3

    iget v4, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->fU:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->aNR:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->aNR:[B

    array-length v1, v1

    iget v2, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->fU:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->fU:I

    invoke-static {p3, p4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iget v0, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->fU:I

    return v0
.end method

.method public ˊ(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 6

    .line 54
    instance-of v0, p1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_1

    .line 56
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object v4, v0

    .line 57
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v5

    .line 59
    array-length v0, v5

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->aKF:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 61
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->aKF:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->aKF:[B

    array-length v1, v1

    array-length v2, v5

    sub-int/2addr v1, v2

    array-length v2, v5

    const/4 v3, 0x0

    invoke-static {v5, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->aKF:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->aKF:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v5, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->reset()V

    .line 70
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 71
    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->reset()V

    .line 76
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 78
    :goto_1
    return-void
.end method

.method ᒽ([B)V
    .locals 4

    .line 164
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->aNR:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p1, v3}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 165
    return-void
.end method
