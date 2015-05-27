.class public Lorg/spongycastle/jce/provider/JCEStreamCipher;
.super Ljavax/crypto/CipherSpi;
.source ""

# interfaces
.implements Lorg/spongycastle/jcajce/provider/symmetric/util/PBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jce/provider/JCEStreamCipher$Twofish_OFB8;,
        Lorg/spongycastle/jce/provider/JCEStreamCipher$Blowfish_OFB8;,
        Lorg/spongycastle/jce/provider/JCEStreamCipher$Skipjack_OFB8;,
        Lorg/spongycastle/jce/provider/JCEStreamCipher$DESede_OFB8;,
        Lorg/spongycastle/jce/provider/JCEStreamCipher$DES_OFB8;,
        Lorg/spongycastle/jce/provider/JCEStreamCipher$Twofish_CFB8;,
        Lorg/spongycastle/jce/provider/JCEStreamCipher$Blowfish_CFB8;,
        Lorg/spongycastle/jce/provider/JCEStreamCipher$Skipjack_CFB8;,
        Lorg/spongycastle/jce/provider/JCEStreamCipher$DESede_CFB8;,
        Lorg/spongycastle/jce/provider/JCEStreamCipher$DES_CFB8;
    }
.end annotation


# instance fields
.field private aWR:I

.field private aXe:Ljava/security/AlgorithmParameters;

