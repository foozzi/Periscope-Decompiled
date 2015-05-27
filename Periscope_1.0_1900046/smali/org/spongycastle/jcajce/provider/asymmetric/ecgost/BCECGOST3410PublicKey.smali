.class public Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;
.implements Lorg/spongycastle/jce/interfaces/ECPointEncoder;
.implements Lorg/spongycastle/jce/interfaces/ECPublicKey;


# instance fields
.field private transient aRv:Lorg/spongycastle/math/ec/ECPoint;

.field private aWI:Ljava/lang/String;

.field private aWJ:Z

.field private transient aWK:Ljava/security/spec/ECParameterSpec;

.field private transient aWZ:Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)V
    .locals 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWI:Ljava/lang/String;

    .line 143
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWI:Ljava/lang/String;

    .line 144
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Ljava/security/spec/ECParameterSpec;)V
    .locals 4

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWI:Ljava/lang/String;

    .line 95
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->kG()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    .line 97
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWI:Ljava/lang/String;

    .line 98
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    .line 100
    if-nez p3, :cond_0

    .line 102
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v3

    .line 104
    invoke-direct {p0, v3, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ˊ(Ljava/security/spec/EllipticCurve;Lorg/spongycastle/crypto/params/ECDomainParameters;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 105
    goto :goto_0

    .line 108
    :cond_0
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 110
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/jce/spec/ECParameterSpec;)V
    .locals 4

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWI:Ljava/lang/String;

    .line 117
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->kG()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    .line 119
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWI:Ljava/lang/String;

    .line 120
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    .line 122
    if-nez p3, :cond_0

    .line 124
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v3

    .line 126
    invoke-direct {p0, v3, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ˊ(Ljava/security/spec/EllipticCurve;Lorg/spongycastle/crypto/params/ECDomainParameters;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 127
    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p3}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p3}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v3

    .line 132
    invoke-static {v3, p3}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/EllipticCurve;Lorg/spongycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 134
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/security/spec/ECPublicKeySpec;)V
    .locals 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWI:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 63
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p1}, Ljava/security/spec/ECPublicKeySpec;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    .line 64
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWI:Ljava/lang/String;

    .line 170
    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ˎ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 171
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/jce/spec/ECPublicKeySpec;)V
    .locals 5

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWI:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECPublicKeySpec;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    .line 71
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECPublicKeySpec;->pd()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECPublicKeySpec;->pd()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    .line 74
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECPublicKeySpec;->pd()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v0

    invoke-static {v3, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v4

    .line 76
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECPublicKeySpec;->pd()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/EllipticCurve;Lorg/spongycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 77
    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    if-nez v0, :cond_1

    .line 82
    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baC:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->nN()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v3

    .line 84
    invoke-virtual {v3}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/math/ec/ECCurve;->ᐝ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    .line 86
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 88
    :goto_0
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .line 380
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 382
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    move-object v1, v0

    .line 384
    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->ן(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ˎ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 385
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .line 391
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 393
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 394
    return-void
.end method

.method private ˊ(Ljava/security/spec/EllipticCurve;Lorg/spongycastle/crypto/params/ECDomainParameters;)Ljava/security/spec/ECParameterSpec;
    .locals 4

    .line 150
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    new-instance v1, Ljava/security/spec/ECPoint;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->gy()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->ix()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method private ˊ([BILjava/math/BigInteger;)V
    .locals 5

    .line 283
    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 284
    array-length v0, v3

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 286
    const/16 v0, 0x20

    new-array v4, v0, [B

    .line 287
    array-length v0, v4

    array-length v1, v3

    sub-int/2addr v0, v1

    array-length v1, v3

    const/4 v2, 0x0

    invoke-static {v3, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    move-object v3, v4

    .line 291
    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/16 v0, 0x20

    if-eq v4, v0, :cond_1

    .line 293
    add-int v0, p2, v4

    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v4

    aget-byte v1, v3, v1

    aput-byte v1, p1, v0

    .line 291
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 295
    :cond_1
    return-void
.end method

.method private ˎ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 14

    .line 175
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->hW()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v6

    .line 177
    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWI:Ljava/lang/String;

    .line 181
    :try_start_0
    invoke-virtual {v6}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    .line 186
    goto :goto_0

    .line 183
    :catch_0
    move-exception v8

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "error recovering public key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :goto_0
    invoke-virtual {v7}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v8

    .line 189
    const/16 v0, 0x20

    new-array v9, v0, [B

    .line 190
    const/16 v0, 0x20

    new-array v10, v0, [B

    .line 192
    const/4 v11, 0x0

    :goto_1
    array-length v0, v9

    if-eq v11, v0, :cond_0

    .line 194
    rsub-int/lit8 v0, v11, 0x1f

    aget-byte v0, v8, v0

    aput-byte v0, v9, v11

    .line 192
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 197
    :cond_0
    const/4 v11, 0x0

    :goto_2
    array-length v0, v10

    if-eq v11, v0, :cond_1

    .line 199
    rsub-int/lit8 v0, v11, 0x3f

    aget-byte v0, v8, v0

    aput-byte v0, v10, v11

    .line 197
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 202
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->hU()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->ˤ(Ljava/lang/Object;)Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWZ:Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    .line 204
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWZ:Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->fq()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->ˎ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jce/ECGOST3410NamedCurveTable;->ﺩ(Ljava/lang/String;)Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;

    move-result-object v11

    .line 206
    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v12

    .line 207
    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;->getSeed()[B

    move-result-object v0

    invoke-static {v12, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v13

    .line 209
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v9}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v10}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v12, v0, v1}, Lorg/spongycastle/math/ec/ECCurve;->ᐝ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    .line 211
    new-instance v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWZ:Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->fq()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->ˎ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;->gy()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;->ix()Ljava/math/BigInteger;

    move-result-object v5

    move-object v2, v13

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 218
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 361
    instance-of v0, p1, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;

    if-nez v0, :cond_0

    .line 363
    const/4 v0, 0x0

    return v0

    .line 366
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;

    move-object v2, v0

    .line 368
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->nE()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v2}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->nE()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->ʻ(Lorg/spongycastle/math/ec/ECPoint;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->nC()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v2}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->nC()Lorg/spongycastle/jce/spec/ECParameterSpec;

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

    .line 222
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWI:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 12

    .line 235
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWZ:Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    if-eqz v0, :cond_0

    .line 237
    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWZ:Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    instance-of v0, v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    if-eqz v0, :cond_1

    .line 243
    new-instance v6, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    check-cast v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->ϊ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->ahg:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v6, v0, v1}, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    goto :goto_0

    .line 249
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/EllipticCurve;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v8

    .line 251
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-object v1, v8

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v2

    iget-boolean v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWJ:Z

    invoke-static {v8, v2, v3}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Lorg/spongycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v5}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object v9, v0

    .line 258
    new-instance v6, Lorg/spongycastle/asn1/x9/X962Parameters;

    invoke-direct {v6, v9}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/x9/X9ECParameters;)V

    .line 262
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v8

    .line 263
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v9

    .line 264
    const/16 v0, 0x40

    new-array v10, v0, [B

    .line 266
    const/4 v0, 0x0

    invoke-direct {p0, v10, v0, v8}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ˊ([BILjava/math/BigInteger;)V

    .line 267
    const/16 v0, 0x20

    invoke-direct {p0, v10, v0, v9}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ˊ([BILjava/math/BigInteger;)V

    .line 271
    :try_start_0
    new-instance v7, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->ahd:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1, v6}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v1, v10}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v7, v0, v1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    goto :goto_1

    .line 273
    :catch_0
    move-exception v11

    .line 275
    const/4 v0, 0x0

    return-object v0

    .line 278
    :goto_1
    invoke-static {v7}, Lorg/spongycastle/jcajce/provider/asymmetric/util/KeyUtil;->ᐝ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 227
    const-string v0, "X.509"

    return-object v0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .line 299
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .locals 3

    .line 314
    new-instance v0, Ljava/security/spec/ECPoint;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 373
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->nE()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->nC()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public kH()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 319
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->pE()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 324
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public nB()Lorg/spongycastle/jce/spec/ECParameterSpec;
    .locals 2

    .line 304
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    .line 306
    const/4 v0, 0x0

    return-object v0

    .line 309
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWJ:Z

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/ECParameterSpec;Z)Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method nC()Lorg/spongycastle/jce/spec/ECParameterSpec;
    .locals 2

    .line 334
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWJ:Z

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/ECParameterSpec;Z)Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0

    .line 339
    :cond_0
    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baC:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->nN()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public nE()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 329
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public nF()Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;
    .locals 1

    .line 398
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aWZ:Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 344
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 345
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 347
    const-string v0, "EC Public Key"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    const-string v0, "            X: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    const-string v0, "            Y: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
