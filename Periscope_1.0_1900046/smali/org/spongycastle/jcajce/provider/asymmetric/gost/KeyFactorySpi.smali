.class public Lorg/spongycastle/jcajce/provider/asymmetric/gost/KeyFactorySpi;
.super Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 2

    .line 72
    instance-of v0, p1, Lorg/spongycastle/jce/spec/GOST3410PrivateKeySpec;

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/jce/spec/GOST3410PrivateKeySpec;

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;-><init>(Lorg/spongycastle/jce/spec/GOST3410PrivateKeySpec;)V

    return-object v0

    .line 77
    :cond_0
    invoke-super {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 2

    .line 84
    instance-of v0, p1, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;-><init>(Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;)V

    return-object v0

    .line 89
    :cond_0
    invoke-super {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 7

    .line 34
    const-class v0, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/spongycastle/jce/interfaces/GOST3410PublicKey;

    if-eqz v0, :cond_0

    .line 36
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jce/interfaces/GOST3410PublicKey;

    move-object v5, v0

    .line 37
    invoke-interface {v5}, Lorg/spongycastle/jce/interfaces/GOST3410PublicKey;->nH()Lorg/spongycastle/jce/interfaces/GOST3410Params;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oO()Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    move-result-object v6

    .line 39
    new-instance v0, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;

    invoke-interface {v5}, Lorg/spongycastle/jce/interfaces/GOST3410PublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v6}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v6}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v6}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getA()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 41
    :cond_0
    const-class v0, Lorg/spongycastle/jce/spec/GOST3410PrivateKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lorg/spongycastle/jce/interfaces/GOST3410PrivateKey;

    if-eqz v0, :cond_1

    .line 43
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jce/interfaces/GOST3410PrivateKey;

    move-object v5, v0

    .line 44
    invoke-interface {v5}, Lorg/spongycastle/jce/interfaces/GOST3410PrivateKey;->nH()Lorg/spongycastle/jce/interfaces/GOST3410Params;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oO()Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    move-result-object v6

    .line 46
    new-instance v0, Lorg/spongycastle/jce/spec/GOST3410PrivateKeySpec;

    invoke-interface {v5}, Lorg/spongycastle/jce/interfaces/GOST3410PrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v6}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v6}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v6}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getA()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/jce/spec/GOST3410PrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 49
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v0

    return-object v0
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 2

    .line 56
    instance-of v0, p1, Lorg/spongycastle/jce/interfaces/GOST3410PublicKey;

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/jce/interfaces/GOST3410PublicKey;

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;-><init>(Lorg/spongycastle/jce/interfaces/GOST3410PublicKey;)V

    return-object v0

    .line 60
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/jce/interfaces/GOST3410PrivateKey;

    if-eqz v0, :cond_1

    .line 62
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/jce/interfaces/GOST3410PrivateKey;

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;-><init>(Lorg/spongycastle/jce/interfaces/GOST3410PrivateKey;)V

    return-object v0

    .line 65
    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key type unknown"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ˊ(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .locals 4

    .line 95
    invoke-virtual {p1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->fW()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    .line 97
    sget-object v0, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->ahc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;

    invoke-direct {v0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;-><init>(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)V

    return-object v0

    .line 103
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

    .line 110
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->hU()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    .line 112
    sget-object v0, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->ahc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;

    invoke-direct {v0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;-><init>(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V

    return-object v0

    .line 118
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
