.class public Lorg/spongycastle/crypto/generators/DSAKeyPairGenerator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private aMH:Lorg/spongycastle/crypto/params/DSAKeyGenerationParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/DSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ˊ(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    .line 67
    invoke-virtual {p1, p2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static ˋ(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 4

    .line 50
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    ushr-int/lit8 v2, v0, 0x2

    .line 57
    :goto_0
    sget-object v0, Lorg/spongycastle/crypto/generators/DSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    sget-object v1, Lorg/spongycastle/crypto/generators/DSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/spongycastle/util/BigIntegers;->ˏ(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    .line 58
    invoke-static {v3}, Lorg/spongycastle/math/ec/WNafUtil;->ᐨ(Ljava/math/BigInteger;)I

    move-result v0

    if-lt v0, v2, :cond_0

    .line 60
    return-object v3

    .line 62
    :cond_0
    goto :goto_0
.end method


# virtual methods
.method public iF()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 6

    .line 37
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/DSAKeyPairGenerator;->aMH:Lorg/spongycastle/crypto/params/DSAKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/DSAKeyGenerationParameters;->kB()Lorg/spongycastle/crypto/params/DSAParameters;

    move-result-object v3

    .line 39
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/DSAKeyPairGenerator;->aMH:Lorg/spongycastle/crypto/params/DSAKeyGenerationParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/DSAKeyGenerationParameters;->iN()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/generators/DSAKeyPairGenerator;->ˋ(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v4

    .line 40
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lorg/spongycastle/crypto/generators/DSAKeyPairGenerator;->ˊ(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 42
    new-instance v0, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v1, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;

    invoke-direct {v1, v5, v3}, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DSAParameters;)V

    new-instance v2, Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;

    invoke-direct {v2, v4, v3}, Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DSAParameters;)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0
.end method

.method public ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 1

    .line 32
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/DSAKeyGenerationParameters;

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/DSAKeyPairGenerator;->aMH:Lorg/spongycastle/crypto/params/DSAKeyGenerationParameters;

    .line 33
    return-void
.end method
