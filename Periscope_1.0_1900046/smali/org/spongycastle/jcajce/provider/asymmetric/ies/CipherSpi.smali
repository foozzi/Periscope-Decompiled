.class public Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;
.super Ljavax/crypto/CipherSpi;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi$IES;
    }
.end annotation


# instance fields
.field private aUh:Ljava/io/ByteArrayOutputStream;

.field private aWt:Ljava/security/AlgorithmParameters;

.field private aXm:Lorg/spongycastle/crypto/engines/IESEngine;

.field private aXn:Lorg/spongycastle/jce/spec/IESParameterSpec;

.field private aXo:[Ljava/lang/Class;

.field private state:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/engines/IESEngine;)V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->state:I

    .line 38
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->aUh:Ljava/io/ByteArrayOutputStream;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->aWt:Ljava/security/AlgorithmParameters;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->aXn:Lorg/spongycastle/jce/spec/IESParameterSpec;

    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lorg/spongycastle/jce/spec/IESParameterSpec;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->aXo:[Ljava/lang/Class;

    .line 53
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->aXm:Lorg/spongycastle/crypto/engines/IESEngine;

    .line 54
    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 4

    .line 329
    if-eqz p3, :cond_0

    .line 331
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->aUh:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 336
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->aUh:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 338
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->aUh:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 340
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->aXm:Lorg/spongycastle/crypto/engines/IESEngine;

    array-length v1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2, v1}, Lorg/spongycastle/crypto/engines/IESEngine;->ˑ([BII)[B

    move-result-object v3

    .line 342
    array-length v0, v3

    const/4 v1, 0x0

    invoke-static {v3, v1, p4, p5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 344
    array-length v0, v3
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 346
    :catch_0
    move-exception v3

    .line 348
    new-instance v0, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineDoFinal([BII)[B
    .locals 4

    .line 302
    if-eqz p3, :cond_0

    .line 304
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->aUh:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 309
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->aUh:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 311
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->aUh:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 313
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->aXm:Lorg/spongycastle/crypto/engines/IESEngine;

    array-length v1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2, v1}, Lorg/spongycastle/crypto/engines/IESEngine;->ˑ([BII)[B
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 315
    :catch_0
    move-exception v3

    .line 317
    new-instance v0, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetBlockSize()I
    .locals 1

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method protected engineGetIV()[B
    .locals 1

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 4

    .line 69
    instance-of v0, p1, Lorg/spongycastle/jce/interfaces/IESKey;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must be passed IE key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jce/interfaces/IESKey;

    move-object v2, v0

    .line 76
    invoke-interface {v2}, Lorg/spongycastle/jce/interfaces/IESKey;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    instance-of v0, v0, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz v0, :cond_1

    .line 78
    invoke-interface {v2}, Lorg/spongycastle/jce/interfaces/IESKey;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljavax/crypto/interfaces/DHPrivateKey;

    move-object v3, v0

    .line 80
    invoke-interface {v3}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0

    .line 82
    :cond_1
    invoke-interface {v2}, Lorg/spongycastle/jce/interfaces/IESKey;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/jce/interfaces/ECPrivateKey;

    if-eqz v0, :cond_2

    .line 84
    invoke-interface {v2}, Lorg/spongycastle/jce/interfaces/IESKey;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jce/interfaces/ECPrivateKey;

    move-object v3, v0

    .line 86
    invoke-interface {v3}, Lorg/spongycastle/jce/interfaces/ECPrivateKey;->kz()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0

    .line 89
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not an IE key!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 2

    .line 95
    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->aUh:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x14

    return v0

    .line 99
    :cond_1
    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 101
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->aUh:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x14

    return v0

    .line 105
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cipher not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 4

    .line 111
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->aWt:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->aXn:Lorg/spongycastle/jce/spec/IESParameterSpec;

    if-eqz v0, :cond_0

    .line 115
    const-string v2, "IES"

    .line 119
    const-string v0, "SC"

    :try_start_0
    invoke-static {v2, v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->aWt:Ljava/security/AlgorithmParameters;

    .line 120
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->aWt:Ljava/security/AlgorithmParameters;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->aXn:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    goto :goto_0

    .line 122
    :catch_0
    move-exception v3

    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->aWt:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 6

    .line 227
    const/4 v3, 0x0

    .line 229
    if-eqz p3, :cond_1

    .line 231
    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->aXo:[Ljava/lang/Class;

    array-length v0, v0

    if-eq v4, v0, :cond_0

    .line 235
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->aXo:[Ljava/lang/Class;

    aget-object v0, v0, v4

    invoke-virtual {p3, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 236
    goto :goto_1

    .line 238
    :catch_0
    move-exception v5

    .line 231
    .line 240
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 244
    :cond_0
    :goto_1
    if-nez v3, :cond_1

    .line 246
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t handle parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_1
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->aWt:Ljava/security/AlgorithmParameters;

    .line 251
    invoke-virtual {p0, p1, p2, v3, p4}, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 252
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3

    .line 260
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 264
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    return-void

    .line 267
    :catch_0
    move-exception v2

    .line 273
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t handle null parameter spec in IES"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 7

    .line 152
    instance-of v0, p2, Lorg/spongycastle/jce/interfaces/IESKey;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "must be passed IES key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    if-nez p3, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 163
    :cond_1
    const/16 v0, 0x10

    new-array v3, v0, [B

    .line 164
    const/16 v0, 0x10

    new-array v4, v0, [B

    .line 166
    if-nez p4, :cond_2

    .line 168
    new-instance p4, Ljava/security/SecureRandom;

    invoke-direct {p4}, Ljava/security/SecureRandom;-><init>()V

    .line 171
    :cond_2
    invoke-virtual {p4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 172
    invoke-virtual {p4, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 174
    new-instance p3, Lorg/spongycastle/jce/spec/IESParameterSpec;

    const/16 v0, 0x80

    invoke-direct {p3, v3, v4, v0}, Lorg/spongycastle/jce/spec/IESParameterSpec;-><init>([B[BI)V

    .line 175
    goto :goto_0

    .line 176
    :cond_3
    instance-of v0, p3, Lorg/spongycastle/jce/spec/IESParameterSpec;

    if-nez v0, :cond_4

    .line 178
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "must be passed IES parameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_4
    :goto_0
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/jce/interfaces/IESKey;

    move-object v3, v0

    .line 186
    invoke-interface {v3}, Lorg/spongycastle/jce/interfaces/IESKey;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/jce/interfaces/ECPublicKey;

    if-eqz v0, :cond_5

    .line 188
    invoke-interface {v3}, Lorg/spongycastle/jce/interfaces/IESKey;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v4

    .line 189
    invoke-interface {v3}, Lorg/spongycastle/jce/interfaces/IESKey;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ˊ(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v5

    goto :goto_1

    .line 193
    :cond_5
    invoke-interface {v3}, Lorg/spongycastle/jce/interfaces/IESKey;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/DHUtil;->ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v4

    .line 194
    invoke-interface {v3}, Lorg/spongycastle/jce/interfaces/IESKey;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/DHUtil;->ˊ(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v5

    .line 197
    :goto_1
    move-object v0, p3

    check-cast v0, Lorg/spongycastle/jce/spec/IESParameterSpec;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->aXn:Lorg/spongycastle/jce/spec/IESParameterSpec;

    .line 199
    new-instance v6, Lorg/spongycastle/crypto/params/IESParameters;

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->aXn:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/IESParameterSpec;->kN()[B

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->aXn:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/IESParameterSpec;->kO()[B

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->aXn:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v2}, Lorg/spongycastle/jce/spec/IESParameterSpec;->kP()I

    move-result v2

    invoke-direct {v6, v0, v1, v2}, Lorg/spongycastle/crypto/params/IESParameters;-><init>([B[BI)V

    .line 201
    iput p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->state:I

    .line 203
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->aUh:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 205
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 209
    :pswitch_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->aXm:Lorg/spongycastle/crypto/engines/IESEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v5, v4, v6}, Lorg/spongycastle/crypto/engines/IESEngine;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;)V

    .line 210
    goto :goto_3

    .line 213
    :pswitch_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->aXm:Lorg/spongycastle/crypto/engines/IESEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5, v4, v6}, Lorg/spongycastle/crypto/engines/IESEngine;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;)V

    .line 214
    goto :goto_3

    .line 216
    :goto_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "eeek!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 218
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 3

    .line 135
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
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 3

    .line 142
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unavailable with RSA."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate([BII[BI)I
    .locals 1

    .line 292
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->aUh:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method protected engineUpdate([BII)[B
    .locals 1

    .line 281
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ies/CipherSpi;->aUh:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 282
    const/4 v0, 0x0

    return-object v0
.end method
