.class public Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;
.super Lorg/spongycastle/crypto/KeyGenerationParameters;
.source ""


# instance fields
.field private aMG:I

.field private asR:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V
    .locals 2

    .line 20
    invoke-direct {p0, p2, p3}, Lorg/spongycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 22
    const/16 v0, 0xc

    if-ge p3, v0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key strength too small"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "public exponent cannot be even"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_1
    iput-object p1, p0, Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;->asR:Ljava/math/BigInteger;

    .line 36
    iput p4, p0, Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;->aMG:I

    .line 37
    return-void
.end method


# virtual methods
.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;->asR:Ljava/math/BigInteger;

    return-object v0
.end method

.method public kD()I
    .locals 1

    .line 46
    iget v0, p0, Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;->aMG:I

    return v0
.end method
