.class public Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/DigestDerivationFunction;


# instance fields
.field private aFH:Lorg/spongycastle/crypto/Digest;

.field private aMB:I

.field private aMC:[B

.field private iv:[B


# direct methods
.method protected constructor <init>(ILorg/spongycastle/crypto/Digest;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->aMB:I

    .line 36
    iput-object p2, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    .line 37
    return-void
.end method


# virtual methods
.method public ˊ(Lorg/spongycastle/crypto/DerivationParameters;)V
    .locals 3

    .line 41
    instance-of v0, p1, Lorg/spongycastle/crypto/params/KDFParameters;

    if-eqz v0, :cond_0

    .line 43
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/KDFParameters;

    move-object v2, v0

    .line 45
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/KDFParameters;->kX()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->aMC:[B

    .line 46
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/KDFParameters;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/crypto/params/ISO18033KDFParameters;

    if-eqz v0, :cond_1

    .line 50
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/ISO18033KDFParameters;

    move-object v2, v0

    .line 52
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ISO18033KDFParameters;->getSeed()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->aMC:[B

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    .line 54
    goto :goto_0

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "KDF parameters required for KDF2Generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :goto_0
    return-void
.end method

.method public ᐧ([BII)I
    .locals 12

    .line 81
    array-length v0, p1

    sub-int/2addr v0, p3

    if-ge v0, p2, :cond_0

    .line 83
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "output buffer too small"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    int-to-long v4, p3

    .line 87
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v6

    .line 95
    const-wide v0, 0x1ffffffffL

    cmp-long v0, v4, v0

    if-lez v0, :cond_1

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output length too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1
    int-to-long v0, v6

    add-long/2addr v0, v4

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    int-to-long v2, v6

    div-long/2addr v0, v2

    long-to-int v7, v0

    .line 102
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v8, v0, [B

    .line 104
    const/4 v0, 0x4

    new-array v9, v0, [B

    .line 105
    iget v0, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->aMB:I

    const/4 v1, 0x0

    invoke-static {v0, v9, v1}, Lorg/spongycastle/util/Pack;->ʾ(I[BI)V

    .line 107
    iget v0, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->aMB:I

    and-int/lit16 v10, v0, -0x100

    .line 109
    const/4 v11, 0x0

    :goto_0
    if-ge v11, v7, :cond_5

    .line 111
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->aMC:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->aMC:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 112
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    array-length v1, v9

    const/4 v2, 0x0

    invoke-interface {v0, v9, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 114
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 119
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v8, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 121
    if-le p3, v6, :cond_3

    .line 123
    const/4 v0, 0x0

    invoke-static {v8, v0, p1, p2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    add-int/2addr p2, v6

    .line 125
    sub-int/2addr p3, v6

    goto :goto_1

    .line 129
    :cond_3
    const/4 v0, 0x0

    invoke-static {v8, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    :goto_1
    const/4 v0, 0x3

    aget-byte v0, v9, v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, v9, v1

    if-nez v0, :cond_4

    .line 134
    add-int/lit16 v10, v10, 0x100

    .line 135
    const/4 v0, 0x0

    invoke-static {v10, v9, v0}, Lorg/spongycastle/util/Pack;->ʾ(I[BI)V

    .line 109
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 139
    :cond_5
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 141
    long-to-int v0, v4

    return v0
.end method
