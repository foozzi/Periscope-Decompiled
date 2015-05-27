.class public Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/DerivationFunction;


# instance fields
.field private aFH:Lorg/spongycastle/crypto/Digest;

.field private aMC:[B

.field private iv:[B


# virtual methods
.method public ˊ(Lorg/spongycastle/crypto/DerivationParameters;)V
    .locals 3

    .line 43
    instance-of v0, p1, Lorg/spongycastle/crypto/params/KDFParameters;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "KDF parameters required for KDF2Generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/KDFParameters;

    move-object v2, v0

    .line 50
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/KDFParameters;->kX()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->aMC:[B

    .line 51
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/KDFParameters;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->iv:[B

    .line 52
    return-void
.end method

.method public ᐧ([BII)I
    .locals 9

    .line 75
    array-length v0, p1

    sub-int/2addr v0, p3

    if-ge v0, p2, :cond_0

    .line 77
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "output buffer too small"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    mul-int/lit8 v0, p3, 0x8

    int-to-long v4, v0

    .line 88
    iget-object v0, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    const-wide/16 v2, 0x1d

    mul-long/2addr v0, v2

    cmp-long v0, v4, v0

    if-lez v0, :cond_1

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output length to large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 93
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    int-to-long v0, v0

    div-long v0, v4, v0

    long-to-int v6, v0

    .line 95
    const/4 v7, 0x0

    .line 97
    iget-object v0, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v7, v0, [B

    .line 99
    const/4 v8, 0x1

    :goto_0
    if-gt v8, v6, :cond_3

    .line 101
    iget-object v0, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->aMC:[B

    iget-object v2, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->aMC:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 103
    iget-object v0, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    and-int/lit16 v1, v8, 0xff

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 104
    iget-object v0, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    shr-int/lit8 v1, v8, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 105
    iget-object v0, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    shr-int/lit8 v1, v8, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 106
    iget-object v0, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    shr-int/lit8 v1, v8, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 108
    iget-object v0, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->iv:[B

    iget-object v2, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->iv:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 110
    iget-object v0, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v7, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 112
    sub-int v0, p3, p2

    array-length v1, v7

    if-le v0, v1, :cond_2

    .line 114
    array-length v0, v7

    const/4 v1, 0x0

    invoke-static {v7, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    array-length v0, v7

    add-int/2addr p2, v0

    goto :goto_1

    .line 119
    :cond_2
    sub-int v0, p3, p2

    const/4 v1, 0x0

    invoke-static {v7, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 123
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 125
    return p3
.end method
