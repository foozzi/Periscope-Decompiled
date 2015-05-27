.class public Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyFactorySpi;
.super Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 5

    .line 87
    instance-of v0, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v0, :cond_0

    .line 91
    move-object v0, p1

    :try_start_0
    check-cast v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v0}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->ﹷ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/KeyFactorySpi;->ˊ(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 93
    :catch_0
    move-exception v3

    .line 100
    :try_start_1
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;

    move-object v1, p1

    check-cast v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->ﺑ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;-><init>(Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 103
    :catch_1
    move-exception v4

    .line 105
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/ExtendedInvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to process key spec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ExtendedInvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 109
    :cond_0
    instance-of v0, p1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    if-eqz v0, :cond_1

    .line 111
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;

    move-object v1, p1

    check-cast v1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;-><init>(Ljava/security/spec/RSAPrivateCrtKeySpec;)V

    return-object v0

    .line 113
    :cond_1
    instance-of v0, p1, Ljava/security/spec/RSAPrivateKeySpec;

    if-eqz v0, :cond_2

    .line 115
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;

    move-object v1, p1

    check-cast v1, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;-><init>(Ljava/security/spec/RSAPrivateKeySpec;)V

    return-object v0

    .line 118
    :cond_2
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown KeySpec type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 2

    .line 125
    instance-of v0, p1, Ljava/security/spec/RSAPublicKeySpec;

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;

    move-object v1, p1

    check-cast v1, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;-><init>(Ljava/security/spec/RSAPublicKeySpec;)V

    return-object v0

    .line 130
    :cond_0
    invoke-super {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 10

    .line 36
    const-class v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_0

    .line 38
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    move-object v9, v0

    .line 40
    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-interface {v9}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v9}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 42
    :cond_0
    const-class v0, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_1

    .line 44
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    move-object v9, v0

    .line 46
    new-instance v0, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 48
    :cond_1
    const-class v0, Ljava/security/spec/RSAPrivateCrtKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v0, :cond_2

    .line 50
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    move-object v9, v0

    .line 52
    new-instance v0, Ljava/security/spec/RSAPrivateCrtKeySpec;

    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface {v9}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 60
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v0

    return-object v0
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 2

    .line 67
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;

    move-object v1, p1

    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;-><init>(Ljava/security/interfaces/RSAPublicKey;)V

    return-object v0

    .line 71
    :cond_0
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v0, :cond_1

    .line 73
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;

    move-object v1, p1

    check-cast v1, Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;-><init>(Ljava/security/interfaces/RSAPrivateCrtKey;)V

    return-object v0

    .line 75
    :cond_1
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_2

    .line 77
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;

    move-object v1, p1

    check-cast v1, Ljava/security/interfaces/RSAPrivateKey;

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;-><init>(Ljava/security/interfaces/RSAPrivateKey;)V

    return-object v0

    .line 80
    :cond_2
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key type unknown"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ˊ(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .locals 5

    .line 136
    invoke-virtual {p1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->fW()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    .line 138
    invoke-static {v3}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->ʾ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {p1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->fY()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->ﺑ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;

    move-result-object v4

    .line 142
    invoke-virtual {v4}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->gi()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;

    invoke-direct {v0, v4}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateKey;-><init>(Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;)V

    return-object v0

    .line 148
    :cond_0
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;

    invoke-direct {v0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;-><init>(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)V

    return-object v0

    .line 153
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "algorithm identifier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in key not recognised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ˋ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .locals 4

    .line 160
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->hU()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    .line 162
    invoke-static {v3}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->ʾ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;

    invoke-direct {v0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;-><init>(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V

    return-object v0

    .line 168
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "algorithm identifier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in key not recognised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
