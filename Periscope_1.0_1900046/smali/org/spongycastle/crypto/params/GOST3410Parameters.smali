.class public Lorg/spongycastle/crypto/params/GOST3410Parameters;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private aFA:Ljava/math/BigInteger;

.field private aFL:Ljava/math/BigInteger;

.field private aFz:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/spongycastle/crypto/params/GOST3410Parameters;->aFz:Ljava/math/BigInteger;

    .line 21
    iput-object p2, p0, Lorg/spongycastle/crypto/params/GOST3410Parameters;->aFA:Ljava/math/BigInteger;

    .line 22
    iput-object p3, p0, Lorg/spongycastle/crypto/params/GOST3410Parameters;->aFL:Ljava/math/BigInteger;

    .line 23
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 65
    instance-of v0, p1, Lorg/spongycastle/crypto/params/GOST3410Parameters;

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x0

    return v0

    .line 70
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/GOST3410Parameters;

    move-object v2, v0

    .line 72
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/params/GOST3410Parameters;->aFz:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/params/GOST3410Parameters;->aFA:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getA()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/params/GOST3410Parameters;->aFL:Ljava/math/BigInteger;

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

.method public getA()Ljava/math/BigInteger;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/spongycastle/crypto/params/GOST3410Parameters;->aFL:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/spongycastle/crypto/params/GOST3410Parameters;->aFz:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/spongycastle/crypto/params/GOST3410Parameters;->aFA:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 59
    iget-object v0, p0, Lorg/spongycastle/crypto/params/GOST3410Parameters;->aFz:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/crypto/params/GOST3410Parameters;->aFA:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/params/GOST3410Parameters;->aFL:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
