.class public abstract Lorg/spongycastle/pqc/jcajce/provider/util/CipherSpiExt;
.super Ljavax/crypto/CipherSpi;
.source ""


# instance fields
.field public biI:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doFinal([BII[BI)I
.end method

.method public abstract doFinal([BII)[B
.end method

.method protected final engineDoFinal([BII[BI)I
    .locals 1

    .line 232
    invoke-virtual/range {p0 .. p5}, Lorg/spongycastle/pqc/jcajce/provider/util/CipherSpiExt;->doFinal([BII[BI)I

    move-result v0

    return v0
.end method

.method protected final engineDoFinal([BII)[B
    .locals 1

    .line 200
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/pqc/jcajce/provider/util/CipherSpiExt;->doFinal([BII)[B

    move-result-object v0

    return-object v0
.end method

.method protected final engineGetBlockSize()I
    .locals 1

    .line 241
    invoke-virtual {p0}, Lorg/spongycastle/pqc/jcajce/provider/util/CipherSpiExt;->getBlockSize()I

    move-result v0

    return v0
.end method

.method protected final engineGetIV()[B
    .locals 1

    .line 272
    invoke-virtual {p0}, Lorg/spongycastle/pqc/jcajce/provider/util/CipherSpiExt;->getIV()[B

    move-result-object v0

    return-object v0
.end method

.method protected final engineGetKeySize(Ljava/security/Key;)I
    .locals 2

    .line 254
    instance-of v0, p1, Ljava/security/Key;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Unsupported key."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_0
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/jcajce/provider/util/CipherSpiExt;->ˋ(Ljava/security/Key;)I

    move-result v0

    return v0
.end method

.method protected final engineGetOutputSize(I)I
    .locals 1

    .line 291
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/jcajce/provider/util/CipherSpiExt;->getOutputSize(I)I

    move-result v0

    return v0
.end method

.method protected final engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    .line 310
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 2

    .line 111
    if-nez p3, :cond_0

    .line 113
    invoke-virtual {p0, p1, p2, p4}, Lorg/spongycastle/pqc/jcajce/provider/util/CipherSpiExt;->engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 114
    return-void

    .line 117
    :cond_0
    const/4 v1, 0x0

    .line 120
    invoke-virtual {p0, p1, p2, v1, p4}, Lorg/spongycastle/pqc/jcajce/provider/util/CipherSpiExt;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 121
    return-void
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3

    .line 70
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/spongycastle/pqc/jcajce/provider/util/CipherSpiExt;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 73
    :catch_0
    move-exception v2

    .line 75
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-virtual {v2}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :goto_0
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2

    .line 153
    if-eqz p3, :cond_0

    instance-of v0, p3, Ljava/security/spec/AlgorithmParameterSpec;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>()V

    throw v0

    .line 158
    :cond_0
    if-eqz p2, :cond_1

    instance-of v0, p2, Ljava/security/Key;

    if-nez v0, :cond_2

    .line 160
    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0}, Ljava/security/InvalidKeyException;-><init>()V

    throw v0

    .line 163
    :cond_2
    iput p1, p0, Lorg/spongycastle/pqc/jcajce/provider/util/CipherSpiExt;->biI:I

    .line 165
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 167
    move-object v1, p4

    .line 168
    invoke-virtual {p0, p2, p3, v1}, Lorg/spongycastle/pqc/jcajce/provider/util/CipherSpiExt;->ˋ(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 170
    goto :goto_0

    .line 171
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 173
    invoke-virtual {p0, p2, p3}, Lorg/spongycastle/pqc/jcajce/provider/util/CipherSpiExt;->ˋ(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 176
    :cond_4
    :goto_0
    return-void
.end method

.method protected final engineSetMode(Ljava/lang/String;)V
    .locals 0

    .line 323
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/jcajce/provider/util/CipherSpiExt;->ｨ(Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method protected final engineSetPadding(Ljava/lang/String;)V
    .locals 0

    .line 335
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/jcajce/provider/util/CipherSpiExt;->Ȉ(Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method protected final engineUpdate([BII[BI)I
    .locals 1

    .line 376
    invoke-virtual/range {p0 .. p5}, Lorg/spongycastle/pqc/jcajce/provider/util/CipherSpiExt;->update([BII[BI)I

    move-result v0

    return v0
.end method

.method protected final engineUpdate([BII)[B
    .locals 1

    .line 352
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/pqc/jcajce/provider/util/CipherSpiExt;->update([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public abstract getBlockSize()I
.end method

.method public abstract getIV()[B
.end method

.method public abstract getOutputSize(I)I
.end method

.method public abstract update([BII[BI)I
.end method

.method public abstract update([BII)[B
.end method

.method protected abstract Ȉ(Ljava/lang/String;)V
.end method

.method public abstract ˋ(Ljava/security/Key;)I
.end method

.method public abstract ˋ(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
.end method

.method public abstract ˋ(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
.end method

.method protected abstract ｨ(Ljava/lang/String;)V
.end method
