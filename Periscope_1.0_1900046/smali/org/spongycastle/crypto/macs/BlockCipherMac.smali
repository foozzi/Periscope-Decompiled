.class public Lorg/spongycastle/crypto/macs/BlockCipherMac;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# instance fields
.field private aEU:I

.field private aEX:Lorg/spongycastle/crypto/BlockCipher;

.field private aNy:[B

.field private aNz:I

.field private buf:[B


# virtual methods
.method public doFinal([BI)I
    .locals 6

    .line 134
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    .line 139
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->aEU:I

    if-ge v0, v5, :cond_0

    .line 141
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->aEU:I

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    .line 142
    iget v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->aEU:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->aEU:I

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->aNy:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 147
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->aNy:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->aNz:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/BlockCipherMac;->reset()V

    .line 151
    iget v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->aNz:I

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iO()I
    .locals 1

    .line 77
    iget v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->aNz:I

    return v0
.end method

.method public reset()V
    .locals 3

    .line 162
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->buf:[B

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 164
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->buf:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v2

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->aEU:I

    .line 172
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 173
    return-void
.end method

.method public update(B)V
    .locals 5

    .line 83
    iget v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->aEU:I

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->aNy:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->aEU:I

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->aEU:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->aEU:I

    aput-byte p1, v0, v1

    .line 90
    return-void
.end method

.method public update([BII)V
    .locals 8

    .line 97
    if-gez p3, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    .line 103
    const/4 v6, 0x0

    .line 104
    iget v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->aEU:I

    sub-int v7, v5, v0

    .line 106
    if-le p3, v7, :cond_1

    .line 108
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->aEU:I

    invoke-static {p1, p2, v0, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->aNy:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    move-result v0

    add-int/lit8 v6, v0, 0x0

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->aEU:I

    .line 113
    sub-int/2addr p3, v7

    .line 114
    add-int/2addr p2, v7

    .line 116
    :goto_0
    if-le p3, v5, :cond_1

    .line 118
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->aNy:[B

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    move-result v0

    add-int/2addr v6, v0

    .line 120
    sub-int/2addr p3, v5

    .line 121
    add-int/2addr p2, v5

    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->aEU:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iget v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->aEU:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->aEU:I

    .line 128
    return-void
.end method

.method public ˊ(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/BlockCipherMac;->reset()V

    .line 72
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 73
    return-void
.end method