.field private aXo:[Ljava/lang/Class;

.field private aZh:Lorg/spongycastle/crypto/params/ParametersWithIV;

.field private aZk:Ljavax/crypto/spec/PBEParameterSpec;

.field private aZl:Ljava/lang/String;

.field private aZx:Lorg/spongycastle/crypto/StreamCipher;


# direct methods
.method protected constructor <init>(Lorg/spongycastle/crypto/StreamCipher;I)V
    .locals 3

    .line 74
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/RC5ParameterSpec;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aXo:[Ljava/lang/Class;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aWR:I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aZk:Ljavax/crypto/spec/PBEParameterSpec;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aZl:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aZx:Lorg/spongycastle/crypto/StreamCipher;

    .line 76
    iput p2, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aWR:I

    .line 77
    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 6

    .line 366
    if-eqz p3, :cond_0

    .line 368
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aZx:Lorg/spongycastle/crypto/StreamCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/crypto/StreamCipher;->ˋ([BII[BI)I

    .line 371
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aZx:Lorg/spongycastle/crypto/StreamCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/StreamCipher;->reset()V

    .line 373
    return p3
.end method

.method protected engineDoFinal([BII)[B
    .locals 2

    .line 344
    if-eqz p3, :cond_0

    .line 346
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/jce/provider/JCEStreamCipher;->engineUpdate([BII)[B

    move-result-object v1

    .line 348
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aZx:Lorg/spongycastle/crypto/StreamCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/StreamCipher;->reset()V

    .line 350
    return-object v1

    .line 353
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aZx:Lorg/spongycastle/crypto/StreamCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/StreamCipher;->reset()V

    .line 355
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method protected engineGetBlockSize()I
    .locals 1

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method protected engineGetIV()[B
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aZh:Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aZh:Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 2

    .line 92
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 0

    .line 98
    return p1
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 3

    .line 103
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aXe:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aZk:Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_0

    .line 109
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aZl:Ljava/lang/String;

    const-string v1, "SC"

    invoke-static {v0, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    .line 110
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aZk:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v2, v0}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    return-object v2

    .line 114
    :catch_0
    move-exception v2

    .line 116
    const/4 v0, 0x0

    return-object v0

    .line 121
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aXe:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 6

    .line 263
    const/4 v3, 0x0

    .line 265
    if-eqz p3, :cond_1

    .line 267
    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aXo:[Ljava/lang/Class;

    array-length v0, v0

    if-eq v4, v0, :cond_0

    .line 271
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aXo:[Ljava/lang/Class;

    aget-object v0, v0, v4

    invoke-virtual {p3, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 272
    goto :goto_1

    .line 274
    :catch_0
    move-exception v5

    .line 267
    .line 276
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 280
    :cond_0
    :goto_1
    if-nez v3, :cond_1

    .line 282
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

    .line 286
    :cond_1
    invoke-virtual {p0, p1, p2, v3, p4}, Lorg/spongycastle/jce/provider/JCEStreamCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 287
    iput-object p3, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aXe:Ljava/security/AlgorithmParameters;

    .line 288
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3

    .line 298
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/spongycastle/jce/provider/JCEStreamCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    goto :goto_0

    .line 300
    :catch_0
    move-exception v2

    .line 302
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :goto_0
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 6

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aZk:Ljavax/crypto/spec/PBEParameterSpec;

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aZl:Ljava/lang/String;

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aXe:Ljava/security/AlgorithmParameters;

    .line 166
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key for algorithm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not suitable for symmetric enryption."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    instance-of v0, p2, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v0, :cond_5

    .line 173
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    move-object v4, v0

    .line 175
    invoke-virtual {v4}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->nV()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {v4}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->nV()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aZl:Ljava/lang/String;

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {v4}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aZl:Ljava/lang/String;

    .line 184
    :goto_0
    invoke-virtual {v4}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->nU()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 186
    invoke-virtual {v4}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->nU()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    .line 187
    new-instance v0, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v4}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getSalt()[B

    move-result-object v1

    invoke-virtual {v4}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIterationCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aZk:Ljavax/crypto/spec/PBEParameterSpec;

    goto :goto_1

    .line 189
    :cond_2
    instance-of v0, p3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_3

    .line 191
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aZx:Lorg/spongycastle/crypto/StreamCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/StreamCipher;->iG()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, p3, v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->ˊ(Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    .line 192
    move-object v0, p3

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aZk:Ljavax/crypto/spec/PBEParameterSpec;

    goto :goto_1

    .line 196
    :cond_3
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "PBE requires PBE parameters to be set."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :goto_1
    invoke-virtual {v4}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->nT()I

    move-result v0

    if-eqz v0, :cond_4

    .line 201
    move-object v0, v3

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aZh:Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 203
    :cond_4
    goto :goto_2

    .line 204
    :cond_5
    if-nez p3, :cond_6

    .line 206
    new-instance v3, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    goto :goto_2

    .line 208
    :cond_6
    instance-of v0, p3, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_7

    .line 210
    new-instance v3, Lorg/spongycastle/crypto/params/ParametersWithIV;

    new-instance v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    move-object v1, p3

    check-cast v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .line 211
    move-object v0, v3

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aZh:Lorg/spongycastle/crypto/params/ParametersWithIV;

    goto :goto_2

    .line 215
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown parameter type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :goto_2
    iget v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aWR:I

    if-eqz v0, :cond_b

    instance-of v0, v3, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-nez v0, :cond_b

    .line 220
    move-object v4, p4

    .line 222
    if-nez v4, :cond_8

    .line 224
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 227
    :cond_8
    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    .line 229
    :cond_9
    iget v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aWR:I

    new-array v5, v0, [B

    .line 231
    invoke-virtual {v4, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 232
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-direct {v0, v3, v5}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    move-object v3, v0

    .line 233
    move-object v0, v3

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aZh:Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 234
    goto :goto_3

    .line 237
    :cond_a
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "no IV set when one expected"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_b
    :goto_3
    packed-switch p1, :pswitch_data_0

    goto :goto_4

    .line 245
    :pswitch_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aZx:Lorg/spongycastle/crypto/StreamCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v3}, Lorg/spongycastle/crypto/StreamCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 246
    goto :goto_5

    .line 249
    :pswitch_1
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aZx:Lorg/spongycastle/crypto/StreamCipher;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v3}, Lorg/spongycastle/crypto/StreamCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 250
    goto :goto_5

    .line 252
    :goto_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "eeek!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 254
    :goto_5
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

    .line 130
    const-string v0, "ECB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
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

    .line 134
    :cond_0
    return-void
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 3

    .line 143
    const-string v0, "NoPadding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Padding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unknown."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    return-void
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 6

    .line 405
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/spongycastle/jce/provider/JCEStreamCipher;->engineDoFinal([BII)[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 414
    goto :goto_0

    .line 407
    :catch_0
    move-exception v4

    .line 409
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-virtual {v4}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :catch_1
    move-exception v4

    .line 413
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-virtual {v4}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :goto_0
    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 418
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, v3, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 420
    :cond_0
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 428
    :try_start_1
    invoke-static {v3}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->ﹷ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v4

    .line 430
    invoke-static {v4}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->ˏ(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    .line 432
    if-eqz v5, :cond_1

    .line 434
    return-object v5

    .line 438
    :cond_1
    :try_start_2
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "algorithm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->fW()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 441
    :catch_2
    move-exception v4

    .line 443
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Invalid key encoding."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_2
    const-string v0, "SC"

    :try_start_3
    invoke-static {p2, v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 452
    const/4 v0, 0x1

    if-ne p3, v0, :cond_3

    .line 454
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v4, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_3
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 456
    :cond_3
    const/4 v0, 0x2

    if-ne p3, v0, :cond_4

    .line 458
    :try_start_4
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, v3}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v4, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_4
    .catch Ljava/security/NoSuchProviderException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v0

    return-object v0

    .line 472
    :cond_4
    goto :goto_1

    .line 461
    :catch_3
    move-exception v4

    .line 463
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :catch_4
    move-exception v4

    .line 467
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :catch_5
    move-exception v4

    .line 471
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :goto_1
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate([BII[BI)I
    .locals 7

    .line 328
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aZx:Lorg/spongycastle/crypto/StreamCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/crypto/StreamCipher;->ˋ([BII[BI)I
    :try_end_0
    .catch Lorg/spongycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    return p3

    .line 332
    :catch_0
    move-exception v6

    .line 334
    new-instance v0, Ljavax/crypto/ShortBufferException;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate([BII)[B
    .locals 7

    .line 311
    new-array v6, p3, [B

    .line 313
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->aZx:Lorg/spongycastle/crypto/StreamCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v6

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/crypto/StreamCipher;->ˋ([BII[BI)I

    .line 315
    return-object v6
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .locals 4

    .line 380
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    .line 381
    if-nez v2, :cond_0

    .line 383
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Cannot wrap key, null encoding."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_0
    :try_start_0
    array-length v0, v2

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lorg/spongycastle/jce/provider/JCEStreamCipher;->engineDoFinal([BII)[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 390
    :catch_0
    move-exception v3

    .line 392
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v3}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
