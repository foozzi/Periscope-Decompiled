.class public Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/interfaces/ECPrivateKey;
.implements Lorg/spongycastle/jce/interfaces/ECPointEncoder;
.implements Lorg/spongycastle/jce/interfaces/ECPrivateKey;
.implements Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# instance fields
.field private transient aPU:Ljava/math/BigInteger;

.field private aWI:Ljava/lang/String;

.field private aWJ:Z

.field private transient aWK:Ljava/security/spec/ECParameterSpec;

.field private transient aWZ:Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

.field private transient aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

.field private transient aft:Lorg/spongycastle/asn1/DERBitString;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWI:Ljava/lang/String;

    .line 57
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;)V
    .locals 1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWI:Ljava/lang/String;

    .line 57
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 188
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWI:Ljava/lang/String;

    .line 189
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->kz()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aPU:Ljava/math/BigInteger;

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 191
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;Ljava/security/spec/ECParameterSpec;)V
    .locals 6

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWI:Ljava/lang/String;

    .line 57
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 116
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->kG()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v4

    .line 118
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWI:Ljava/lang/String;

    .line 119
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->kz()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aPU:Ljava/math/BigInteger;

    .line 121
    if-nez p4, :cond_0

    .line 123
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v5

    .line 125
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    new-instance v1, Ljava/security/spec/ECPoint;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ECDomainParameters;->gy()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ECDomainParameters;->ix()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-direct {v0, v5, v1, v2, v3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 132
    goto :goto_0

    .line 135
    :cond_0
    iput-object p4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 138
    :goto_0
    invoke-virtual {p3}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->nF()Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWZ:Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    .line 140
    invoke-direct {p0, p3}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->ˊ(Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aft:Lorg/spongycastle/asn1/DERBitString;

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;Lorg/spongycastle/jce/spec/ECParameterSpec;)V
    .locals 6

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWI:Ljava/lang/String;

    .line 57
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 149
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->kG()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v4

    .line 151
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWI:Ljava/lang/String;

    .line 152
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->kz()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aPU:Ljava/math/BigInteger;

    .line 154
    if-nez p4, :cond_0

    .line 156
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v5

    .line 158
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    new-instance v1, Ljava/security/spec/ECPoint;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ECDomainParameters;->gy()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ECDomainParameters;->ix()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-direct {v0, v5, v1, v2, v3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 165
    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p4}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p4}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v5

    .line 170
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    new-instance v1, Ljava/security/spec/ECPoint;

    invoke-virtual {p4}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p4}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p4}, Lorg/spongycastle/jce/spec/ECParameterSpec;->gy()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p4}, Lorg/spongycastle/jce/spec/ECParameterSpec;->ix()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-direct {v0, v5, v1, v2, v3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 179
    :goto_0
    invoke-virtual {p3}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->nF()Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWZ:Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    .line 181
    invoke-direct {p0, p3}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->ˊ(Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aft:Lorg/spongycastle/asn1/DERBitString;

    .line 182
    return-void
.end method

.method public constructor <init>(Ljava/security/spec/ECPrivateKeySpec;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWI:Ljava/lang/String;

    .line 57
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 95
    invoke-virtual {p1}, Ljava/security/spec/ECPrivateKeySpec;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aPU:Ljava/math/BigInteger;

    .line 96
    invoke-virtual {p1}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 97
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 1

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWI:Ljava/lang/String;

    .line 57
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 197
    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->ˋ(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 198
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/jce/spec/ECPrivateKeySpec;)V
    .locals 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWI:Ljava/lang/String;

    .line 57
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 74
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECPrivateKeySpec;->kz()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aPU:Ljava/math/BigInteger;

    .line 76
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECPrivateKeySpec;->pd()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECPrivateKeySpec;->pd()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    .line 81
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECPrivateKeySpec;->pd()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v0

    invoke-static {v1, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v2

    .line 83
    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECPrivateKeySpec;->pd()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/EllipticCurve;Lorg/spongycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 84
    goto :goto_0

    .line 87
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 89
    :goto_0
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .line 524
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 526
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    move-object v1, v0

    .line 528
    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->ﹷ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->ˋ(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 530
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 531
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .line 537
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 539
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 540
    return-void
.end method

.method private ˊ(Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;)Lorg/spongycastle/asn1/DERBitString;
    .locals 2

    .line 510
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->ן(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    .line 512
    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->hW()Lorg/spongycastle/asn1/DERBitString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 514
    :catch_0
    move-exception v1

    .line 516
    const/4 v0, 0x0

    return-object v0
.end method

.method private ˊ([BILjava/math/BigInteger;)V
    .locals 5

    .line 405
    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 406
    array-length v0, v3

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 408
    const/16 v0, 0x20

    new-array v4, v0, [B

    .line 409
    array-length v0, v4

    array-length v1, v3

    sub-int/2addr v0, v1

    array-length v1, v3

    const/4 v2, 0x0

    invoke-static {v3, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 410
    move-object v3, v4

    .line 413
    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/16 v0, 0x20

    if-eq v4, v0, :cond_1

    .line 415
    add-int v0, p2, v4

    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v4

    aget-byte v1, v3, v1

    aput-byte v1, p1, v0

    .line 413
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 417
    :cond_1
    return-void
.end method

.method private ˋ(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 14

    .line 203
    invoke-virtual {p1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->fW()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v6

    .line 205
    instance-of v0, v6, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    invoke-static {v6}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-static {v6}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 207
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->fW()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->ˤ(Ljava/lang/Object;)Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWZ:Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    .line 209
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWZ:Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->fq()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->ˎ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jce/ECGOST3410NamedCurveTable;->ﺩ(Ljava/lang/String;)Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;

    move-result-object v7

    .line 211
    invoke-virtual {v7}, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v8

    .line 212
    invoke-virtual {v7}, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;->getSeed()[B

    move-result-object v0

    invoke-static {v8, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v9

    .line 214
    new-instance v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWZ:Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->fq()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->ˎ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-virtual {v7}, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v7}, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v7}, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;->gy()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v7}, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;->ix()Ljava/math/BigInteger;

    move-result-object v5

    move-object v2, v9

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 222
    invoke-virtual {p1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->fY()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v10

    .line 224
    invoke-static {v10}, Lorg/spongycastle/asn1/ASN1OctetString;->ﹸ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v11

    .line 225
    array-length v0, v11

    new-array v12, v0, [B

    .line 227
    const/4 v13, 0x0

    :goto_0
    array-length v0, v11

    if-eq v13, v0, :cond_1

    .line 229
    array-length v0, v11

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v13

    aget-byte v0, v11, v0

    aput-byte v0, v12, v13

    .line 227
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 232
    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v12}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aPU:Ljava/math/BigInteger;

    .line 233
    goto/16 :goto_3

    .line 237
    :cond_2
    invoke-virtual {p1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->fW()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x9/X962Parameters;->ⅼ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/X962Parameters;

    move-result-object v7

    .line 239
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X962Parameters;->gA()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 241
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X962Parameters;->it()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﹴ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    .line 242
    invoke-static {v8}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ʿ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v9

    .line 244
    if-nez v9, :cond_3

    .line 246
    invoke-static {v8}, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v10

    .line 247
    invoke-virtual {v10}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v10}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v11

    .line 249
    new-instance v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    invoke-static {v8}, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->ˎ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-virtual {v10}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v10}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v10}, Lorg/spongycastle/crypto/params/ECDomainParameters;->gy()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v10}, Lorg/spongycastle/crypto/params/ECDomainParameters;->ix()Ljava/math/BigInteger;

    move-result-object v5

    move-object v2, v11

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 257
    goto :goto_1

    .line 260
    :cond_3
    invoke-virtual {v9}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v9}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v10

    .line 262
    new-instance v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    invoke-static {v8}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ˈ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-virtual {v9}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v9}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v9}, Lorg/spongycastle/asn1/x9/X9ECParameters;->gy()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v9}, Lorg/spongycastle/asn1/x9/X9ECParameters;->ix()Ljava/math/BigInteger;

    move-result-object v5

    move-object v2, v10

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 271
    :goto_1
    goto :goto_2

    .line 272
    :cond_4
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X962Parameters;->is()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    goto :goto_2

    .line 278
    :cond_5
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X962Parameters;->it()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->ﭘ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v8

    .line 279
    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v9

    .line 281
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    new-instance v1, Ljava/security/spec/ECPoint;

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X9ECParameters;->gy()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X9ECParameters;->ix()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-direct {v0, v9, v1, v2, v3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 290
    :goto_2
    invoke-virtual {p1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->fY()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v8

    .line 291
    instance-of v0, v8, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_6

    .line 293
    invoke-static {v8}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v9

    .line 295
    invoke-virtual {v9}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aPU:Ljava/math/BigInteger;

    .line 296
    goto :goto_3

    .line 299
    :cond_6
    invoke-static {v8}, Lorg/spongycastle/asn1/sec/ECPrivateKey;->і(Ljava/lang/Object;)Lorg/spongycastle/asn1/sec/ECPrivateKey;

    move-result-object v9

    .line 301
    invoke-virtual {v9}, Lorg/spongycastle/asn1/sec/ECPrivateKey;->gq()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aPU:Ljava/math/BigInteger;

    .line 302
    invoke-virtual {v9}, Lorg/spongycastle/asn1/sec/ECPrivateKey;->gr()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aft:Lorg/spongycastle/asn1/DERBitString;

    .line 305
    :goto_3
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 479
    instance-of v0, p1, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;

    if-nez v0, :cond_0

    .line 481
    const/4 v0, 0x0

    return v0

    .line 484
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;

    move-object v2, v0

    .line 486
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->kz()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->kz()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->nC()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v2}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->nC()Lorg/spongycastle/jce/spec/ECParameterSpec;

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

    .line 309
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWI:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 10

    .line 330
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWZ:Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    if-eqz v0, :cond_0

    .line 332
    const/16 v0, 0x20

    new-array v6, v0, [B

    .line 334
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v6, v1, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->ˊ([BILjava/math/BigInteger;)V

    .line 338
    :try_start_0
    new-instance v7, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->ahd:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWZ:Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v1, v6}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v7, v0, v1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 340
    const-string v0, "DER"

    invoke-virtual {v7, v0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 342
    :catch_0
    move-exception v7

    .line 344
    const/4 v0, 0x0

    return-object v0

    .line 351
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    instance-of v0, v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    if-eqz v0, :cond_2

    .line 353
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    check-cast v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ᴊ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    .line 354
    if-nez v7, :cond_1

    .line 356
    new-instance v7, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    check-cast v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 358
    :cond_1
    new-instance v6, Lorg/spongycastle/asn1/x9/X962Parameters;

    invoke-direct {v6, v7}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 359
    goto :goto_0

    .line 360
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_3

    .line 362
    new-instance v6, Lorg/spongycastle/asn1/x9/X962Parameters;

    sget-object v0, Lorg/spongycastle/asn1/DERNull;->abj:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v6, v0}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/ASN1Primitive;)V

    goto :goto_0

    .line 366
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/EllipticCurve;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v7

    .line 368
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-object v1, v7

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v2

    iget-boolean v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWJ:Z

    invoke-static {v7, v2, v3}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Lorg/spongycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v5}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object v8, v0

    .line 375
    new-instance v6, Lorg/spongycastle/asn1/x9/X962Parameters;

    invoke-direct {v6, v8}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/x9/X9ECParameters;)V

    .line 381
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aft:Lorg/spongycastle/asn1/DERBitString;

    if-eqz v0, :cond_4

    .line 383
    new-instance v8, Lorg/spongycastle/asn1/sec/ECPrivateKey;

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aft:Lorg/spongycastle/asn1/DERBitString;

    invoke-direct {v8, v0, v1, v6}, Lorg/spongycastle/asn1/sec/ECPrivateKey;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/asn1/DERBitString;Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    .line 387
    :cond_4
    new-instance v8, Lorg/spongycastle/asn1/sec/ECPrivateKey;

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v8, v0, v6}, Lorg/spongycastle/asn1/sec/ECPrivateKey;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 392
    :goto_1
    :try_start_1
    new-instance v7, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->ahd:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lorg/spongycastle/asn1/x9/X962Parameters;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v8}, Lorg/spongycastle/asn1/sec/ECPrivateKey;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 394
    const-string v0, "DER"

    invoke-virtual {v7, v0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    .line 396
    :catch_1
    move-exception v9

    .line 398
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 319
    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .line 421
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getS()Ljava/math/BigInteger;
    .locals 1

    .line 446
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aPU:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 491
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->kz()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->nC()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public kz()Ljava/math/BigInteger;
    .locals 1

    .line 451
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aPU:Ljava/math/BigInteger;

    return-object v0
.end method

.method public nA()Ljava/util/Enumeration;
    .locals 1

    .line 469
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->nA()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public nB()Lorg/spongycastle/jce/spec/ECParameterSpec;
    .locals 2

    .line 426
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    .line 428
    const/4 v0, 0x0

    return-object v0

    .line 431
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWJ:Z

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/ECParameterSpec;Z)Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method nC()Lorg/spongycastle/jce/spec/ECParameterSpec;
    .locals 2

    .line 436
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWJ:Z

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/ECParameterSpec;Z)Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0

    .line 441
    :cond_0
    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baC:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->nN()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 496
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 497
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 499
    const-string v0, "EC Private Key"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 500
    const-string v0, "             S: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aPU:Ljava/math/BigInteger;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 502
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 458
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 459
    return-void
.end method

.method public ͺ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .line 464
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->ͺ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method
