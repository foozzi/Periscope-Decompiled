.class public Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;
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

.field private transient aWQ:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/ECPublicKeySpec;Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "EC"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWI:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWI:Ljava/lang/String;

    .line 69
    invoke-virtual {p2}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 70
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p2}, Ljava/security/spec/ECPublicKeySpec;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    .line 71
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWQ:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    .line 72
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "EC"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWI:Ljava/lang/String;

    .line 186
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWI:Ljava/lang/String;

    .line 187
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWQ:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    .line 188
    invoke-direct {p0, p2}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ˎ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Ljava/security/spec/ECParameterSpec;Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 4

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "EC"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWI:Ljava/lang/String;

    .line 111
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->kG()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    .line 113
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWI:Ljava/lang/String;

    .line 114
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    .line 116
    if-nez p3, :cond_0

    .line 118
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v3

    .line 120
    invoke-direct {p0, v3, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ˊ(Ljava/security/spec/EllipticCurve;Lorg/spongycastle/crypto/params/ECDomainParameters;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 121
    goto :goto_0

    .line 124
    :cond_0
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 127
    :goto_0
    iput-object p4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWQ:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "EC"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWI:Ljava/lang/String;

    .line 166
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWI:Ljava/lang/String;

    .line 167
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 169
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWQ:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    .line 170
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/jce/spec/ECParameterSpec;Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 5

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "EC"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWI:Ljava/lang/String;

    .line 136
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->kG()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v3

    .line 138
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWI:Ljava/lang/String;

    .line 140
    if-nez p3, :cond_0

    .line 142
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v4

    .line 144
    invoke-direct {p0, v4, v3}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ˊ(Ljava/security/spec/EllipticCurve;Lorg/spongycastle/crypto/params/ECDomainParameters;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 145
    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p3}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p3}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v4

    .line 150
    invoke-static {v4, p3}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/EllipticCurve;Lorg/spongycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 153
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/EllipticCurve;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/math/ec/ECCurve;->ᐝ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    .line 155
    iput-object p4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWQ:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/jce/spec/ECPublicKeySpec;Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 6

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "EC"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWI:Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWI:Ljava/lang/String;

    .line 80
    invoke-virtual {p2}, Lorg/spongycastle/jce/spec/ECPublicKeySpec;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    .line 82
    invoke-virtual {p2}, Lorg/spongycastle/jce/spec/ECPublicKeySpec;->pd()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p2}, Lorg/spongycastle/jce/spec/ECPublicKeySpec;->pd()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v4

    .line 85
    invoke-virtual {p2}, Lorg/spongycastle/jce/spec/ECPublicKeySpec;->pd()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v0

    invoke-static {v4, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v5

    .line 88
    invoke-static {v5}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/EllipticCurve;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p2}, Lorg/spongycastle/jce/spec/ECPublicKeySpec;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2}, Lorg/spongycastle/jce/spec/ECPublicKeySpec;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/math/ec/ECCurve;->ᐝ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    .line 89
    invoke-virtual {p2}, Lorg/spongycastle/jce/spec/ECPublicKeySpec;->pd()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v5, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/EllipticCurve;Lorg/spongycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 90
    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    if-nez v0, :cond_1

    .line 95
    invoke-interface {p3}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->nN()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v4

    .line 97
    invoke-virtual {v4}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->pJ()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pK()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECCurve;->ˋ(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    .line 99
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 102
    :goto_0
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWQ:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 3

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "EC"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWI:Ljava/lang/String;

    .line 176
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWI:Ljava/lang/String;

    .line 177
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 178
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    .line 179
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .line 437
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 439
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    move-object v1, v0

    .line 441
    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->ן(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ˎ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 443
    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baC:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWQ:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    .line 444
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .line 450
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 452
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 453
    return-void
.end method

.method private ˊ(Ljava/security/spec/EllipticCurve;Lorg/spongycastle/crypto/params/ECDomainParameters;)Ljava/security/spec/ECParameterSpec;
    .locals 4

    .line 193
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
    .locals 14

    .line 204
    new-instance v6, Lorg/spongycastle/asn1/x9/X962Parameters;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->hU()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Primitive;

    invoke-direct {v6, v0}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/ASN1Primitive;)V

    .line 208
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x9/X962Parameters;->gA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x9/X962Parameters;->it()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v9, v0

    .line 211
    invoke-static {v9}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ʿ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v10

    .line 213
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v7

    .line 214
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v0

    invoke-static {v7, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v8

    .line 216
    new-instance v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    invoke-static {v9}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ˈ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-virtual {v10}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v10}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v10}, Lorg/spongycastle/asn1/x9/X9ECParameters;->gy()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v10}, Lorg/spongycastle/asn1/x9/X9ECParameters;->ix()Ljava/math/BigInteger;

    move-result-object v5

    move-object v2, v8

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 224
    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x9/X962Parameters;->is()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 228
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWQ:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->nN()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v7

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x9/X962Parameters;->it()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->ﭘ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v9

    .line 234
    invoke-virtual {v9}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v7

    .line 235
    invoke-virtual {v9}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v0

    invoke-static {v7, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v8

    .line 237
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    new-instance v1, Ljava/security/spec/ECPoint;

    invoke-virtual {v9}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v9}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v9}, Lorg/spongycastle/asn1/x9/X9ECParameters;->gy()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v9}, Lorg/spongycastle/asn1/x9/X9ECParameters;->ix()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-direct {v0, v8, v1, v2, v3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 246
    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->hW()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v9

    .line 247
    invoke-virtual {v9}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v10

    .line 248
    new-instance v11, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v11, v10}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 253
    const/4 v0, 0x0

    aget-byte v0, v10, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    aget-byte v0, v10, v0

    array-length v1, v10

    add-int/lit8 v1, v1, -0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x2

    aget-byte v0, v10, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v0, 0x2

    aget-byte v0, v10, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 256
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    invoke-direct {v0}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;-><init>()V

    invoke-virtual {v0, v7}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;->ˏ(Lorg/spongycastle/math/ec/ECCurve;)I

    move-result v12

    .line 258
    array-length v0, v10

    add-int/lit8 v0, v0, -0x3

    if-lt v12, v0, :cond_3

    .line 262
    :try_start_0
    invoke-static {v10}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v0

    .line 267
    goto :goto_1

    .line 264
    :catch_0
    move-exception v13

    .line 266
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "error recovering public key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_3
    :goto_1
    new-instance v12, Lorg/spongycastle/asn1/x9/X9ECPoint;

    invoke-direct {v12, v7, v11}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/asn1/ASN1OctetString;)V

    .line 272
    invoke-virtual {v12}, Lorg/spongycastle/asn1/x9/X9ECPoint;->iy()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    .line 273
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 418
    instance-of v0, p1, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    if-nez v0, :cond_0

    .line 420
    const/4 v0, 0x0

    return v0

    .line 423
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    move-object v2, v0

    .line 425
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->nE()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v2}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->nE()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->ʻ(Lorg/spongycastle/math/ec/ECPoint;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->nC()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v2}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->nC()Lorg/spongycastle/jce/spec/ECParameterSpec;

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

    .line 277
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWI:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 10

    .line 290
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    instance-of v0, v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    check-cast v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ᴊ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    .line 293
    if-nez v8, :cond_0

    .line 295
    new-instance v8, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    check-cast v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 297
    :cond_0
    new-instance v6, Lorg/spongycastle/asn1/x9/X962Parameters;

    invoke-direct {v6, v8}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 298
    goto :goto_0

    .line 299
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_2

    .line 301
    new-instance v6, Lorg/spongycastle/asn1/x9/X962Parameters;

    sget-object v0, Lorg/spongycastle/asn1/DERNull;->abj:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v6, v0}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/ASN1Primitive;)V

    goto :goto_0

    .line 305
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/EllipticCurve;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v8

    .line 307
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-object v1, v8

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v2

    iget-boolean v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWJ:Z

    invoke-static {v8, v2, v3}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Lorg/spongycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v5}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object v9, v0

    .line 314
    new-instance v6, Lorg/spongycastle/asn1/x9/X962Parameters;

    invoke-direct {v6, v9}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/x9/X9ECParameters;)V

    .line 317
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->nE()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v8

    .line 321
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_3

    .line 323
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECPoint;

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->pJ()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pK()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    iget-boolean v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWJ:Z

    invoke-virtual {v8, v1, v2, v3}, Lorg/spongycastle/math/ec/ECCurve;->ˋ(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECPoint;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECPoint;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    move-object v9, v0

    goto :goto_1

    .line 328
    :cond_3
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECPoint;

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    iget-boolean v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWJ:Z

    invoke-virtual {v8, v1, v2, v3}, Lorg/spongycastle/math/ec/ECCurve;->ˋ(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECPoint;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECPoint;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    move-object v9, v0

    .line 332
    :goto_1
    new-instance v7, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->aDS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1, v6}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v9}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v1

    invoke-direct {v7, v0, v1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 334
    invoke-static {v7}, Lorg/spongycastle/jcajce/provider/asymmetric/util/KeyUtil;->ᐝ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 282
    const-string v0, "X.509"

    return-object v0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .line 355
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .locals 3

    .line 370
    new-instance v0, Ljava/security/spec/ECPoint;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 430
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->nE()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->nC()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public kH()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 375
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->pE()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 380
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public nB()Lorg/spongycastle/jce/spec/ECParameterSpec;
    .locals 2

    .line 360
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    .line 362
    const/4 v0, 0x0

    return-object v0

    .line 365
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWJ:Z

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/ECParameterSpec;Z)Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method nC()Lorg/spongycastle/jce/spec/ECParameterSpec;
    .locals 2

    .line 390
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWK:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWJ:Z

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/ECParameterSpec;Z)Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0

    .line 395
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aWQ:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->nN()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public nE()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 385
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 400
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 401
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 403
    const-string v0, "EC Public Key"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    const-string v0, "            X: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

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

    .line 405
    const-string v0, "            Y: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->aRv:Lorg/spongycastle/math/ec/ECPoint;

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

    .line 407
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
