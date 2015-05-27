.class public abstract Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;
.super Ljavax/crypto/CipherSpi;
.source ""

# interfaces
.implements Lorg/spongycastle/jcajce/provider/symmetric/util/PBE;


# instance fields
.field protected aXL:Lorg/spongycastle/crypto/Wrapper;

.field protected aXe:Ljava/security/AlgorithmParameters;

.field private aXo:[Ljava/lang/Class;

.field private aYU:I

.field protected aZu:I

.field protected aZv:I

.field private iv:[B


# direct methods
.method protected constructor <init>()V
    .locals 3

    .line 66
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/RC5ParameterSpec;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->aXo:[Ljava/lang/Class;

    .line 53
    const/4 v0, 0x2

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->aZu:I

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->aZv:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->aXe:Ljava/security/AlgorithmParameters;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->aXL:Lorg/spongycastle/crypto/Wrapper;

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Wrapper;)V
    .locals 1

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>(Lorg/spongycastle/crypto/Wrapper;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Wrapper;I)V
    .locals 3

    .line 78
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/RC5ParameterSpec;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->aXo:[Ljava/lang/Class;

    .line 53
    const/4 v0, 0x2

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->aZu:I

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->aZv:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->aXe:Ljava/security/AlgorithmParameters;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->aXL:Lorg/spongycastle/crypto/Wrapper;

    .line 79
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->aXL:Lorg/spongycastle/crypto/Wrapper;

    .line 80
    iput p2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->aYU:I

    .line 81
    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 1

    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method protected engineDoFinal([BII)[B
    .locals 1

    .line 264
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineGetBlockSize()I
    .locals 1

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method protected engineGetIV()[B
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->iv:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 1

    .line 96
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 1

    .line 102
    const/4 v0, -0x1

    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 6

    .line 196
    const/4 v3, 0x0

    .line 198
    if-eqz p3, :cond_1

    .line 200
    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->aXo:[Ljava/lang/Class;

    array-length v0, v0

    if-eq v4, v0, :cond_0

    .line 204
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->aXo:[Ljava/lang/Class;

    aget-object v0, v0, v4

    invoke-virtual {p3, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 205
    goto :goto_1

    .line 207
    :catch_0
    move-exception v5

    .line 200
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 213
    :cond_0
    :goto_1
    if-nez v3, :cond_1

    .line 215
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

    .line 219
    :cond_1
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->aXe:Ljava/security/AlgorithmParameters;

    .line 220
    invoke-virtual {p0, p1, p2, v3, p4}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 221
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3

    .line 231
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    goto :goto_0

    .line 233
    :catch_0
    move-exception v2

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :goto_0
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 4

    .line 133
    instance-of v0, p2, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v0, :cond_2

    .line 135
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    move-object v3, v0

    .line 137
    instance-of v0, p3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->aXL:Lorg/spongycastle/crypto/Wrapper;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Wrapper;->iG()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, p3, v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->ˊ(Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {v3}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->nU()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {v3}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->nU()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    goto :goto_0

    .line 147
    :cond_1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "PBE requires PBE parameters to be set."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :goto_0
    goto :goto_1

    .line 152
    :cond_2
    new-instance v2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 155
    :goto_1
    instance-of v0, p3, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_3

    .line 157
    move-object v0, p3

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    move-object v3, v0

    .line 158
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    move-object v2, v0

    .line 161
    :cond_3
    instance-of v0, v2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->aYU:I

    if-eqz v0, :cond_4

    .line 163
    iget v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->aYU:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->iv:[B

    .line 164
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->iv:[B

    invoke-virtual {p4, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 165
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->iv:[B

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    move-object v2, v0

    .line 168
    :cond_4
    if-eqz p4, :cond_5

    .line 170
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v0, v2, p4}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    move-object v2, v0

    .line 173
    :cond_5
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 176
    :pswitch_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->aXL:Lorg/spongycastle/crypto/Wrapper;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Wrapper;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 177
    goto :goto_3

    .line 179
    :pswitch_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->aXL:Lorg/spongycastle/crypto/Wrapper;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Wrapper;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 180
    goto :goto_3

    .line 183
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "engine only valid for wrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :goto_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "eeek!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 187
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 3

    .line 114
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t support mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 3

    .line 121
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
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 6

    .line 314
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->aXL:Lorg/spongycastle/crypto/Wrapper;

    if-nez v0, :cond_0

    .line 316
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineDoFinal([BII)[B

    move-result-object v3

    goto :goto_0

    .line 320
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->aXL:Lorg/spongycastle/crypto/Wrapper;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/spongycastle/crypto/Wrapper;->ﹳ([BII)[B
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 334
    :goto_0
    goto :goto_1

    .line 323
    :catch_0
    move-exception v4

    .line 325
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :catch_1
    move-exception v4

    .line 329
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-virtual {v4}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :catch_2
    move-exception v4

    .line 333
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-virtual {v4}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :goto_1
    const/4 v0, 0x3

    if-ne p3, v0, :cond_1

    .line 338
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, v3, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 340
    :cond_1
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    .line 348
    :try_start_1
    invoke-static {v3}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->ﹷ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v4

    .line 350
    invoke-static {v4}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->ˏ(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v5

    .line 352
    if-eqz v5, :cond_2

    .line 354
    return-object v5

    .line 358
    :cond_2
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
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 361
    :catch_3
    move-exception v4

    .line 363
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Invalid key encoding."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_3
    const-string v0, "SC"

    :try_start_3
    invoke-static {p2, v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 372
    const/4 v0, 0x1

    if-ne p3, v0, :cond_4

    .line 374
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v4, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_3
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 376
    :cond_4
    const/4 v0, 0x2

    if-ne p3, v0, :cond_5

    .line 378
    :try_start_4
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, v3}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v4, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_4
    .catch Ljava/security/NoSuchProviderException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v0

    return-object v0

    .line 388
    :cond_5
    goto :goto_2

    .line 381
    :catch_4
    move-exception v4

    .line 383
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

    .line 385
    :catch_5
    move-exception v4

    .line 387
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

    .line 390
    :goto_2
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
    .locals 2

    .line 255
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not supported for wrapping"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate([BII)[B
    .locals 2

    .line 244
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not supported for wrapping"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .locals 5

    .line 282
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    .line 283
    if-nez v3, :cond_0

    .line 285
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Cannot wrap key, null encoding."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->aXL:Lorg/spongycastle/crypto/Wrapper;

    if-nez v0, :cond_1

    .line 292
    array-length v0, v3

    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1, v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->engineDoFinal([BII)[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 296
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->aXL:Lorg/spongycastle/crypto/Wrapper;

    array-length v1, v3

    const/4 v2, 0x0

    invoke-interface {v0, v3, v2, v1}, Lorg/spongycastle/crypto/Wrapper;->ᐨ([BII)[B
    :try_end_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    .line 299
    :catch_0
    move-exception v4

    .line 301
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v4}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
