.class public Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/crypto/interfaces/DHPublicKey;


# instance fields
.field private aPZ:Ljava/math/BigInteger;

.field private transient aWo:Ljavax/crypto/spec/DHParameterSpec;

.field private transient aWr:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;


# direct methods
.method constructor <init>(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->aPZ:Ljava/math/BigInteger;

    .line 60
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->aWo:Ljavax/crypto/spec/DHParameterSpec;

    .line 61
    return-void
.end method

.method constructor <init>(Ljavax/crypto/interfaces/DHPublicKey;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->aPZ:Ljava/math/BigInteger;

    .line 45
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->aWo:Ljavax/crypto/spec/DHParameterSpec;

    .line 46
    return-void
.end method

.method constructor <init>(Ljavax/crypto/spec/DHPublicKeySpec;)V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->aPZ:Ljava/math/BigInteger;

    .line 38
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->aWo:Ljavax/crypto/spec/DHParameterSpec;

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 8

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->aWr:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 71
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->hV()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    .line 76
    goto :goto_0

    .line 73
    :catch_0
    move-exception v5

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid info structure in DH public key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :goto_0
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->aPZ:Ljava/math/BigInteger;

    .line 80
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->hU()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v5

    .line 81
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->hU()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    .line 84
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aqE:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v5}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->ˎ(Lorg/spongycastle/asn1/ASN1Sequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    :cond_0
    invoke-static {v5}, Lorg/spongycastle/asn1/pkcs/DHParameter;->ᕁ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/DHParameter;

    move-result-object v7

    .line 88
    invoke-virtual {v7}, Lorg/spongycastle/asn1/pkcs/DHParameter;->fH()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v7}, Lorg/spongycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v7}, Lorg/spongycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v7}, Lorg/spongycastle/asn1/pkcs/DHParameter;->fH()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->aWo:Ljavax/crypto/spec/DHParameterSpec;

    goto :goto_1

    .line 94
    :cond_1
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v7}, Lorg/spongycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v7}, Lorg/spongycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->aWo:Ljavax/crypto/spec/DHParameterSpec;

    .line 96
    :goto_1
    goto :goto_2

    .line 97
    :cond_2
    sget-object v0, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->aEI:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    invoke-static {v5}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->ᴊ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/DHDomainParameters;

    move-result-object v7

    .line 101
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->ij()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->ik()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->aWo:Ljavax/crypto/spec/DHParameterSpec;

    .line 102
    goto :goto_2

    .line 105
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown algorithm type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :goto_2
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;)V
    .locals 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->aPZ:Ljava/math/BigInteger;

    .line 52
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->kA()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->kA()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->kA()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/DHParameters;->getL()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->aWo:Ljavax/crypto/spec/DHParameterSpec;

    .line 53
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4

    .line 188
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 190
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

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->aWo:Ljavax/crypto/spec/DHParameterSpec;

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->aWr:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 192
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .line 198
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 200
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->aWo:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 201
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->aWo:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->aWo:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 203
    return-void
.end method

.method private ˎ(Lorg/spongycastle/asn1/ASN1Sequence;)Z
    .locals 5

    .line 141
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 143
    const/4 v0, 0x1

    return v0

    .line 146
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 148
    const/4 v0, 0x0

    return v0

    .line 151
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v3

    .line 152
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v4

    .line 154
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_2

    .line 156
    const/4 v0, 0x0

    return v0

    .line 159
    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 171
    instance-of v0, p1, Ljavax/crypto/interfaces/DHPublicKey;

    if-nez v0, :cond_0

    .line 173
    const/4 v0, 0x0

    return v0

    .line 176
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    move-object v2, v0

    .line 178
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {v2}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {v2}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {v2}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v0

    invoke-interface {v2}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

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

    .line 111
    const-string v0, "DH"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 6

    .line 121
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->aWr:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->aWr:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/KeyUtil;->ᐝ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object v0

    return-object v0

    .line 126
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aqE:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/spongycastle/asn1/pkcs/DHParameter;

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->aWo:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->aWo:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->aWo:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v5}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lorg/spongycastle/asn1/pkcs/DHParameter;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-virtual {v2}, Lorg/spongycastle/asn1/pkcs/DHParameter;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->aPZ:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/KeyUtil;->ˊ(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 116
    const-string v0, "X.509"

    return-object v0
.end method

.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->aWo:Ljavax/crypto/spec/DHParameterSpec;

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->aPZ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 164
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
