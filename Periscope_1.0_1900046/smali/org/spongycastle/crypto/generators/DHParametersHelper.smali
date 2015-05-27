.class Lorg/spongycastle/crypto/generators/DHParametersHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final aKc:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/DHParametersHelper;->ONE:Ljava/math/BigInteger;

    .line 12
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/DHParametersHelper;->aKc:Ljava/math/BigInteger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ˊ(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 4

    .line 66
    sget-object v0, Lorg/spongycastle/crypto/generators/DHParametersHelper;->aKc:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 84
    :cond_0
    sget-object v0, Lorg/spongycastle/crypto/generators/DHParametersHelper;->aKc:Ljava/math/BigInteger;

    invoke-static {v0, v1, p2}, Lorg/spongycastle/util/BigIntegers;->ˏ(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    .line 86
    sget-object v0, Lorg/spongycastle/crypto/generators/DHParametersHelper;->aKc:Ljava/math/BigInteger;

    invoke-virtual {v3, v0, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 88
    sget-object v0, Lorg/spongycastle/crypto/generators/DHParametersHelper;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    return-object v2
.end method

.method static ˋ(IILjava/security/SecureRandom;)[Ljava/math/BigInteger;
    .locals 6

    .line 22
    add-int/lit8 v4, p0, -0x1

    .line 23
    ushr-int/lit8 v5, p0, 0x2

    .line 27
    :goto_0
    new-instance v3, Ljava/math/BigInteger;

    const/4 v0, 0x2

    invoke-direct {v3, v4, v0, p2}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    .line 30
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/crypto/generators/DHParametersHelper;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 32
    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    goto :goto_0

    .line 37
    :cond_0
    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    add-int/lit8 v0, p1, -0x2

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    goto :goto_0

    .line 48
    :cond_1
    invoke-static {v2}, Lorg/spongycastle/math/ec/WNafUtil;->ᐨ(Ljava/math/BigInteger;)I

    move-result v0

    if-ge v0, v5, :cond_2

    .line 50
    goto :goto_0

    .line 56
    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    return-object v0
.end method
