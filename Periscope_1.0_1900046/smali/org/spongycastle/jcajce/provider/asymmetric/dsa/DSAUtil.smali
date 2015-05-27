.class public Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSAUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final aWG:[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->aEB:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->apN:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->aWG:[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 7

    .line 62
    instance-of v0, p0, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v0, :cond_0

    .line 64
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/DSAPrivateKey;

    move-object v6, v0

    .line 66
    new-instance v0, Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;

    invoke-interface {v6}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/crypto/params/DSAParameters;

    invoke-interface {v6}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v6}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v6}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/spongycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DSAParameters;)V

    return-object v0

    .line 70
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "can\'t identify DSA private key."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 7

    .line 47
    instance-of v0, p0, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v0, :cond_0

    .line 49
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    move-object v6, v0

    .line 51
    new-instance v0, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;

    invoke-interface {v6}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/crypto/params/DSAParameters;

    invoke-interface {v6}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v6}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v6}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/spongycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DSAParameters;)V

    return-object v0

    .line 55
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t identify DSA public key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ι(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 2

    .line 32
    const/4 v1, 0x0

    :goto_0
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->aWG:[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    array-length v0, v0

    if-eq v1, v0, :cond_1

    .line 34
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->aWG:[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x1

    return v0

    .line 32
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
