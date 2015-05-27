.class public Lorg/spongycastle/jce/provider/JCEDHPrivateKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/crypto/interfaces/DHPrivateKey;
.implements Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# instance fields
.field aFO:Ljava/math/BigInteger;

.field private aWo:Ljavax/crypto/spec/DHParameterSpec;

.field private aWp:Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

.field private aXi:Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEDHPrivateKey;->aXi:Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 42
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4

    .line 155
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEDHPrivateKey;->aFO:Ljava/math/BigInteger;

    .line 157
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEDHPrivateKey;->aWo:Ljavax/crypto/spec/DHParameterSpec;

    .line 158
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .line 164
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEDHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEDHPrivateKey;->aWo:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEDHPrivateKey;->aWo:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEDHPrivateKey;->aWo:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 168
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 103
    const-string v0, "DH"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 7

    .line 126
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEDHPrivateKey;->aWp:Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEDHPrivateKey;->aWp:Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 131
    :cond_0
    :try_start_1
    new-instance v6, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aqE:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/spongycastle/asn1/pkcs/DHParameter;

    iget-object v3, p0, Lorg/spongycastle/jce/provider/JCEDHPrivateKey;->aWo:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/jce/provider/JCEDHPrivateKey;->aWo:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/jce/provider/JCEDHPrivateKey;->aWo:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v5}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lorg/spongycastle/asn1/pkcs/DHParameter;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEDHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v6, v0, v1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 133
    const-string v0, "DER"

    invoke-virtual {v6, v0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    .line 135
    :catch_0
    move-exception v6

    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 113
    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEDHPrivateKey;->aWo:Ljavax/crypto/spec/DHParameterSpec;

    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEDHPrivateKey;->aFO:Ljava/math/BigInteger;

    return-object v0
.end method

.method public nA()Ljava/util/Enumeration;
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEDHPrivateKey;->aXi:Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->nA()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEDHPrivateKey;->aXi:Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 175
    return-void
.end method

.method public ͺ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEDHPrivateKey;->aXi:Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v0, p1}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->ͺ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method
