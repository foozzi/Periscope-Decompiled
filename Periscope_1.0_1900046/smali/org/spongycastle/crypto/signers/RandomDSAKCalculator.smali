.class Lorg/spongycastle/crypto/signers/RandomDSAKCalculator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/signers/DSAKCalculator;


# static fields
.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private aFA:Ljava/math/BigInteger;

.field private aFa:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/signers/RandomDSAKCalculator;->ZERO:Ljava/math/BigInteger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lA()Z
    .locals 1

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public lB()Ljava/math/BigInteger;
    .locals 3

    .line 32
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/RandomDSAKCalculator;->aFA:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 37
    :cond_0
    new-instance v2, Ljava/math/BigInteger;

    iget-object v0, p0, Lorg/spongycastle/crypto/signers/RandomDSAKCalculator;->aFa:Ljava/security/SecureRandom;

    invoke-direct {v2, v1, v0}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 39
    sget-object v0, Lorg/spongycastle/crypto/signers/RandomDSAKCalculator;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/signers/RandomDSAKCalculator;->aFA:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    .line 41
    return-object v2
.end method

.method public ˊ(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ˎ(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lorg/spongycastle/crypto/signers/RandomDSAKCalculator;->aFA:Ljava/math/BigInteger;

    .line 22
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/RandomDSAKCalculator;->aFa:Ljava/security/SecureRandom;

    .line 23
    return-void
.end method
