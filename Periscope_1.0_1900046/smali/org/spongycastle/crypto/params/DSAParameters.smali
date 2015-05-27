.class public Lorg/spongycastle/crypto/params/DSAParameters;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private aFA:Ljava/math/BigInteger;

.field private aFB:Ljava/math/BigInteger;

.field private aFz:Ljava/math/BigInteger;

.field private aQc:Lorg/spongycastle/crypto/params/DSAValidationParameters;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p3, p0, Lorg/spongycastle/crypto/params/DSAParameters;->aFB:Ljava/math/BigInteger;

    .line 21
    iput-object p1, p0, Lorg/spongycastle/crypto/params/DSAParameters;->aFz:Ljava/math/BigInteger;

    .line 22
    iput-object p2, p0, Lorg/spongycastle/crypto/params/DSAParameters;->aFA:Ljava/math/BigInteger;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DSAValidationParameters;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p3, p0, Lorg/spongycastle/crypto/params/DSAParameters;->aFB:Ljava/math/BigInteger;

    .line 32
    iput-object p1, p0, Lorg/spongycastle/crypto/params/DSAParameters;->aFz:Ljava/math/BigInteger;

    .line 33
    iput-object p2, p0, Lorg/spongycastle/crypto/params/DSAParameters;->aFA:Ljava/math/BigInteger;

    .line 34
    iput-object p4, p0, Lorg/spongycastle/crypto/params/DSAParameters;->aQc:Lorg/spongycastle/crypto/params/DSAValidationParameters;

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 60
    instance-of v0, p1, Lorg/spongycastle/crypto/params/DSAParameters;

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x0

    return v0

    .line 65
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/DSAParameters;

    move-object v2, v0

    .line 67
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/params/DSAParameters;->aFz:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/params/DSAParameters;->aFA:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/params/DSAParameters;->aFB:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getG()Ljava/math/BigInteger;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/spongycastle/crypto/params/DSAParameters;->aFB:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/spongycastle/crypto/params/DSAParameters;->aFz:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/spongycastle/crypto/params/DSAParameters;->aFA:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 72
    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
