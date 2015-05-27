.class public Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/jce/interfaces/GOST3410PublicKey;


# instance fields
.field private aPZ:Ljava/math/BigInteger;

.field private transient aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;


# direct methods
.method constructor <init>(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 7

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v2, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->fX()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v2, v0}, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 69
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->hV()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/DEROctetString;

    move-object v3, v0

    .line 71
    invoke-virtual {v3}, Lorg/spongycastle/asn1/DEROctetString;->eM()[B

    move-result-object v4

    .line 72
    array-length v0, v4

    new-array v5, v0, [B

    .line 74
    const/4 v6, 0x0

    :goto_0
    array-length v0, v4

    if-eq v6, v0, :cond_0

    .line 76
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v6

    aget-byte v0, v4, v0

    aput-byte v0, v5, v6

    .line 74
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 79
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aPZ:Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_1

    .line 81
    :catch_0
    move-exception v4

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid info structure in GOST3410 public key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :goto_1
    invoke-static {v2}, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;->ˊ(Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;)Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    .line 87
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/crypto/params/GOST3410PublicKeyParameters;Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/GOST3410PublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aPZ:Ljava/math/BigInteger;

    .line 50
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    .line 51
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/jce/interfaces/GOST3410PublicKey;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-interface {p1}, Lorg/spongycastle/jce/interfaces/GOST3410PublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aPZ:Ljava/math/BigInteger;

    .line 42
    invoke-interface {p1}, Lorg/spongycastle/jce/interfaces/GOST3410PublicKey;->nH()Lorg/spongycastle/jce/interfaces/GOST3410Params;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    .line 43
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;)V
    .locals 5

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aPZ:Ljava/math/BigInteger;

    .line 35
    new-instance v0, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;

    new-instance v1, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;->getA()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;-><init>(Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    .line 36
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6

    .line 187
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 189
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 190
    if-eqz v5, :cond_0

    .line 192
    new-instance v0, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v5, v1, v2}, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    goto :goto_0

    .line 196
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

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    .line 197
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 198
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 200
    :goto_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .line 206
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 208
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 212
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 216
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 217
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oO()Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oO()Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oO()Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 220
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 223
    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 168
    instance-of v0, p1, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;

    if-eqz v0, :cond_1

    .line 170
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;

    move-object v2, v0

    .line 172
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aPZ:Ljava/math/BigInteger;

    iget-object v1, v2, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aPZ:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    iget-object v1, v2, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 175
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 91
    const-string v0, "GOST3410"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 11

    .line 102
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    .line 105
    const/4 v0, 0x0

    aget-byte v0, v8, v0

    if-nez v0, :cond_0

    .line 107
    array-length v0, v8

    add-int/lit8 v0, v0, -0x1

    new-array v9, v0, [B

    goto :goto_0

    .line 111
    :cond_0
    array-length v0, v8

    new-array v9, v0, [B

    .line 114
    :goto_0
    const/4 v10, 0x0

    :goto_1
    array-length v0, v9

    if-eq v10, v0, :cond_1

    .line 116
    array-length v0, v8

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v10

    aget-byte v0, v8, v0

    aput-byte v0, v9, v10

    .line 114
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 121
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    instance-of v0, v0, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;

    if-eqz v0, :cond_3

    .line 123
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oN()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 125
    new-instance v7, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->ahc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    new-instance v3, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v4}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v4, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v5}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oM()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v5, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v6}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oN()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v1, v9}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v7, v0, v1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_2

    .line 129
    :cond_2
    new-instance v7, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->ahc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    new-instance v3, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v4}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v4, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v5}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oM()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v1, v9}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v7, v0, v1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_2

    .line 134
    :cond_3
    new-instance v7, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->ahc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v1, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v1, v9}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v7, v0, v1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 137
    :goto_2
    invoke-static {v7}, Lorg/spongycastle/jcajce/provider/asymmetric/util/KeyUtil;->ᐝ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 139
    :catch_0
    move-exception v10

    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 96
    const-string v0, "X.509"

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aPZ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 180
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aPZ:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public nH()Lorg/spongycastle/jce/interfaces/GOST3410Params;
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->aXh:Lorg/spongycastle/jce/interfaces/GOST3410Params;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 157
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 158
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 160
    const-string v0, "GOST3410 Public Key"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    const-string v0, "            y: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/gost/BCGOST3410PublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
