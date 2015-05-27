.class public Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;
.source ""

# interfaces
.implements Lorg/spongycastle/jcajce/provider/symmetric/util/PBE;


# instance fields
.field private aWR:I

.field private aXo:[Ljava/lang/Class;

.field private aZh:Lorg/spongycastle/crypto/params/ParametersWithIV;

.field private aZk:Ljavax/crypto/spec/PBEParameterSpec;

.field private aZl:Ljava/lang/String;

.field private aZx:Lorg/spongycastle/crypto/StreamCipher;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/StreamCipher;I)V
    .locals 3

    .line 53
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    .line 34
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

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aXo:[Ljava/lang/Class;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aWR:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aZk:Ljavax/crypto/spec/PBEParameterSpec;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aZl:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aZx:Lorg/spongycastle/crypto/StreamCipher;

    .line 55
    iput p2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aWR:I

    .line 56
    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 6

    .line 350
    if-eqz p3, :cond_0

    .line 352
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aZx:Lorg/spongycastle/crypto/StreamCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/crypto/StreamCipher;->ˋ([BII[BI)I

    .line 355
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aZx:Lorg/spongycastle/crypto/StreamCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/StreamCipher;->reset()V

    .line 357
    return p3
.end method

.method protected engineDoFinal([BII)[B
    .locals 2

    .line 329
    if-eqz p3, :cond_0

    .line 331
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->engineUpdate([BII)[B

    move-result-object v1

    .line 333
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aZx:Lorg/spongycastle/crypto/StreamCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/StreamCipher;->reset()V

    .line 335
    return-object v1

    .line 338
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aZx:Lorg/spongycastle/crypto/StreamCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/StreamCipher;->reset()V

    .line 340
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method protected engineGetBlockSize()I
    .locals 1

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method protected engineGetIV()[B
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aZh:Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aZh:Lorg/spongycastle/crypto/params/ParametersWithIV;

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

    .line 71
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 0

    .line 77
    return p1
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 3

    .line 82
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aXe:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aZk:Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_0

    .line 88
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aZl:Ljava/lang/String;

    const-string v1, "SC"

    invoke-static {v0, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    .line 89
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aZk:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v2, v0}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    return-object v2

    .line 93
    :catch_0
    move-exception v2

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aXe:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 6

    .line 249
    const/4 v3, 0x0

    .line 251
    if-eqz p3, :cond_1

    .line 253
    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aXo:[Ljava/lang/Class;

    array-length v0, v0

    if-eq v4, v0, :cond_0

    .line 257
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aXo:[Ljava/lang/Class;

    aget-object v0, v0, v4

    invoke-virtual {p3, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 258
    goto :goto_1

    .line 260
    :catch_0
    move-exception v5

    .line 253
    .line 262
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 266
    :cond_0
    :goto_1
    if-nez v3, :cond_1

    .line 268
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

    .line 272
    :cond_1
    invoke-virtual {p0, p1, p2, v3, p4}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 273
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aXe:Ljava/security/AlgorithmParameters;

    .line 274
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3

    .line 284
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    goto :goto_0

    .line 286
    :catch_0
    move-exception v2

    .line 288
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :goto_0
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 6

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aZk:Ljavax/crypto/spec/PBEParameterSpec;

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aZl:Ljava/lang/String;

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aXe:Ljava/security/AlgorithmParameters;

    .line 145
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    if-nez v0, :cond_0

    .line 147
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

    .line 150
    :cond_0
    instance-of v0, p2, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v0, :cond_5

    .line 152
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    move-object v4, v0

    .line 154
    invoke-virtual {v4}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->nV()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {v4}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->nV()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aZl:Ljava/lang/String;

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {v4}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aZl:Ljava/lang/String;

    .line 163
    :goto_0
    invoke-virtual {v4}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->nU()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 165
    invoke-virtual {v4}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->nU()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    .line 166
    new-instance v0, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v4}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getSalt()[B

    move-result-object v1

    invoke-virtual {v4}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIterationCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aZk:Ljavax/crypto/spec/PBEParameterSpec;

    goto :goto_1

    .line 168
    :cond_2
    instance-of v0, p3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aZx:Lorg/spongycastle/crypto/StreamCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/StreamCipher;->iG()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, p3, v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->ˊ(Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    .line 171
    move-object v0, p3

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aZk:Ljavax/crypto/spec/PBEParameterSpec;

    goto :goto_1

    .line 175
    :cond_3
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "PBE requires PBE parameters to be set."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :goto_1
    invoke-virtual {v4}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->nT()I

    move-result v0

    if-eqz v0, :cond_4

    .line 180
    move-object v0, v3

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aZh:Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 182
    :cond_4
    goto :goto_2

    .line 183
    :cond_5
    if-nez p3, :cond_6

    .line 185
    new-instance v3, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    goto :goto_2

    .line 187
    :cond_6
    instance-of v0, p3, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_7

    .line 189
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

    .line 190
    move-object v0, v3

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aZh:Lorg/spongycastle/crypto/params/ParametersWithIV;

    goto :goto_2

    .line 194
    :cond_7
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "unknown parameter type."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :goto_2
    iget v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aWR:I

    if-eqz v0, :cond_b

    instance-of v0, v3, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-nez v0, :cond_b

    .line 199
    move-object v4, p4

    .line 201
    if-nez v4, :cond_8

    .line 203
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 206
    :cond_8
    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    .line 208
    :cond_9
    iget v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aWR:I

    new-array v5, v0, [B

    .line 210
    invoke-virtual {v4, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 211
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-direct {v0, v3, v5}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    move-object v3, v0

    .line 212
    move-object v0, v3

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aZh:Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 213
    goto :goto_3

    .line 216
    :cond_a
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "no IV set when one expected"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_b
    :goto_3
    packed-switch p1, :pswitch_data_0

    goto :goto_4

    .line 226
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aZx:Lorg/spongycastle/crypto/StreamCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v3}, Lorg/spongycastle/crypto/StreamCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 227
    goto :goto_5

    .line 230
    :pswitch_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aZx:Lorg/spongycastle/crypto/StreamCipher;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v3}, Lorg/spongycastle/crypto/StreamCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 231
    goto :goto_5

    .line 233
    :goto_4
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown opmode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " passed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_5
    goto :goto_6

    .line 236
    :catch_0
    move-exception v4

    .line 238
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :goto_6
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

    .line 109
    const-string v0, "ECB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
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

    .line 113
    :cond_0
    return-void
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 3

    .line 122
    const-string v0, "NoPadding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
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

    .line 126
    :cond_0
    return-void
.end method

.method protected engineUpdate([BII[BI)I
    .locals 7

    .line 314
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aZx:Lorg/spongycastle/crypto/StreamCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/crypto/StreamCipher;->ˋ([BII[BI)I
    :try_end_0
    .catch Lorg/spongycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    return p3

    .line 318
    :catch_0
    move-exception v6

    .line 320
    new-instance v0, Ljavax/crypto/ShortBufferException;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate([BII)[B
    .locals 7

    .line 297
    new-array v6, p3, [B

    .line 299
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;->aZx:Lorg/spongycastle/crypto/StreamCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v6

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/crypto/StreamCipher;->ˋ([BII[BI)I

    .line 301
    return-object v6
.end method
