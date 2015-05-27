.class public Lorg/spongycastle/crypto/generators/CramerShoupKeyPairGenerator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private aMD:Lorg/spongycastle/crypto/params/CramerShoupKeyGenerationParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/CramerShoupKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ˊ(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 2

    .line 40
    sget-object v0, Lorg/spongycastle/crypto/generators/CramerShoupKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    sget-object v1, Lorg/spongycastle/crypto/generators/CramerShoupKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/spongycastle/util/BigIntegers;->ˏ(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private ˊ(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/CramerShoupParameters;)Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;
    .locals 9

    .line 44
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object v7

    .line 45
    new-instance v0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;

    move-object v1, p2

    invoke-direct {p0, v7, p1}, Lorg/spongycastle/crypto/generators/CramerShoupKeyPairGenerator;->ˊ(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {p0, v7, p1}, Lorg/spongycastle/crypto/generators/CramerShoupKeyPairGenerator;->ˊ(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {p0, v7, p1}, Lorg/spongycastle/crypto/generators/CramerShoupKeyPairGenerator;->ˊ(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {p0, v7, p1}, Lorg/spongycastle/crypto/generators/CramerShoupKeyPairGenerator;->ˊ(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {p0, v7, p1}, Lorg/spongycastle/crypto/generators/CramerShoupKeyPairGenerator;->ˊ(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;-><init>(Lorg/spongycastle/crypto/params/CramerShoupParameters;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v8, v0

    .line 49
    return-object v8
.end method

.method private ˊ(Lorg/spongycastle/crypto/params/CramerShoupParameters;Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;)Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;
    .locals 8

    .line 53
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->kr()Ljava/math/BigInteger;

    move-result-object v2

    .line 54
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->ks()Ljava/math/BigInteger;

    move-result-object v3

    .line 55
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object v4

    .line 57
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->kt()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->ku()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v3, v1, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 58
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->kv()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->kw()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v3, v1, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 59
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->kx()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 61
    new-instance v0, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;

    invoke-direct {v0, p1, v5, v6, v7}, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;-><init>(Lorg/spongycastle/crypto/params/CramerShoupParameters;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method


# virtual methods
.method public iF()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 4

    .line 30
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/CramerShoupKeyPairGenerator;->aMD:Lorg/spongycastle/crypto/params/CramerShoupKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/CramerShoupKeyGenerationParameters;->kq()Lorg/spongycastle/crypto/params/CramerShoupParameters;

    move-result-object v1

    .line 32
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/CramerShoupKeyPairGenerator;->aMD:Lorg/spongycastle/crypto/params/CramerShoupKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/CramerShoupKeyGenerationParameters;->iN()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/generators/CramerShoupKeyPairGenerator;->ˊ(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/CramerShoupParameters;)Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;

    move-result-object v2

    .line 33
    invoke-direct {p0, v1, v2}, Lorg/spongycastle/crypto/generators/CramerShoupKeyPairGenerator;->ˊ(Lorg/spongycastle/crypto/params/CramerShoupParameters;Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;)Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;

    move-result-object v3

    .line 34
    invoke-virtual {v2, v3}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->ˊ(Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;)V

    .line 36
    new-instance v0, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v0, v3, v2}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0
.end method
