.class public Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/jce/interfaces/GOST3410PrivateKey;
.implements Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# instance fields
.field private aFO:Ljava/math/BigInteger;

.field private transient aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

.field private transient aXi:Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aXi:Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 40
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 7

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aXi:Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 60
    new-instance v2, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->fX()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v2, v0}, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 61
    invoke-virtual {p1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->fY()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->ﹸ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v3

    .line 62
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v4

    .line 63
    array-length v0, v4

    new-array v5, v0, [B

    .line 65
    const/4 v6, 0x0

    :goto_0
    array-length v0, v4

    if-eq v6, v0, :cond_0

    .line 67
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v6

    aget-byte v0, v4, v0

    aput-byte v0, v5, v6

    .line 65
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aFO:Ljava/math/BigInteger;

    .line 71
    invoke-static {v2}, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;->ˊ(Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;)Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    .line 72
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/crypto/params/GOST3410PrivateKeyParameters;Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;)V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aXi:Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 78
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/GOST3410PrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aFO:Ljava/math/BigInteger;

    .line 79
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    .line 81
    if-nez p2, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "spec is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/jce/interfaces/GOST3410PrivateKey;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aXi:Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 45
    invoke-interface {p1}, Lorg/spongycastle/jce/interfaces/GOST3410PrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aFO:Ljava/math/BigInteger;

    .line 46
    invoke-interface {p1}, Lorg/spongycastle/jce/interfaces/GOST3410PrivateKey;->nH()Lorg/spongycastle/jce/interfaces/GOST3410Params;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    .line 47
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/jce/spec/GOST3410PrivateKeySpec;)V
    .locals 5

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aXi:Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 52
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/GOST3410PrivateKeySpec;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aFO:Ljava/math/BigInteger;

    .line 53
    new-instance v0, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;

    new-instance v1, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/GOST3410PrivateKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/GOST3410PrivateKeySpec;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/GOST3410PrivateKeySpec;->getA()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;-><init>(Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    .line 54
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6

    .line 215
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 217
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 218
    if-eqz v5, :cond_0

    .line 220
    new-instance v0, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v5, v1, v2}, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    goto :goto_0

    .line 224
    :cond_0
    new-instance v0, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;

    new-instance v1, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3, v4}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;-><init>(Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    .line 225
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 226
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 228
    :goto_0
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aXi:Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 229
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .line 235
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 237
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 245
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 246
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oO()Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 247
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oO()Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 248
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oO()Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 252
    :goto_0
    return-void
.end method

.method private ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 175
    if-ne p1, p2, :cond_0

    .line 177
    const/4 v0, 0x1

    return v0

    .line 180
    :cond_0
    if-nez p1, :cond_1

    .line 182
    const/4 v0, 0x0

    return v0

    .line 185
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 160
    instance-of v0, p1, Lorg/spongycastle/jce/interfaces/GOST3410PrivateKey;

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x0

    return v0

    .line 165
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jce/interfaces/GOST3410PrivateKey;

    move-object v2, v0

    .line 167
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {v2}, Lorg/spongycastle/jce/interfaces/GOST3410PrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->nH()Lorg/spongycastle/jce/interfaces/GOST3410Params;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oO()Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    move-result-object v0

    invoke-interface {v2}, Lorg/spongycastle/jce/interfaces/GOST3410PrivateKey;->nH()Lorg/spongycastle/jce/interfaces/GOST3410Params;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oO()Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->nH()Lorg/spongycastle/jce/interfaces/GOST3410Params;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oM()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2}, Lorg/spongycastle/jce/interfaces/GOST3410PrivateKey;->nH()Lorg/spongycastle/jce/interfaces/GOST3410Params;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->nH()Lorg/spongycastle/jce/interfaces/GOST3410Params;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oN()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2}, Lorg/spongycastle/jce/interfaces/GOST3410PrivateKey;->nH()Lorg/spongycastle/jce/interfaces/GOST3410Params;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oN()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 89
    const-string v0, "GOST3410"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 10

    .line 111
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    .line 114
    const/4 v0, 0x0

    aget-byte v0, v7, v0

    if-nez v0, :cond_0

    .line 116
    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    new-array v8, v0, [B

    goto :goto_0

    .line 120
    :cond_0
    array-length v0, v7

    new-array v8, v0, [B

    .line 123
    :goto_0
    const/4 v9, 0x0

    :goto_1
    array-length v0, v8

    if-eq v9, v0, :cond_1

    .line 125
    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v9

    aget-byte v0, v7, v0

    aput-byte v0, v8, v9

    .line 123
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 130
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    instance-of v0, v0, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;

    if-eqz v0, :cond_2

    .line 132
    new-instance v6, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->ahc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    new-instance v3, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v4}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v4, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v5}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oM()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v1, v8}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v6, v0, v1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_2

    .line 136
    :cond_2
    new-instance v6, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->ahc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v1, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v1, v8}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v6, v0, v1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 139
    :goto_2
    const-string v0, "DER"

    invoke-virtual {v6, v0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 141
    :catch_0
    move-exception v9

    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 99
    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aFO:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 190
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public nA()Ljava/util/Enumeration;
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aXi:Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->nA()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public nH()Lorg/spongycastle/jce/interfaces/GOST3410Params;
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    return-object v0
.end method

.method public ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aXi:Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 198
    return-void
.end method

.method public ͺ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PrivateKey;->aXi:Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v0, p1}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->ͺ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method
