.class Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final aKc:Ljava/math/BigInteger;

.field static final aMF:Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;->aMF:Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;

    .line 14
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;->ONE:Ljava/math/BigInteger;

    .line 15
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;->aKc:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method ˊ(Lorg/spongycastle/crypto/params/DHParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    .line 65
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method ˊ(Lorg/spongycastle/crypto/params/DHParameters;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 9

    .line 23
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DHParameters;->getL()I

    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 27
    ushr-int/lit8 v3, v2, 0x2

    .line 30
    :goto_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v4

    .line 31
    invoke-static {v4}, Lorg/spongycastle/math/ec/WNafUtil;->ᐨ(Ljava/math/BigInteger;)I

    move-result v0

    if-lt v0, v3, :cond_0

    .line 33
    return-object v4

    .line 35
    :cond_0
    goto :goto_0

    .line 38
    :cond_1
    sget-object v3, Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;->aKc:Ljava/math/BigInteger;

    .line 39
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DHParameters;->getM()I

    move-result v4

    .line 40
    if-eqz v4, :cond_2

    .line 42
    sget-object v0, Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;->ONE:Ljava/math/BigInteger;

    add-int/lit8 v1, v4, -0x1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 45
    :cond_2
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    .line 46
    if-nez v5, :cond_3

    .line 48
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v5

    .line 50
    :cond_3
    sget-object v0, Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;->aKc:Ljava/math/BigInteger;

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 52
    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    ushr-int/lit8 v7, v0, 0x2

    .line 55
    :goto_1
    invoke-static {v3, v6, p2}, Lorg/spongycastle/util/BigIntegers;->ˏ(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v8

    .line 56
    invoke-static {v8}, Lorg/spongycastle/math/ec/WNafUtil;->ᐨ(Ljava/math/BigInteger;)I

    move-result v0

    if-lt v0, v7, :cond_4

    .line 58
    return-object v8

    .line 60
    :cond_4
    goto :goto_1
.end method
