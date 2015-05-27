.class public Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/DerivationFunction;


# instance fields
.field private aDx:[B

.field private aFH:Lorg/spongycastle/crypto/Digest;

.field private aNg:I


# direct methods
.method private ˏ(I[B)V
    .locals 2

    .line 57
    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p2, v1

    .line 58
    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p2, v1

    .line 59
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p2, v1

    .line 60
    ushr-int/lit8 v0, p1, 0x0

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, p2, v1

    .line 61
    return-void
.end method


# virtual methods
.method public ˊ(Lorg/spongycastle/crypto/DerivationParameters;)V
    .locals 3

    .line 32
    instance-of v0, p1, Lorg/spongycastle/crypto/params/MGFParameters;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MGF parameters required for MGF1Generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/MGFParameters;

    move-object v2, v0

    .line 39
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/MGFParameters;->getSeed()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->aDx:[B

    .line 40
    return-void
.end method

.method public ᐧ([BII)I
    .locals 7

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
    iget v0, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->aNg:I

    new-array v4, v0, [B

    .line 81
    const/4 v0, 0x4

    new-array v5, v0, [B

    .line 82
    const/4 v6, 0x0

    .line 84
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 86
    iget v0, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->aNg:I

    if-le p3, v0, :cond_2

    .line 90
    :cond_1
    invoke-direct {p0, v6, v5}, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->ˏ(I[B)V

    .line 92
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->aDx:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->aDx:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 93
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    array-length v1, v5

    const/4 v2, 0x0

    invoke-interface {v0, v5, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 94
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v4, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 96
    iget v0, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->aNg:I

    mul-int/2addr v0, v6

    add-int/2addr v0, p2

    iget v1, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->aNg:I

    const/4 v2, 0x0

    invoke-static {v4, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    add-int/lit8 v6, v6, 0x1

    iget v0, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->aNg:I

    div-int v0, p3, v0

    if-lt v6, v0, :cond_1

    .line 101
    :cond_2
    iget v0, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->aNg:I

    mul-int/2addr v0, v6

    if-ge v0, p3, :cond_3

    .line 103
    invoke-direct {p0, v6, v5}, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->ˏ(I[B)V

    .line 105
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->aDx:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->aDx:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 106
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    array-length v1, v5

    const/4 v2, 0x0

    invoke-interface {v0, v5, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 107
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v4, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 109
    iget v0, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->aNg:I

    mul-int/2addr v0, v6

    add-int/2addr v0, p2

    iget v1, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->aNg:I

    mul-int/2addr v1, v6

    sub-int v1, p3, v1

    const/4 v2, 0x0

    invoke-static {v4, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    :cond_3
    return p3
.end method
