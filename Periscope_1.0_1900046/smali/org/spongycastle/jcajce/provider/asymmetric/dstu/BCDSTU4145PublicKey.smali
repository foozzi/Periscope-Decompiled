.class public Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;
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

.field private transient aWL:Lorg/spongycastle/asn1/ua/DSTU4145Params;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)V
    .locals 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "DSTU4145"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWI:Ljava/lang/String;

    .line 147
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWI:Ljava/lang/String;

    .line 148
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Ljava/security/spec/ECParameterSpec;)V
    .locals 4

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "DSTU4145"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWI:Ljava/lang/String;

    .line 99
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->kG()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    .line 101
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWI:Ljava/lang/String;

    .line 102
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    .line 104
    if-nez p3, :cond_0

    .line 106
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v3

    .line 108
    invoke-direct {p0, v3, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ˊ(Ljava/security/spec/EllipticCurve;Lorg/spongycastle/crypto/params/ECDomainParameters;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 109
    goto :goto_0

    .line 112
    :cond_0
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 114
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/jce/spec/ECParameterSpec;)V
    .locals 4

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "DSTU4145"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWI:Ljava/lang/String;

    .line 121
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->kG()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    .line 123
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWI:Ljava/lang/String;

    .line 124
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    .line 126
    if-nez p3, :cond_0

    .line 128
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v3

    .line 130
    invoke-direct {p0, v3, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ˊ(Ljava/security/spec/EllipticCurve;Lorg/spongycastle/crypto/params/ECDomainParameters;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 131
    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p3}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p3}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v3

    .line 136
    invoke-static {v3, p3}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/EllipticCurve;Lorg/spongycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 138
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/security/spec/ECPublicKeySpec;)V
    .locals 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "DSTU4145"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWI:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 67
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p1}, Ljava/security/spec/ECPublicKeySpec;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    .line 68
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 1

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "DSTU4145"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWI:Ljava/lang/String;

    .line 174
    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ˎ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/jce/spec/ECPublicKeySpec;)V
    .locals 5

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "DSTU4145"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWI:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECPublicKeySpec;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    .line 75
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECPublicKeySpec;->pd()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECPublicKeySpec;->pd()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    .line 78
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECPublicKeySpec;->pd()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v0

    invoke-static {v3, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v4

    .line 80
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECPublicKeySpec;->pd()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/EllipticCurve;Lorg/spongycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 81
    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    if-nez v0, :cond_1

    .line 86
    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baC:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->nN()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v3

    .line 88
    invoke-virtual {v3}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/math/ec/ECCurve;->ᐝ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    .line 90
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 92
    :goto_0
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .line 416
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 418
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    move-object v1, v0

    .line 420
    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->ן(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ˎ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 421
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .line 427
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 429
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 430
    return-void
.end method

.method private ˊ(Ljava/security/spec/EllipticCurve;Lorg/spongycastle/crypto/params/ECDomainParameters;)Ljava/security/spec/ECParameterSpec;
    .locals 4

    .line 154
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

.method private ˎ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 17

    .line 191
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->hW()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v8

    .line 193
    const-string v0, "DSTU4145"

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWI:Ljava/lang/String;

    .line 197
    :try_start_0
    invoke-virtual {v8}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v0

    .line 202
    goto :goto_0

    .line 199
    :catch_0
    move-exception v10

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "error recovering public key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :goto_0
    invoke-virtual {v9}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v10

    .line 206
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->hU()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->awc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ᒻ([B)V

    .line 211
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->hU()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-static {v0}, Lorg/spongycastle/asn1/ua/DSTU4145Params;->ײ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ua/DSTU4145Params;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWL:Lorg/spongycastle/asn1/ua/DSTU4145Params;

    .line 214
    const/4 v11, 0x0

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWL:Lorg/spongycastle/asn1/ua/DSTU4145Params;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ua/DSTU4145Params;->gA()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWL:Lorg/spongycastle/asn1/ua/DSTU4145Params;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ua/DSTU4145Params;->gE()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v12

    .line 218
    invoke-static {v12}, Lorg/spongycastle/asn1/ua/DSTU4145NamedCurves;->ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v13

    .line 220
    new-instance v0, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;

    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v13}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v13}, Lorg/spongycastle/crypto/params/ECDomainParameters;->gy()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v13}, Lorg/spongycastle/crypto/params/ECDomainParameters;->ix()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v13}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;-><init>(Ljava/lang/String;Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object v11, v0

    .line 221
    goto/16 :goto_1

    .line 224
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWL:Lorg/spongycastle/asn1/ua/DSTU4145Params;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ua/DSTU4145Params;->gB()Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;

    move-result-object v12

    .line 225
    invoke-virtual {v12}, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->gx()[B

    move-result-object v13

    .line 226
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->hU()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->awc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ᒻ([B)V

    .line 230
    :cond_2
    invoke-virtual {v12}, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->gw()Lorg/spongycastle/asn1/ua/DSTU4145BinaryField;

    move-result-object v14

    .line 231
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$F2m;

    invoke-virtual {v14}, Lorg/spongycastle/asn1/ua/DSTU4145BinaryField;->getM()I

    move-result v1

    invoke-virtual {v14}, Lorg/spongycastle/asn1/ua/DSTU4145BinaryField;->gt()I

    move-result v2

    invoke-virtual {v14}, Lorg/spongycastle/asn1/ua/DSTU4145BinaryField;->gu()I

    move-result v3

    invoke-virtual {v14}, Lorg/spongycastle/asn1/ua/DSTU4145BinaryField;->gv()I

    move-result v4

    invoke-virtual {v12}, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->getA()Ljava/math/BigInteger;

    move-result-object v5

    new-instance v6, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v13}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v15, v0

    .line 232
    invoke-virtual {v12}, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->gz()[B

    move-result-object v16

    .line 233
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->hU()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->awc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 235
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->ᒻ([B)V

    .line 237
    :cond_3
    new-instance v11, Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-object/from16 v0, v16

    invoke-static {v15, v0}, Lorg/spongycastle/asn1/ua/DSTU4145PointEncoder;->ˊ(Lorg/spongycastle/math/ec/ECCurve;[B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v12}, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->gy()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v11, v15, v0, v1}, Lorg/spongycastle/jce/spec/ECParameterSpec;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    .line 240
    :goto_1
    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v12

    .line 241
    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v0

    invoke-static {v12, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v13

    .line 244
    invoke-static {v12, v10}, Lorg/spongycastle/asn1/ua/DSTU4145PointEncoder;->ˊ(Lorg/spongycastle/math/ec/ECCurve;[B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWL:Lorg/spongycastle/asn1/ua/DSTU4145Params;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ua/DSTU4145Params;->gA()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 248
    new-instance v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWL:Lorg/spongycastle/asn1/ua/DSTU4145Params;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ua/DSTU4145Params;->gE()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->gy()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->ix()Ljava/math/BigInteger;

    move-result-object v5

    move-object v2, v13

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    goto :goto_2

    .line 258
    :cond_4
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    new-instance v1, Ljava/security/spec/ECPoint;

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->gy()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->ix()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-direct {v0, v13, v1, v2, v3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 265
    :goto_2
    return-void
.end method

.method private ᒻ([B)V
    .locals 4

    .line 181
    const/4 v3, 0x0

    :goto_0
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    if-ge v3, v0, :cond_0

    .line 183
    aget-byte v2, p1, v3

    .line 184
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v3

    aget-byte v0, p1, v0

    aput-byte v0, p1, v3

    .line 185
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v3

    aput-byte v2, p1, v0

    .line 181
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 397
    instance-of v0, p1, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;

    if-nez v0, :cond_0

    .line 399
    const/4 v0, 0x0

    return v0

    .line 402
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;

    move-object v2, v0

    .line 404
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->nE()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v2}, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->nE()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->ʻ(Lorg/spongycastle/math/ec/ECPoint;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->nC()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v2}, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->nC()Lorg/spongycastle/jce/spec/ECParameterSpec;

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

    .line 281
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWI:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 10

    .line 294
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWL:Lorg/spongycastle/asn1/ua/DSTU4145Params;

    if-eqz v0, :cond_0

    .line 296
    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWL:Lorg/spongycastle/asn1/ua/DSTU4145Params;

    goto :goto_0

    .line 300
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    instance-of v0, v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    if-eqz v0, :cond_1

    .line 302
    new-instance v6, Lorg/spongycastle/asn1/ua/DSTU4145Params;

    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    check-cast v1, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v0}, Lorg/spongycastle/asn1/ua/DSTU4145Params;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    goto :goto_0

    .line 306
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/EllipticCurve;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v8

    .line 308
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-object v1, v8

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v2

    iget-boolean v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWJ:Z

    invoke-static {v8, v2, v3}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Lorg/spongycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v5}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object v9, v0

    .line 315
    new-instance v6, Lorg/spongycastle/asn1/x9/X962Parameters;

    invoke-direct {v6, v9}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/x9/X9ECParameters;)V

    .line 319
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    invoke-static {v0}, Lorg/spongycastle/asn1/ua/DSTU4145PointEncoder;->ˊ(Lorg/spongycastle/math/ec/ECPoint;)[B

    move-result-object v8

    .line 323
    :try_start_0
    new-instance v7, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->awd:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1, v6}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v1, v8}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v7, v0, v1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    goto :goto_1

    .line 325
    :catch_0
    move-exception v9

    .line 327
    const/4 v0, 0x0

    return-object v0

    .line 330
    :goto_1
    invoke-static {v7}, Lorg/spongycastle/jcajce/provider/asymmetric/util/KeyUtil;->ᐝ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 286
    const-string v0, "X.509"

    return-object v0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .line 335
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .locals 3

    .line 350
    new-instance v0, Ljava/security/spec/ECPoint;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 409
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->nE()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->nC()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public kH()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 355
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->pE()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 360
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public nB()Lorg/spongycastle/jce/spec/ECParameterSpec;
    .locals 2

    .line 340
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    .line 342
    const/4 v0, 0x0

    return-object v0

    .line 345
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWJ:Z

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/ECParameterSpec;Z)Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method nC()Lorg/spongycastle/jce/spec/ECParameterSpec;
    .locals 2

    .line 370
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWJ:Z

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/ECParameterSpec;Z)Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0

    .line 375
    :cond_0
    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baC:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->nN()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public nD()[B
    .locals 2

    .line 269
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWL:Lorg/spongycastle/asn1/ua/DSTU4145Params;

    const/4 v1, 0x0

    if-eq v1, v0, :cond_0

    .line 271
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aWL:Lorg/spongycastle/asn1/ua/DSTU4145Params;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ua/DSTU4145Params;->gC()[B

    move-result-object v0

    return-object v0

    .line 275
    :cond_0
    invoke-static {}, Lorg/spongycastle/asn1/ua/DSTU4145Params;->gD()[B

    move-result-object v0

    return-object v0
.end method

.method public nE()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 365
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 380
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 381
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 383
    const-string v0, "EC Public Key"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    const-string v0, "            X: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

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

    .line 385
    const-string v0, "            Y: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

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

    .line 387
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
