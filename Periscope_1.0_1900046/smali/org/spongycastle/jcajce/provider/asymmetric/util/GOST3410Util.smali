.class public Lorg/spongycastle/jcajce/provider/asymmetric/util/GOST3410Util;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 8

    .line 41
    instance-of v0, p0, Lorg/spongycastle/jce/interfaces/GOST3410PrivateKey;

    if-eqz v0, :cond_0

    .line 43
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/jce/interfaces/GOST3410PrivateKey;

    move-object v6, v0

    .line 44
    invoke-interface {v6}, Lorg/spongycastle/jce/interfaces/GOST3410PrivateKey;->nH()Lorg/spongycastle/jce/interfaces/GOST3410Params;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oO()Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    move-result-object v7

    .line 46
    new-instance v0, Lorg/spongycastle/crypto/params/GOST3410PrivateKeyParameters;

    invoke-interface {v6}, Lorg/spongycastle/jce/interfaces/GOST3410PrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/crypto/params/GOST3410Parameters;

    invoke-virtual {v7}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v7}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v7}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getA()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/spongycastle/crypto/params/GOST3410Parameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/params/GOST3410PrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/GOST3410Parameters;)V

    return-object v0

    .line 50
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "can\'t identify GOST3410 private key."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 8

    .line 25
    instance-of v0, p0, Lorg/spongycastle/jce/interfaces/GOST3410PublicKey;

    if-eqz v0, :cond_0

    .line 27
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/jce/interfaces/GOST3410PublicKey;

    move-object v6, v0

    .line 28
    invoke-interface {v6}, Lorg/spongycastle/jce/interfaces/GOST3410PublicKey;->nH()Lorg/spongycastle/jce/interfaces/GOST3410Params;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->oO()Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    move-result-object v7

    .line 30
    new-instance v0, Lorg/spongycastle/crypto/params/GOST3410PublicKeyParameters;

    invoke-interface {v6}, Lorg/spongycastle/jce/interfaces/GOST3410PublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/crypto/params/GOST3410Parameters;

    invoke-virtual {v7}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v7}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v7}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getA()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/spongycastle/crypto/params/GOST3410Parameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/params/GOST3410PublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/GOST3410Parameters;)V

    return-object v0

    .line 34
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t identify GOST3410 public key: "

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
