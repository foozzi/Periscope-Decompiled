.class public Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;
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

.field private transient aWQ:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

.field private transient aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

.field private transient aft:Lorg/spongycastle/asn1/DERBitString;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "EC"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWI:Ljava/lang/String;

    .line 52
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/ECPrivateKeySpec;Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "EC"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWI:Ljava/lang/String;

    .line 52
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 99
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWI:Ljava/lang/String;

    .line 100
    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aPU:Ljava/math/BigInteger;

    .line 101
    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 102
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWQ:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    .line 103
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 1

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "EC"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWI:Ljava/lang/String;

    .line 52
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 203
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWI:Ljava/lang/String;

    .line 204
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWQ:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    .line 205
    invoke-direct {p0, p2}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ˋ(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 206
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;Ljava/security/spec/ECParameterSpec;Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 6

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "EC"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWI:Ljava/lang/String;

    .line 52
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 125
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->kG()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v4

    .line 127
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWI:Ljava/lang/String;

    .line 128
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->kz()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aPU:Ljava/math/BigInteger;

    .line 129
    iput-object p5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWQ:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    .line 131
    if-nez p4, :cond_0

    .line 133
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v5

    .line 135
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

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 142
    goto :goto_0

    .line 145
    :cond_0
    iput-object p4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 148
    :goto_0
    invoke-direct {p0, p3}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ˊ(Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aft:Lorg/spongycastle/asn1/DERBitString;

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;Lorg/spongycastle/jce/spec/ECParameterSpec;Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 6

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "EC"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWI:Ljava/lang/String;

    .line 52
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 158
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->kG()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v4

    .line 160
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWI:Ljava/lang/String;

    .line 161
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->kz()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aPU:Ljava/math/BigInteger;

    .line 162
    iput-object p5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWQ:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    .line 164
    if-nez p4, :cond_0

    .line 166
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ECDomainParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v5

    .line 168
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

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 175
    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p4}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p4}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v5

    .line 180
    invoke-static {v5, p4}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/EllipticCurve;Lorg/spongycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 183
    :goto_0
    invoke-direct {p0, p3}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ˊ(Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aft:Lorg/spongycastle/asn1/DERBitString;

    .line 184
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "EC"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWI:Ljava/lang/String;

    .line 52
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 191
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWI:Ljava/lang/String;

    .line 192
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->kz()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aPU:Ljava/math/BigInteger;

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 194
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWQ:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    .line 195
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/jce/spec/ECPrivateKeySpec;Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "EC"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWI:Ljava/lang/String;

    .line 52
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 73
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWI:Ljava/lang/String;

    .line 74
    invoke-virtual {p2}, Lorg/spongycastle/jce/spec/ECPrivateKeySpec;->kz()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aPU:Ljava/math/BigInteger;

    .line 76
    invoke-virtual {p2}, Lorg/spongycastle/jce/spec/ECPrivateKeySpec;->pd()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p2}, Lorg/spongycastle/jce/spec/ECPrivateKeySpec;->pd()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    .line 81
    invoke-virtual {p2}, Lorg/spongycastle/jce/spec/ECPrivateKeySpec;->pd()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v0

    invoke-static {v1, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v2

    .line 83
    invoke-virtual {p2}, Lorg/spongycastle/jce/spec/ECPrivateKeySpec;->pd()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/EllipticCurve;Lorg/spongycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 84
    goto :goto_0

    .line 87
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 90
    :goto_0
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWQ:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "EC"

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWI:Ljava/lang/String;

    .line 52
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 62
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aPU:Ljava/math/BigInteger;

    .line 63
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWI:Ljava/lang/String;

    .line 64
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 65
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWQ:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    .line 66
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .line 444
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 446
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    move-object v1, v0

    .line 448
    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->ﹷ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ˋ(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 450
    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baC:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWQ:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    .line 451
    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    .line 452
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .line 458
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 460
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 461
    return-void
.end method

.method private ˊ(Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;)Lorg/spongycastle/asn1/DERBitString;
    .locals 2

    .line 430
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->ן(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    .line 432
    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->hW()Lorg/spongycastle/asn1/DERBitString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 434
    :catch_0
    move-exception v1

    .line 436
    const/4 v0, 0x0

    return-object v0
.end method

.method private ˋ(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 10

    .line 211
    invoke-virtual {p1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->fW()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x9/X962Parameters;->ⅼ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/X962Parameters;

    move-result-object v6

    .line 213
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x9/X962Parameters;->gA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x9/X962Parameters;->it()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﹴ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    .line 216
    invoke-static {v7}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ʿ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v8

    .line 217
    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v9

    .line 219
    new-instance v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    invoke-static {v7}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ˈ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X9ECParameters;->gy()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X9ECParameters;->ix()Ljava/math/BigInteger;

    move-result-object v5

    move-object v2, v9

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 227
    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x9/X962Parameters;->is()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x9/X962Parameters;->it()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->ﭘ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v7

    .line 235
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˎ(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v8

    .line 237
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    new-instance v1, Ljava/security/spec/ECPoint;

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X9ECParameters;->gy()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X9ECParameters;->ix()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-direct {v0, v8, v1, v2, v3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    .line 246
    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->fY()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v7

    .line 247
    instance-of v0, v7, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_2

    .line 249
    invoke-static {v7}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v8

    .line 251
    invoke-virtual {v8}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aPU:Ljava/math/BigInteger;

    .line 252
    goto :goto_1

    .line 255
    :cond_2
    invoke-static {v7}, Lorg/spongycastle/asn1/sec/ECPrivateKey;->і(Ljava/lang/Object;)Lorg/spongycastle/asn1/sec/ECPrivateKey;

    move-result-object v8

    .line 257
    invoke-virtual {v8}, Lorg/spongycastle/asn1/sec/ECPrivateKey;->gq()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aPU:Ljava/math/BigInteger;

    .line 258
    invoke-virtual {v8}, Lorg/spongycastle/asn1/sec/ECPrivateKey;->gr()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aft:Lorg/spongycastle/asn1/DERBitString;

    .line 260
    :goto_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 399
    instance-of v0, p1, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    if-nez v0, :cond_0

    .line 401
    const/4 v0, 0x0

    return v0

    .line 404
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    move-object v2, v0

    .line 406
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->kz()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->kz()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->nC()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v2}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->nC()Lorg/spongycastle/jce/spec/ECParameterSpec;

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

    .line 264
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWI:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 10

    .line 287
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    instance-of v0, v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    check-cast v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ᴊ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    .line 290
    if-nez v7, :cond_0

    .line 292
    new-instance v7, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    check-cast v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 295
    :cond_0
    new-instance v6, Lorg/spongycastle/asn1/x9/X962Parameters;

    invoke-direct {v6, v7}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 296
    goto :goto_0

    .line 297
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_2

    .line 299
    new-instance v6, Lorg/spongycastle/asn1/x9/X962Parameters;

    sget-object v0, Lorg/spongycastle/asn1/DERNull;->abj:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v6, v0}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/ASN1Primitive;)V

    goto :goto_0

    .line 303
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/EllipticCurve;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v7

    .line 305
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-object v1, v7

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v2

    iget-boolean v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWJ:Z

    invoke-static {v7, v2, v3}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Lorg/spongycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v5}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object v8, v0

    .line 312
    new-instance v6, Lorg/spongycastle/asn1/x9/X962Parameters;

    invoke-direct {v6, v8}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/x9/X9ECParameters;)V

    .line 318
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aft:Lorg/spongycastle/asn1/DERBitString;

    if-eqz v0, :cond_3

    .line 320
    new-instance v8, Lorg/spongycastle/asn1/sec/ECPrivateKey;

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aft:Lorg/spongycastle/asn1/DERBitString;

    invoke-direct {v8, v0, v1, v6}, Lorg/spongycastle/asn1/sec/ECPrivateKey;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/asn1/DERBitString;Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    .line 324
    :cond_3
    new-instance v8, Lorg/spongycastle/asn1/sec/ECPrivateKey;

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v8, v0, v6}, Lorg/spongycastle/asn1/sec/ECPrivateKey;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 329
    :goto_1
    :try_start_0
    new-instance v7, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->aDS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1, v6}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-direct {v7, v0, v8}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 331
    const-string v0, "DER"

    invoke-virtual {v7, v0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 333
    :catch_0
    move-exception v9

    .line 335
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 274
    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .line 341
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getS()Ljava/math/BigInteger;
    .locals 1

    .line 366
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aPU:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 411
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->kz()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->nC()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public kz()Ljava/math/BigInteger;
    .locals 1

    .line 371
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aPU:Ljava/math/BigInteger;

    return-object v0
.end method

.method public nA()Ljava/util/Enumeration;
    .locals 1

    .line 389
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->nA()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public nB()Lorg/spongycastle/jce/spec/ECParameterSpec;
    .locals 2

    .line 346
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    .line 348
    const/4 v0, 0x0

    return-object v0

    .line 351
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWJ:Z

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/ECParameterSpec;Z)Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method nC()Lorg/spongycastle/jce/spec/ECParameterSpec;
    .locals 2

    .line 356
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWK:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWJ:Z

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/ECParameterSpec;Z)Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0

    .line 361
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWQ:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->nN()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 416
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 417
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 419
    const-string v0, "EC Private Key"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    const-string v0, "             S: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aPU:Ljava/math/BigInteger;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 378
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->ˋ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 379
    return-void
.end method

.method public ͺ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .line 384
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->aWq:Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->ͺ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method
