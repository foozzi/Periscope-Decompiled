.class public Lorg/spongycastle/jce/provider/JCERSAPrivateKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/interfaces/RSAPrivateKey;
.implements Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# static fields
.field private static ZERO:Ljava/math/BigInteger;


# instance fields
.field private aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

.field protected ajI:Ljava/math/BigInteger;

.field protected asS:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/JCERSAPrivateKey;->ZERO:Ljava/math/BigInteger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCERSAPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 35
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 128
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCERSAPrivateKey;->ajI:Ljava/math/BigInteger;

    .line 129
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCERSAPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 131
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCERSAPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->readObject(Ljava/io/ObjectInputStream;)V

    .line 133
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCERSAPrivateKey;->asS:Ljava/math/BigInteger;

    .line 134
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCERSAPrivateKey;->ajI:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCERSAPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->writeObject(Ljava/io/ObjectOutputStream;)V

    .line 144
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCERSAPrivateKey;->asS:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 145
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 85
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    return v0

    .line 90
    :cond_0
    if-ne p1, p0, :cond_1

    .line 92
    const/4 v0, 0x1

    return v0

    .line 95
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    move-object v2, v0

    .line 97
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCERSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {v2}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCERSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {v2}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 70
    const-string v0, "RSA"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 10

    .line 80
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aqq:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/asn1/DERNull;->abj:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCERSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lorg/spongycastle/jce/provider/JCERSAPrivateKey;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCERSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lorg/spongycastle/jce/provider/JCERSAPrivateKey;->ZERO:Ljava/math/BigInteger;

    sget-object v6, Lorg/spongycastle/jce/provider/JCERSAPrivateKey;->ZERO:Ljava/math/BigInteger;

    sget-object v7, Lorg/spongycastle/jce/provider/JCERSAPrivateKey;->ZERO:Ljava/math/BigInteger;

    sget-object v8, Lorg/spongycastle/jce/provider/JCERSAPrivateKey;->ZERO:Ljava/math/BigInteger;

    sget-object v9, Lorg/spongycastle/jce/provider/JCERSAPrivateKey;->ZERO:Ljava/math/BigInteger;

    invoke-direct/range {v1 .. v9}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/KeyUtil;->ˋ(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 75
    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCERSAPrivateKey;->ajI:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrivateExponent()Ljava/math/BigInteger;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCERSAPrivateKey;->asS:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 103
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCERSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCERSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public nA()Ljava/util/Enumeration;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCERSAPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->nA()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCERSAPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 111
    return-void
.end method

.method public ͺ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCERSAPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->ͺ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method
