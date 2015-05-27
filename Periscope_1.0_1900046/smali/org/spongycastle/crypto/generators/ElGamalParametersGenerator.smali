.class public Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aFa:Ljava/security/SecureRandom;

.field private aMG:I

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public jT()Lorg/spongycastle/crypto/params/ElGamalParameters;
    .locals 7

    .line 35
    iget v0, p0, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;->size:I

    iget v1, p0, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;->aMG:I

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;->aFa:Ljava/security/SecureRandom;

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/generators/DHParametersHelper;->ˋ(IILjava/security/SecureRandom;)[Ljava/math/BigInteger;

    move-result-object v3

    .line 37
    const/4 v0, 0x0

    aget-object v4, v3, v0

    .line 38
    const/4 v0, 0x1

    aget-object v5, v3, v0

    .line 39
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;->aFa:Ljava/security/SecureRandom;

    invoke-static {v4, v5, v0}, Lorg/spongycastle/crypto/generators/DHParametersHelper;->ˊ(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v6

    .line 41
    new-instance v0, Lorg/spongycastle/crypto/params/ElGamalParameters;

    invoke-direct {v0, v4, v6}, Lorg/spongycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public ˊ(IILjava/security/SecureRandom;)V
    .locals 0

    .line 19
    iput p1, p0, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;->size:I

    .line 20
    iput p2, p0, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;->aMG:I

    .line 21
    iput-object p3, p0, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;->aFa:Ljava/security/SecureRandom;

    .line 22
    return-void
.end method
