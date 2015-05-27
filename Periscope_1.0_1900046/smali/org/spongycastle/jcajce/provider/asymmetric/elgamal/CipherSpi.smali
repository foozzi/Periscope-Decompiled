.class public Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;
.super Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi$PKCS1v1_5Padding;,
        Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi$NoPadding;
    }
.end annotation


# instance fields
.field private aXc:Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

.field private aXd:Ljava/security/spec/AlgorithmParameterSpec;

.field private aXe:Ljava/security/AlgorithmParameters;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;-><init>()V

    .line 50
    new-instance v0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->aXc:Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    .line 51
    return-void
.end method

.method private ˊ(Ljavax/crypto/spec/OAEPParameterSpec;)V
    .locals 6

    .line 57
    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljava/security/spec/MGF1ParameterSpec;

    move-object v4, v0

    .line 58
    invoke-virtual {v4}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->ﺛ(Ljava/lang/String;)Lorg/spongycastle/crypto/Digest;

    move-result-object v5

    .line 60
    if-nez v5, :cond_0

    .line 62
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no match on OAEP constructor for digest algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/encodings/OAEPEncoding;

    new-instance v2, Lorg/spongycastle/crypto/engines/ElGamalEngine;

    invoke-direct {v2}, Lorg/spongycastle/crypto/engines/ElGamalEngine;-><init>()V

    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v3

    check-cast v3, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {v3}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v3

    invoke-direct {v1, v2, v5, v3}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;[B)V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->aXc:Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    .line 66
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->aXd:Ljava/security/spec/AlgorithmParameterSpec;

    .line 67
    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 4

    .line 301
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->aXc:Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->ـ([BII)V

    .line 305
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->aXc:Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->doFinal()[B
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 310
    goto :goto_0

    .line 307
    :catch_0
    move-exception v3

    .line 309
    new-instance v0, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :goto_0
    const/4 v3, 0x0

    :goto_1
    array-length v0, v2

    if-eq v3, v0, :cond_0

    .line 314
    add-int v0, p5, v3

    aget-byte v1, v2, v3

    aput-byte v1, p4, v0

    .line 312
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 317
    :cond_0
    array-length v0, v2

    return v0
.end method

.method protected engineDoFinal([BII)[B
    .locals 3

    .line 280
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->aXc:Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->ـ([BII)V

    .line 283
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->aXc:Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->doFinal()[B
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 285
    :catch_0
    move-exception v2

    .line 287
    new-instance v0, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetBlockSize()I
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->aXc:Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->iB()I

    move-result v0

    return v0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 3

    .line 77
    instance-of v0, p1, Lorg/spongycastle/jce/interfaces/ElGamalKey;

    if-eqz v0, :cond_0

    .line 79
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jce/interfaces/ElGamalKey;

    move-object v2, v0

    .line 81
    invoke-interface {v2}, Lorg/spongycastle/jce/interfaces/ElGamalKey;->nG()Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0

    .line 83
    :cond_0
    instance-of v0, p1, Ljavax/crypto/interfaces/DHKey;

    if-eqz v0, :cond_1

    .line 85
    move-object v0, p1

    check-cast v0, Ljavax/crypto/interfaces/DHKey;

    move-object v2, v0

    .line 87
    invoke-interface {v2}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not an ElGamal key!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->aXc:Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->iC()I

    move-result v0

    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 3

    .line 101
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->aXe:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->aXd:Ljava/security/spec/AlgorithmParameterSpec;

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "OAEP"

    const-string v1, "SC"

    :try_start_0
    invoke-static {v0, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->aXe:Ljava/security/AlgorithmParameters;

    .line 108
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->aXe:Ljava/security/AlgorithmParameters;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->aXd:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_0

    .line 110
    :catch_0
    move-exception v2

    .line 112
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->aXe:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 2

    .line 242
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "can\'t handle parameters in ElGamal"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 1

    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 252
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 4

    .line 195
    if-nez p3, :cond_2

    .line 197
    instance-of v0, p2, Lorg/spongycastle/jce/interfaces/ElGamalPublicKey;

    if-eqz v0, :cond_0

    .line 199
    move-object v0, p2

    check-cast v0, Ljava/security/PublicKey;

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/ElGamalUtil;->ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v3

    goto :goto_0

    .line 201
    :cond_0
    instance-of v0, p2, Lorg/spongycastle/jce/interfaces/ElGamalPrivateKey;

    if-eqz v0, :cond_1

    .line 203
    move-object v0, p2

    check-cast v0, Ljava/security/PrivateKey;

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/ElGamalUtil;->ˊ(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v3

    goto :goto_0

    .line 207
    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "unknown key type passed to ElGamal"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown parameter type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :goto_0
    if-eqz p4, :cond_3

    .line 217
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v0, v3, p4}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    move-object v3, v0

    .line 220
    :cond_3
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 224
    :pswitch_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->aXc:Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 225
    goto :goto_2

    .line 228
    :pswitch_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->aXc:Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 229
    goto :goto_2

    .line 231
    :goto_1
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown opmode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " passed to ElGamal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 4

    .line 124
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->ʟ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    const-string v0, "NONE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ECB"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    :cond_0
    return-void

    .line 131
    :cond_1
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
    .locals 6

    .line 138
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->ʟ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 140
    const-string v0, "NOPADDING"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/engines/ElGamalEngine;

    invoke-direct {v1}, Lorg/spongycastle/crypto/engines/ElGamalEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->aXc:Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    goto/16 :goto_0

    .line 144
    :cond_0
    const-string v0, "PKCS1PADDING"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    new-instance v0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;

    new-instance v2, Lorg/spongycastle/crypto/engines/ElGamalEngine;

    invoke-direct {v2}, Lorg/spongycastle/crypto/engines/ElGamalEngine;-><init>()V

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->aXc:Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    goto/16 :goto_0

    .line 148
    :cond_1
    const-string v0, "ISO9796-1PADDING"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    new-instance v0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;

    new-instance v2, Lorg/spongycastle/crypto/engines/ElGamalEngine;

    invoke-direct {v2}, Lorg/spongycastle/crypto/engines/ElGamalEngine;-><init>()V

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->aXc:Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    goto/16 :goto_0

    .line 152
    :cond_2
    const-string v0, "OAEPPADDING"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    sget-object v0, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->ˊ(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto/16 :goto_0

    .line 156
    :cond_3
    const-string v0, "OAEPWITHMD5ANDMGF1PADDING"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 158
    new-instance v0, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v1, "MD5"

    const-string v2, "MGF1"

    new-instance v3, Ljava/security/spec/MGF1ParameterSpec;

    const-string v4, "MD5"

    invoke-direct {v3, v4}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->ˊ(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto/16 :goto_0

    .line 160
    :cond_4
    const-string v0, "OAEPWITHSHA1ANDMGF1PADDING"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 162
    sget-object v0, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->ˊ(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto/16 :goto_0

    .line 164
    :cond_5
    const-string v0, "OAEPWITHSHA224ANDMGF1PADDING"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 166
    new-instance v0, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v1, "SHA-224"

    const-string v2, "MGF1"

    new-instance v3, Ljava/security/spec/MGF1ParameterSpec;

    const-string v4, "SHA-224"

    invoke-direct {v3, v4}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->ˊ(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto/16 :goto_0

    .line 168
    :cond_6
    const-string v0, "OAEPWITHSHA256ANDMGF1PADDING"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 170
    new-instance v0, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v1, "SHA-256"

    const-string v2, "MGF1"

    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v4, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->ˊ(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto :goto_0

    .line 172
    :cond_7
    const-string v0, "OAEPWITHSHA384ANDMGF1PADDING"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 174
    new-instance v0, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v1, "SHA-384"

    const-string v2, "MGF1"

    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA384:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v4, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->ˊ(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto :goto_0

    .line 176
    :cond_8
    const-string v0, "OAEPWITHSHA512ANDMGF1PADDING"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 178
    new-instance v0, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v1, "SHA-512"

    const-string v2, "MGF1"

    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v4, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->ˊ(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto :goto_0

    .line 182
    :cond_9
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unavailable with ElGamal."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :goto_0
    return-void
.end method

.method protected engineUpdate([BII[BI)I
    .locals 1

    .line 270
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->aXc:Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->ـ([BII)V

    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method protected engineUpdate([BII)[B
    .locals 1

    .line 259
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->aXc:Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->ـ([BII)V

    .line 260
    const/4 v0, 0x0

    return-object v0
.end method
