.class public Lorg/spongycastle/crypto/agreement/DHBasicAgreement;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/BasicAgreement;


# instance fields
.field private aFg:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

.field private aFh:Lorg/spongycastle/crypto/params/DHParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFieldSize()I
    .locals 2

    .line 52
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;->aFg:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;->kA()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public ˊ(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 4

    .line 31
    instance-of v0, p1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 33
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    move-object v3, v0

    .line 34
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-object v2, v0

    .line 35
    goto :goto_0

    .line 38
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-object v2, v0

    .line 41
    :goto_0
    instance-of v0, v2, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    if-nez v0, :cond_1

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DHEngine expects DHPrivateKeyParameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1
    move-object v0, v2

    check-cast v0, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;->aFg:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    .line 47
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;->aFg:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;->kA()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;->aFh:Lorg/spongycastle/crypto/params/DHParameters;

    .line 48
    return-void
.end method

.method public ˋ(Lorg/spongycastle/crypto/CipherParameters;)Ljava/math/BigInteger;
    .locals 4

    .line 62
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    move-object v3, v0

    .line 64
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->kA()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;->aFh:Lorg/spongycastle/crypto/params/DHParameters;

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/params/DHParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Diffie-Hellman public key has wrong parameters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;->aFg:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;->aFh:Lorg/spongycastle/crypto/params/DHParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
