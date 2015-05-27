.class public Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;
.super Ljavax/crypto/CipherSpi;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher$ECIESwithAESCBC;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher$ECIESwithDESedeCBC;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher$ECIESwithAES;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher$ECIESwithDESede;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher$ECIES;
    }
.end annotation


# instance fields
.field private aFa:Ljava/security/SecureRandom;

.field private aUh:Ljava/io/ByteArrayOutputStream;

.field private aWR:I

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

    .line 69
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    .line 60
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aUh:Ljava/io/ByteArrayOutputStream;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWt:Ljava/security/AlgorithmParameters;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWu:Lorg/spongycastle/jce/spec/IESParameterSpec;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWw:Z

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWx:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 70
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWs:Lorg/spongycastle/crypto/engines/IESEngine;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWR:I

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/engines/IESEngine;I)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    .line 60
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aUh:Ljava/io/ByteArrayOutputStream;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWt:Ljava/security/AlgorithmParameters;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWu:Lorg/spongycastle/jce/spec/IESParameterSpec;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWw:Z

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWx:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 76
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWs:Lorg/spongycastle/crypto/engines/IESEngine;

    .line 77
    iput p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWR:I

    .line 78
    return-void
.end method


# virtual methods
.method public engineDoFinal([BII[BI)I
    .locals 3

    .line 484
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engineDoFinal([BII)[B

    move-result-object v2

    .line 485
    array-length v0, v2

    const/4 v1, 0x0

    invoke-static {v2, v1, p4, p5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 486
    array-length v0, v2

    return v0
.end method

.method public engineDoFinal([BII)[B
    .locals 11

    .line 384
    if-eqz p3, :cond_0

    .line 386
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aUh:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 389
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aUh:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 390
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aUh:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 393
    new-instance v5, Lorg/spongycastle/crypto/params/IESWithCipherParameters;

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWu:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/IESParameterSpec;->kN()[B

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWu:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/IESParameterSpec;->kO()[B

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWu:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v2}, Lorg/spongycastle/jce/spec/IESParameterSpec;->kP()I

    move-result v2

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWu:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v3}, Lorg/spongycastle/jce/spec/IESParameterSpec;->kQ()I

    move-result v3

    invoke-direct {v5, v0, v1, v2, v3}, Lorg/spongycastle/crypto/params/IESWithCipherParameters;-><init>([B[BII)V

    .line 398
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWu:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/IESParameterSpec;->fn()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 400
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWu:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/IESParameterSpec;->fn()[B

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    move-object v5, v0

    .line 403
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWv:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v0, Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECKeyParameters;->kG()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v6

    .line 407
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWx:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    if-eqz v0, :cond_4

    .line 411
    :try_start_0
    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 413
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWs:Lorg/spongycastle/crypto/engines/IESEngine;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWx:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWv:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2, v5}, Lorg/spongycastle/crypto/engines/IESEngine;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_0

    .line 417
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWs:Lorg/spongycastle/crypto/engines/IESEngine;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWv:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWx:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, v5}, Lorg/spongycastle/crypto/engines/IESEngine;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;)V

    .line 419
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWs:Lorg/spongycastle/crypto/engines/IESEngine;

    array-length v1, v4

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2, v1}, Lorg/spongycastle/crypto/engines/IESEngine;->ˑ([BII)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 421
    :catch_0
    move-exception v8

    .line 423
    new-instance v0, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_4
    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 430
    :cond_5
    new-instance v8, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v8}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    .line 431
    new-instance v0, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aFa:Ljava/security/SecureRandom;

    invoke-direct {v0, v6, v1}, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/spongycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v8, v0}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 433
    new-instance v9, Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;

    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher$1;

    invoke-direct {v0, p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher$1;-><init>(Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;)V

    invoke-direct {v9, v8, v0}, Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;-><init>(Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;Lorg/spongycastle/crypto/KeyEncoder;)V

    .line 444
    :try_start_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWs:Lorg/spongycastle/crypto/engines/IESEngine;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWv:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-virtual {v0, v1, v5, v9}, Lorg/spongycastle/crypto/engines/IESEngine;->ˊ(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;)V

    .line 446
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWs:Lorg/spongycastle/crypto/engines/IESEngine;

    array-length v1, v4

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2, v1}, Lorg/spongycastle/crypto/engines/IESEngine;->ˑ([BII)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    .line 448
    :catch_1
    move-exception v10

    .line 450
    new-instance v0, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_6
    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 459
    :cond_7
    :try_start_2
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWs:Lorg/spongycastle/crypto/engines/IESEngine;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWv:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    new-instance v2, Lorg/spongycastle/crypto/parsers/ECIESPublicKeyParser;

    invoke-direct {v2, v6}, Lorg/spongycastle/crypto/parsers/ECIESPublicKeyParser;-><init>(Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    invoke-virtual {v0, v1, v5, v2}, Lorg/spongycastle/crypto/engines/IESEngine;->ˊ(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/KeyParser;)V

    .line 461
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWs:Lorg/spongycastle/crypto/engines/IESEngine;

    array-length v1, v4

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2, v1}, Lorg/spongycastle/crypto/engines/IESEngine;->ˑ([BII)[B
    :try_end_2
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    return-object v0

    .line 463
    :catch_2
    move-exception v8

    .line 465
    new-instance v0, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v8}, Lorg/spongycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cipher not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetBlockSize()I
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWs:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/IESEngine;->jA()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWs:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/IESEngine;->jA()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getBlockSize()I

    move-result v0

    return v0

    .line 88
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public engineGetIV()[B
    .locals 1

    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public engineGetKeySize(Ljava/security/Key;)I
    .locals 2

    .line 95
    instance-of v0, p1, Lorg/spongycastle/jce/interfaces/ECKey;

    if-eqz v0, :cond_0

    .line 97
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jce/interfaces/ECKey;

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/ECKey;->nB()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    return v0

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not an EC key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetOutputSize(I)I
    .locals 5

    .line 154
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWs:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/IESEngine;->jB()Lorg/spongycastle/crypto/Mac;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/crypto/Mac;->iO()I

    move-result v2

    .line 156
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWv:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWv:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v0, Lorg/spongycastle/jce/interfaces/ECKey;

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/ECKey;->nB()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v3, v0, 0x1

    goto :goto_0

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cipher not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWs:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/IESEngine;->jA()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v0

    if-nez v0, :cond_1

    .line 167
    move v4, p1

    goto :goto_1

    .line 169
    :cond_1
    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 171
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWs:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/IESEngine;->jA()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v4

    goto :goto_1

    .line 173
    :cond_3
    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 175
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWs:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/IESEngine;->jA()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v0

    sub-int v1, p1, v2

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v4

    goto :goto_1

    .line 179
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cipher not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :goto_1
    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 184
    :cond_6
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aUh:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr v0, v2

    add-int/2addr v0, v3

    add-int/2addr v0, v4

    return v0

    .line 186
    :cond_7
    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    .line 188
    :cond_8
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aUh:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    sub-int/2addr v0, v2

    sub-int/2addr v0, v3

    add-int/2addr v0, v4

    return v0

    .line 192
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cipher not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 3

    .line 113
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWt:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWu:Lorg/spongycastle/jce/spec/IESParameterSpec;

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "IES"

    const-string v1, "SC"

    :try_start_0
    invoke-static {v0, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWt:Ljava/security/AlgorithmParameters;

    .line 118
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWt:Ljava/security/AlgorithmParameters;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWu:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    goto :goto_0

    .line 120
    :catch_0
    move-exception v2

    .line 122
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWt:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 5

    .line 227
    const/4 v3, 0x0

    .line 229
    if-eqz p3, :cond_0

    .line 233
    :try_start_0
    const-class v0, Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {p3, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 238
    goto :goto_0

    .line 235
    :catch_0
    move-exception v4

    .line 237
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

    .line 241
    :cond_0
    :goto_0
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWt:Ljava/security/AlgorithmParameters;

    .line 242
    invoke-virtual {p0, p1, p2, v3, p4}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 244
    return-void
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3

    .line 342
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    goto :goto_0

    .line 344
    :catch_0
    move-exception v2

    .line 346
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t handle supplied parameter spec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :goto_0
    return-void
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 5

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWx:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 257
    if-nez p3, :cond_0

    .line 259
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWs:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/IESUtil;->ˊ(Lorg/spongycastle/crypto/engines/IESEngine;)Lorg/spongycastle/jce/spec/IESParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWu:Lorg/spongycastle/jce/spec/IESParameterSpec;

    goto :goto_0

    .line 261
    :cond_0
    instance-of v0, p3, Lorg/spongycastle/jce/spec/IESParameterSpec;

    if-eqz v0, :cond_1

    .line 263
    move-object v0, p3

    check-cast v0, Lorg/spongycastle/jce/spec/IESParameterSpec;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWu:Lorg/spongycastle/jce/spec/IESParameterSpec;

    goto :goto_0

    .line 267
    :cond_1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "must be passed IES parameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWu:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/IESParameterSpec;->fn()[B

    move-result-object v3

    .line 272
    if-eqz v3, :cond_3

    .line 274
    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWR:I

    if-nez v0, :cond_2

    .line 276
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "NONCE present in IES Parameters when none required"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_2
    array-length v0, v3

    iget v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWR:I

    if-eq v0, v1, :cond_3

    .line 280
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NONCE in IES Parameters needs to be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_3
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    .line 287
    :cond_4
    instance-of v0, p2, Lorg/spongycastle/jce/interfaces/ECPublicKey;

    if-eqz v0, :cond_5

    .line 289
    move-object v0, p2

    check-cast v0, Ljava/security/PublicKey;

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWv:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    goto/16 :goto_1

    .line 291
    :cond_5
    instance-of v0, p2, Lorg/spongycastle/jce/interfaces/IESKey;

    if-eqz v0, :cond_6

    .line 293
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/jce/interfaces/IESKey;

    move-object v4, v0

    .line 295
    invoke-interface {v4}, Lorg/spongycastle/jce/interfaces/IESKey;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWv:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 296
    invoke-interface {v4}, Lorg/spongycastle/jce/interfaces/IESKey;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ˊ(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWx:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 297
    goto :goto_1

    .line 300
    :cond_6
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "must be passed recipient\'s public EC key for encryption"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_7
    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x4

    if-ne p1, v0, :cond_b

    .line 305
    :cond_8
    instance-of v0, p2, Lorg/spongycastle/jce/interfaces/ECPrivateKey;

    if-eqz v0, :cond_9

    .line 307
    move-object v0, p2

    check-cast v0, Ljava/security/PrivateKey;

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ˊ(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWv:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    goto :goto_1

    .line 309
    :cond_9
    instance-of v0, p2, Lorg/spongycastle/jce/interfaces/IESKey;

    if-eqz v0, :cond_a

    .line 311
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/jce/interfaces/IESKey;

    move-object v4, v0

    .line 313
    invoke-interface {v4}, Lorg/spongycastle/jce/interfaces/IESKey;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWx:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 314
    invoke-interface {v4}, Lorg/spongycastle/jce/interfaces/IESKey;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ˊ(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWv:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 315
    goto :goto_1

    .line 318
    :cond_a
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "must be passed recipient\'s private EC key for decryption"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_b
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "must be passed EC key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :goto_1
    iput-object p4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aFa:Ljava/security/SecureRandom;

    .line 328
    iput p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    .line 329
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aUh:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 331
    return-void
.end method

.method public engineSetMode(Ljava/lang/String;)V
    .locals 4

    .line 133
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->ʟ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 135
    const-string v0, "NONE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWw:Z

    goto :goto_0

    .line 139
    :cond_0
    const-string v0, "DHAES"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aWw:Z

    goto :goto_0

    .line 145
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

    .line 147
    :goto_0
    return-void
.end method

.method public engineSetPadding(Ljava/lang/String;)V
    .locals 3

    .line 200
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->ʟ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 203
    const-string v0, "NOPADDING"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 207
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

    .line 213
    :cond_1
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    const-string v1, "padding not available with IESCipher"

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_2
    :goto_0
    return-void
.end method

.method public engineUpdate([BII[BI)I
    .locals 1

    .line 371
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aUh:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public engineUpdate([BII)[B
    .locals 1

    .line 359
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->aUh:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 360
    const/4 v0, 0x0

    return-object v0
.end method
