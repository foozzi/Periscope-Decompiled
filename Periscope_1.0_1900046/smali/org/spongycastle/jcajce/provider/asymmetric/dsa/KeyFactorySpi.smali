.class public Lorg/spongycastle/jcajce/provider/asymmetric/dsa/KeyFactorySpi;
.super Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 2

    .line 98
    instance-of v0, p1, Ljava/security/spec/DSAPrivateKeySpec;

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/BCDSAPrivateKey;

    move-object v1, p1

    check-cast v1, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/BCDSAPrivateKey;-><init>(Ljava/security/spec/DSAPrivateKeySpec;)V

    return-object v0

    .line 103
    :cond_0
    invoke-super {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 2

    .line 110
    instance-of v0, p1, Ljava/security/spec/DSAPublicKeySpec;

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;

    move-object v1, p1

    check-cast v1, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;-><init>(Ljava/security/spec/DSAPublicKeySpec;)V

    return-object v0

    .line 115
    :cond_0
    invoke-super {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 6

    .line 32
    const-class v0, Ljava/security/spec/DSAPublicKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v0, :cond_0

    .line 34
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    move-object v5, v0

    .line 36
    new-instance v0, Ljava/security/spec/DSAPublicKeySpec;

    invoke-interface {v5}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v5}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v5}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v5}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 38
    :cond_0
    const-class v0, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v0, :cond_1

    .line 40
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/DSAPrivateKey;

    move-object v5, v0

    .line 42
    new-instance v0, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-interface {v5}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v5}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v5}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v5}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 45
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v0

    return-object v0
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 2

    .line 52
    instance-of v0, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;

    move-object v1, p1

    check-cast v1, Ljava/security/interfaces/DSAPublicKey;

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;-><init>(Ljava/security/interfaces/DSAPublicKey;)V

    return-object v0

    .line 56
    :cond_0
    instance-of v0, p1, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v0, :cond_1

    .line 58
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/BCDSAPrivateKey;

    move-object v1, p1

    check-cast v1, Ljava/security/interfaces/DSAPrivateKey;

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/BCDSAPrivateKey;-><init>(Ljava/security/interfaces/DSAPrivateKey;)V

    return-object v0

    .line 61
    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key type unknown"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ˊ(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .locals 4

    .line 67
    invoke-virtual {p1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->fW()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    .line 69
    invoke-static {v3}, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->ι(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/BCDSAPrivateKey;

    invoke-direct {v0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/BCDSAPrivateKey;-><init>(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)V

    return-object v0

    .line 75
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

.method public ˋ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .locals 4

    .line 82
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->hU()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    .line 84
    invoke-static {v3}, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->ι(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;

    invoke-direct {v0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;-><init>(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V

    return-object v0

    .line 90
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
