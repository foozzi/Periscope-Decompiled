.class public Lorg/spongycastle/jce/provider/JCEECPrivateKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/interfaces/ECPrivateKey;
.implements Lorg/spongycastle/jce/interfaces/ECPointEncoder;
.implements Lorg/spongycastle/jce/interfaces/ECPrivateKey;
.implements Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# instance fields
.field private aPU:Ljava/math/BigInteger;

.field private aWI:Ljava/lang/String;

.field private aWJ:Z

.field private aWK:Ljava/security/spec/ECParameterSpec;

.field private aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

.field private aft:Lorg/spongycastle/asn1/DERBitString;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "EC"

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWI:Ljava/lang/String;

    .line 51
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 55
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .line 456
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    move-object v1, v0

    .line 458
    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->ﹷ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->ˋ(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 460
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWI:Ljava/lang/String;

    .line 461
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWJ:Z

    .line 462
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 464
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->readObject(Ljava/io/ObjectInputStream;)V

    .line 465
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .line 471
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 472
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 473
    iget-boolean v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWJ:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 475
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->writeObject(Ljava/io/ObjectOutputStream;)V

    .line 476
    return-void
.end method

.method private ˋ(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 11

    .line 198
    new-instance v6, Lorg/spongycastle/asn1/x9/X962Parameters;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->fW()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Primitive;

    invoke-direct {v6, v0}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/ASN1Primitive;)V

    .line 200
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x9/X962Parameters;->gA()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x9/X962Parameters;->it()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﹴ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    .line 203
    invoke-static {v7}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ʿ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v8

    .line 205
    if-nez v8, :cond_0

    .line 207
    invoke-static {v7}, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v9

    .line 208
    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v10

    .line 210
    new-instance v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    invoke-static {v7}, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->ˎ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ECDomainParameters;->gy()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ECDomainParameters;->ix()Ljava/math/BigInteger;

    move-result-object v5

    move-object v2, v10

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 218
    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v9

    .line 223
    new-instance v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    invoke-static {v7}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ˈ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X9ECParameters;->gy()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X9ECParameters;->ix()Ljava/math/BigInteger;

    move-result-object v5

    move-object v2, v9

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 232
    :goto_0
    goto :goto_1

    .line 233
    :cond_1
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x9/X962Parameters;->is()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    goto :goto_1

    .line 239
    :cond_2
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x9/X962Parameters;->it()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->ﭘ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v7

    .line 240
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v8

    .line 242
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    new-instance v1, Ljava/security/spec/ECPoint;

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X9ECParameters;->gy()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X9ECParameters;->ix()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-direct {v0, v8, v1, v2, v3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 251
    :goto_1
    invoke-virtual {p1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->fY()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v7

    .line 252
    instance-of v0, v7, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_3

    .line 254
    invoke-static {v7}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v8

    .line 256
    invoke-virtual {v8}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aPU:Ljava/math/BigInteger;

    .line 257
    goto :goto_2

    .line 260
    :cond_3
    new-instance v8, Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;

    move-object v0, v7

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v8, v0}, Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 262
    invoke-virtual {v8}, Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;->gq()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aPU:Ljava/math/BigInteger;

    .line 263
    invoke-virtual {v8}, Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;->gr()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aft:Lorg/spongycastle/asn1/DERBitString;

    .line 265
    :goto_2
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 411
    instance-of v0, p1, Lorg/spongycastle/jce/provider/JCEECPrivateKey;

    if-nez v0, :cond_0

    .line 413
    const/4 v0, 0x0

    return v0

    .line 416
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;

    move-object v2, v0

    .line 418
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->kz()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2}, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->kz()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->nC()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v2}, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->nC()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWI:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 10

    .line 292
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    instance-of v0, v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    check-cast v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ᴊ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    .line 295
    if-nez v7, :cond_0

    .line 297
    new-instance v7, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    check-cast v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 299
    :cond_0
    new-instance v6, Lorg/spongycastle/asn1/x9/X962Parameters;

    invoke-direct {v6, v7}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 300
    goto :goto_0

    .line 301
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_2

    .line 303
    new-instance v6, Lorg/spongycastle/asn1/x9/X962Parameters;

    sget-object v0, Lorg/spongycastle/asn1/DERNull;->abj:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v6, v0}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/ASN1Primitive;)V

    goto :goto_0

    .line 307
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/EllipticCurve;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v7

    .line 309
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-object v1, v7

    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v2

    iget-boolean v3, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWJ:Z

    invoke-static {v7, v2, v3}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Lorg/spongycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v5}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object v8, v0

    .line 316
    new-instance v6, Lorg/spongycastle/asn1/x9/X962Parameters;

    invoke-direct {v6, v8}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/x9/X9ECParameters;)V

    .line 322
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aft:Lorg/spongycastle/asn1/DERBitString;

    if-eqz v0, :cond_3

    .line 324
    new-instance v8, Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aft:Lorg/spongycastle/asn1/DERBitString;

    invoke-direct {v8, v0, v1, v6}, Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/asn1/DERBitString;Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    .line 328
    :cond_3
    new-instance v8, Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v8, v0, v6}, Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 333
    :goto_1
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWI:Ljava/lang/String;

    const-string v1, "ECGOST3410"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 335
    new-instance v7, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->ahd:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lorg/spongycastle/asn1/x9/X962Parameters;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v8}, Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_2

    .line 340
    :cond_4
    new-instance v7, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->aDS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lorg/spongycastle/asn1/x9/X962Parameters;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v8}, Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 343
    :goto_2
    const-string v0, "DER"

    invoke-virtual {v7, v0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 345
    :catch_0
    move-exception v9

    .line 347
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 279
    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .line 353
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getS()Ljava/math/BigInteger;
    .locals 1

    .line 378
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aPU:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 423
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->kz()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->nC()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public kz()Ljava/math/BigInteger;
    .locals 1

    .line 383
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aPU:Ljava/math/BigInteger;

    return-object v0
.end method

.method public nA()Ljava/util/Enumeration;
    .locals 1

    .line 401
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->nA()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public nB()Lorg/spongycastle/jce/spec/ECParameterSpec;
    .locals 2

    .line 358
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    .line 360
    const/4 v0, 0x0

    return-object v0

    .line 363
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWJ:Z

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/ECParameterSpec;Z)Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method nC()Lorg/spongycastle/jce/spec/ECParameterSpec;
    .locals 2

    .line 368
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWJ:Z

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/ECParameterSpec;Z)Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0

    .line 373
    :cond_0
    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baC:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->nN()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 428
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 429
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 431
    const-string v0, "EC Private Key"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    const-string v0, "             S: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aPU:Ljava/math/BigInteger;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 434
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 390
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 391
    return-void
.end method

.method public ͺ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .line 396
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEECPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->ͺ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method
