.class public Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;
.super Ljavax/crypto/CipherSpi;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher$IESwithAES;,
        Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher$IESwithDESede;,
        Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher$IES;
    }
.end annotation


# instance fields
.field private aFa:Ljava/security/SecureRandom;

.field private aUh:Ljava/io/ByteArrayOutputStream;

.field private aWs:Lorg/spongycastle/crypto/engines/IESEngine;

.field private aWt:Ljava/security/AlgorithmParameters;

.field private aWu:Lorg/spongycastle/jce/spec/IESParameterSpec;

.field private aWv:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

.field private aWw:Z

.field private aWx:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

.field private state:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/engines/IESEngine;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    .line 58
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aUh:Ljava/io/ByteArrayOutputStream;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWt:Ljava/security/AlgorithmParameters;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWu:Lorg/spongycastle/jce/spec/IESParameterSpec;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWw:Z

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWx:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 68
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWs:Lorg/spongycastle/crypto/engines/IESEngine;

    .line 69
    return-void
.end method


# virtual methods
.method public engineDoFinal([BII[BI)I
    .locals 3

    .line 462
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineDoFinal([BII)[B

    move-result-object v2

    .line 463
    array-length v0, v2

    const/4 v1, 0x0

    invoke-static {v2, v1, p4, p5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 464
    array-length v0, v2

    return v0
.end method

.method public engineDoFinal([BII)[B
    .locals 11

    .line 356
    if-eqz p3, :cond_0

    .line 358
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aUh:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 361
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aUh:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 362
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aUh:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 365
    new-instance v5, Lorg/spongycastle/crypto/params/IESWithCipherParameters;

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWu:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/IESParameterSpec;->kN()[B

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWu:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/IESParameterSpec;->kO()[B

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWu:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v2}, Lorg/spongycastle/jce/spec/IESParameterSpec;->kP()I

    move-result v2

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWu:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v3}, Lorg/spongycastle/jce/spec/IESParameterSpec;->kQ()I

    move-result v3

    invoke-direct {v5, v0, v1, v2, v3}, Lorg/spongycastle/crypto/params/IESWithCipherParameters;-><init>([B[BII)V

    .line 370
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWv:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v0, Lorg/spongycastle/crypto/params/DHKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/DHKeyParameters;->kA()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v6

    .line 373
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWx:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    if-eqz v0, :cond_3

    .line 377
    :try_start_0
    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 379
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWs:Lorg/spongycastle/crypto/engines/IESEngine;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWx:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWv:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2, v5}, Lorg/spongycastle/crypto/engines/IESEngine;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_0

    .line 383
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWs:Lorg/spongycastle/crypto/engines/IESEngine;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWv:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWx:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, v5}, Lorg/spongycastle/crypto/engines/IESEngine;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;)V

    .line 385
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWs:Lorg/spongycastle/crypto/engines/IESEngine;

    array-length v1, v4

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2, v1}, Lorg/spongycastle/crypto/engines/IESEngine;->ˑ([BII)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 387
    :catch_0
    move-exception v8

    .line 389
    new-instance v0, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_3
    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 396
    :cond_4
    new-instance v8, Lorg/spongycastle/crypto/generators/DHKeyPairGenerator;

    invoke-direct {v8}, Lorg/spongycastle/crypto/generators/DHKeyPairGenerator;-><init>()V

    .line 397
    new-instance v0, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aFa:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, v6}, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;)V

    invoke-virtual {v8, v0}, Lorg/spongycastle/crypto/generators/DHKeyPairGenerator;->ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 399
    new-instance v9, Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;

    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher$1;

    invoke-direct {v0, p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher$1;-><init>(Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;)V

    invoke-direct {v9, v8, v0}, Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;-><init>(Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;Lorg/spongycastle/crypto/KeyEncoder;)V

    .line 422
    :try_start_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWs:Lorg/spongycastle/crypto/engines/IESEngine;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWv:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-virtual {v0, v1, v5, v9}, Lorg/spongycastle/crypto/engines/IESEngine;->ˊ(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;)V

    .line 424
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWs:Lorg/spongycastle/crypto/engines/IESEngine;

    array-length v1, v4

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2, v1}, Lorg/spongycastle/crypto/engines/IESEngine;->ˑ([BII)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    .line 426
    :catch_1
    move-exception v10

    .line 428
    new-instance v0, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_5
    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    .line 436
    :cond_6
    :try_start_2
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWs:Lorg/spongycastle/crypto/engines/IESEngine;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWv:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    new-instance v2, Lorg/spongycastle/crypto/parsers/DHIESPublicKeyParser;

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWv:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v3, Lorg/spongycastle/crypto/params/DHKeyParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/DHKeyParameters;->kA()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/parsers/DHIESPublicKeyParser;-><init>(Lorg/spongycastle/crypto/params/DHParameters;)V

    invoke-virtual {v0, v1, v5, v2}, Lorg/spongycastle/crypto/engines/IESEngine;->ˊ(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/KeyParser;)V

    .line 438
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWs:Lorg/spongycastle/crypto/engines/IESEngine;

    array-length v1, v4

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2, v1}, Lorg/spongycastle/crypto/engines/IESEngine;->ˑ([BII)[B
    :try_end_2
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    return-object v0

    .line 440
    :catch_2
    move-exception v8

    .line 442
    new-instance v0, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v8}, Lorg/spongycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IESCipher not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetBlockSize()I
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWs:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/IESEngine;->jA()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWs:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/IESEngine;->jA()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getBlockSize()I

    move-result v0

    return v0

    .line 80
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public engineGetIV()[B
    .locals 1

    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public engineGetKeySize(Ljava/security/Key;)I
    .locals 2

    .line 87
    instance-of v0, p1, Ljavax/crypto/interfaces/DHKey;

    if-eqz v0, :cond_0

    .line 89
    move-object v0, p1

    check-cast v0, Ljavax/crypto/interfaces/DHKey;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not a DH key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetOutputSize(I)I
    .locals 5

    .line 145
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWs:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/IESEngine;->jB()Lorg/spongycastle/crypto/Mac;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/crypto/Mac;->iO()I

    move-result v2

    .line 147
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWv:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWv:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v0, Ljavax/crypto/interfaces/DHKey;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v3, v0, 0x1

    goto :goto_0

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cipher not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWs:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/IESEngine;->jA()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v0

    if-nez v0, :cond_1

    .line 158
    move v4, p1

    goto :goto_1

    .line 160
    :cond_1
    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 162
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWs:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/IESEngine;->jA()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v4

    goto :goto_1

    .line 164
    :cond_3
    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 166
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWs:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/IESEngine;->jA()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v0

    sub-int v1, p1, v2

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v4

    goto :goto_1

    .line 170
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cipher not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :goto_1
    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 175
    :cond_6
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aUh:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr v0, v2

    add-int/2addr v0, v3

    add-int/2addr v0, v4

    return v0

    .line 177
    :cond_7
    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    .line 179
    :cond_8
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aUh:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    sub-int/2addr v0, v2

    sub-int/2addr v0, v3

    add-int/2addr v0, v4

    return v0

    .line 183
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IESCipher not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 3

    .line 105
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWt:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWu:Lorg/spongycastle/jce/spec/IESParameterSpec;

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "IES"

    const-string v1, "SC"

    :try_start_0
    invoke-static {v0, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWt:Ljava/security/AlgorithmParameters;

    .line 110
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWt:Ljava/security/AlgorithmParameters;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWu:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    goto :goto_0

    .line 112
    :catch_0
    move-exception v2

    .line 114
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWt:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 5

    .line 217
    const/4 v3, 0x0

    .line 219
    if-eqz p3, :cond_0

    .line 223
    :try_start_0
    const-class v0, Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {p3, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 228
    goto :goto_0

    .line 225
    :catch_0
    move-exception v4

    .line 227
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot recognise parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    :goto_0
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWt:Ljava/security/AlgorithmParameters;

    .line 232
    invoke-virtual {p0, p1, p2, v3, p4}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 233
    return-void
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3

    .line 314
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    goto :goto_0

    .line 316
    :catch_0
    move-exception v2

    .line 318
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t handle supplied parameter spec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :goto_0
    return-void
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3

    .line 244
    if-nez p3, :cond_0

    .line 246
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWs:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/IESUtil;->ˊ(Lorg/spongycastle/crypto/engines/IESEngine;)Lorg/spongycastle/jce/spec/IESParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWu:Lorg/spongycastle/jce/spec/IESParameterSpec;

    goto :goto_0

    .line 248
    :cond_0
    instance-of v0, p3, Lorg/spongycastle/jce/spec/IESParameterSpec;

    if-eqz v0, :cond_1

    .line 250
    move-object v0, p3

    check-cast v0, Lorg/spongycastle/jce/spec/IESParameterSpec;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWu:Lorg/spongycastle/jce/spec/IESParameterSpec;

    goto :goto_0

    .line 254
    :cond_1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "must be passed IES parameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 260
    :cond_2
    instance-of v0, p2, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v0, :cond_3

    .line 262
    move-object v0, p2

    check-cast v0, Ljava/security/PublicKey;

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/DHUtil;->ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWv:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    goto/16 :goto_1

    .line 264
    :cond_3
    instance-of v0, p2, Lorg/spongycastle/jce/interfaces/IESKey;

    if-eqz v0, :cond_4

    .line 266
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/jce/interfaces/IESKey;

    move-object v2, v0

    .line 268
    invoke-interface {v2}, Lorg/spongycastle/jce/interfaces/IESKey;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/DHUtil;->ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWv:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 269
    invoke-interface {v2}, Lorg/spongycastle/jce/interfaces/IESKey;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/DHUtil;->ˊ(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWx:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 270
    goto :goto_1

    .line 273
    :cond_4
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "must be passed recipient\'s public DH key for encryption"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_5
    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-ne p1, v0, :cond_9

    .line 278
    :cond_6
    instance-of v0, p2, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz v0, :cond_7

    .line 280
    move-object v0, p2

    check-cast v0, Ljava/security/PrivateKey;

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/DHUtil;->ˊ(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWv:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    goto :goto_1

    .line 282
    :cond_7
    instance-of v0, p2, Lorg/spongycastle/jce/interfaces/IESKey;

    if-eqz v0, :cond_8

    .line 284
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/jce/interfaces/IESKey;

    move-object v2, v0

    .line 286
    invoke-interface {v2}, Lorg/spongycastle/jce/interfaces/IESKey;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/DHUtil;->ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWx:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 287
    invoke-interface {v2}, Lorg/spongycastle/jce/interfaces/IESKey;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/DHUtil;->ˊ(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWv:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 288
    goto :goto_1

    .line 291
    :cond_8
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "must be passed recipient\'s private DH key for decryption"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_9
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "must be passed EC key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :goto_1
    iput-object p4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aFa:Ljava/security/SecureRandom;

    .line 300
    iput p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    .line 301
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aUh:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 303
    return-void
.end method

.method public engineSetMode(Ljava/lang/String;)V
    .locals 4

    .line 125
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->ʟ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 127
    const-string v0, "NONE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWw:Z

    goto :goto_0

    .line 131
    :cond_0
    const-string v0, "DHAES"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aWw:Z

    goto :goto_0

    .line 137
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t support mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :goto_0
    return-void
.end method

.method public engineSetPadding(Ljava/lang/String;)V
    .locals 3

    .line 191
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->ʟ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    const-string v0, "NOPADDING"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    const-string v0, "PKCS5PADDING"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "PKCS7PADDING"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 204
    :cond_1
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    const-string v1, "padding not available with IESCipher"

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_2
    :goto_0
    return-void
.end method

.method public engineUpdate([BII[BI)I
    .locals 1

    .line 343
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aUh:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 344
    const/4 v0, 0x0

    return v0
.end method

.method public engineUpdate([BII)[B
    .locals 1

    .line 331
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->aUh:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 332
    const/4 v0, 0x0

    return-object v0
.end method
