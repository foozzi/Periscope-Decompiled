.class public abstract Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;
.super Lorg/spongycastle/pqc/jcajce/provider/util/CipherSpiExt;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lorg/spongycastle/pqc/jcajce/provider/util/CipherSpiExt;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFinal([BII[BI)I
    .locals 3

    .line 336
    array-length v0, p4

    invoke-virtual {p0, p3}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;->getOutputSize(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 338
    new-instance v0, Ljavax/crypto/ShortBufferException;

    const-string v1, "Output buffer too short."

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;->doFinal([BII)[B

    move-result-object v2

    .line 341
    array-length v0, v2

    const/4 v1, 0x0

    invoke-static {v2, v1, p4, p5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    array-length v0, v2

    return v0
.end method

.method public abstract doFinal([BII)[B
.end method

.method public final getBlockSize()I
    .locals 1

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public final getIV()[B
    .locals 1

    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getOutputSize(I)I
    .locals 2

    .line 99
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;->biI:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;->ϛ(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;->ч(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final update([BII[BI)I
    .locals 3

    .line 296
    array-length v0, p4

    invoke-virtual {p0, p3}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;->getOutputSize(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 298
    new-instance v0, Ljavax/crypto/ShortBufferException;

    const-string v1, "output"

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;->update([BII)[B

    move-result-object v2

    .line 301
    array-length v0, v2

    const/4 v1, 0x0

    invoke-static {v2, v1, p4, p5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    array-length v0, v2

    return v0
.end method

.method public abstract update([BII)[B
.end method

.method protected final Ȉ(Ljava/lang/String;)V
    .locals 0

    .line 49
    return-void
.end method

.method public abstract ˊ(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
.end method

.method public abstract ˊ(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
.end method

.method public final ˋ(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1

    .line 265
    const/4 v0, 0x2

    iput v0, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;->biI:I

    .line 266
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;->ˊ(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 267
    return-void
.end method

.method public final ˋ(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1

    .line 210
    const/4 v0, 0x1

    iput v0, p0, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;->biI:I

    .line 211
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricHybridCipher;->ˊ(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 212
    return-void
.end method

.method public abstract ϛ(I)I
.end method

.method public abstract ч(I)I
.end method

.method protected final ｨ(Ljava/lang/String;)V
    .locals 0

    .line 38
    return-void
.end method
