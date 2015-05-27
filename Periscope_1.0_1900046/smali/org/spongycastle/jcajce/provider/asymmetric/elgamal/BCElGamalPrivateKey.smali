.class public Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/crypto/interfaces/DHPrivateKey;
.implements Lorg/spongycastle/jce/interfaces/ElGamalPrivateKey;
.implements Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# instance fields
.field private aFO:Ljava/math/BigInteger;

.field private transient aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

.field private transient aXb:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 40
    return-void
.end method

.method constructor <init>(Ljavax/crypto/interfaces/DHPrivateKey;)V
    .locals 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 52
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->aFO:Ljava/math/BigInteger;

    .line 53
    new-instance v0, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->aXb:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    .line 54
    return-void
.end method

.method constructor <init>(Ljavax/crypto/spec/DHPrivateKeySpec;)V
    .locals 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 66
    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->aFO:Ljava/math/BigInteger;

    .line 67
    new-instance v0, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->aXb:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    .line 68
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 5

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 74
    invoke-virtual {p1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->fW()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->ᔅ(Ljava/lang/Object;)Lorg/spongycastle/asn1/oiw/ElGamalParameter;

    move-result-object v3

    .line 75
    invoke-virtual {p1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->fY()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v4

    .line 77
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->aFO:Ljava/math/BigInteger;

    .line 78
    new-instance v0, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v3}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->aXb:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    .line 79
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;)V
    .locals 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 84
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->aFO:Ljava/math/BigInteger;

    .line 85
    new-instance v0, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;->kI()Lorg/spongycastle/crypto/params/ElGamalParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ElGamalParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;->kI()Lorg/spongycastle/crypto/params/ElGamalParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ElGamalParameters;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->aXb:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    .line 86
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/jce/interfaces/ElGamalPrivateKey;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 45
    invoke-interface {p1}, Lorg/spongycastle/jce/interfaces/ElGamalPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->aFO:Ljava/math/BigInteger;

    .line 46
    invoke-interface {p1}, Lorg/spongycastle/jce/interfaces/ElGamalPrivateKey;->nG()Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->aXb:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    .line 47
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/jce/spec/ElGamalPrivateKeySpec;)V
    .locals 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 59
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ElGamalPrivateKeySpec;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->aFO:Ljava/math/BigInteger;

    .line 60
    new-instance v0, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ElGamalPrivateKeySpec;->pe()Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ElGamalPrivateKeySpec;->pe()Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->aXb:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    .line 61
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3

    .line 164
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 166
    new-instance v0, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->aXb:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    .line 167
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 168
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .line 174
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 176
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->aXb:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->aXb:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 178
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 141
    instance-of v0, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x0

    return v0

    .line 146
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/crypto/interfaces/DHPrivateKey;

    move-object v2, v0

    .line 148
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {v2}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {v2}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {v2}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v0

    invoke-interface {v2}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 90
    const-string v0, "ElGamal"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 6

    .line 113
    :try_start_0
    new-instance v5, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->apP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/spongycastle/asn1/oiw/ElGamalParameter;

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->aXb:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v3}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->aXb:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v4}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v5, v0, v1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 115
    const-string v0, "DER"

    invoke-virtual {v5, v0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 117
    :catch_0
    move-exception v5

    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 100
    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .locals 3

    .line 130
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->aXb:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->aXb:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v2}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->aFO:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 156
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public nA()Ljava/util/Enumeration;
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->nA()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public nG()Lorg/spongycastle/jce/spec/ElGamalParameterSpec;
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->aXb:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    return-object v0
.end method

.method public ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 185
    return-void
.end method

.method public ͺ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->ͺ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method
