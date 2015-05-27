.class public Lorg/spongycastle/crypto/params/ElGamalParameters;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private aFB:Ljava/math/BigInteger;

.field private aFz:Ljava/math/BigInteger;

.field private avO:I


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lorg/spongycastle/crypto/params/ElGamalParameters;->aFB:Ljava/math/BigInteger;

    .line 27
    iput-object p1, p0, Lorg/spongycastle/crypto/params/ElGamalParameters;->aFz:Ljava/math/BigInteger;

    .line 28
    iput p3, p0, Lorg/spongycastle/crypto/params/ElGamalParameters;->avO:I

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 55
    instance-of v0, p1, Lorg/spongycastle/crypto/params/ElGamalParameters;

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    return v0

    .line 60
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/ElGamalParameters;

    move-object v2, v0

    .line 62
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ElGamalParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/params/ElGamalParameters;->aFz:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ElGamalParameters;->getG()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/params/ElGamalParameters;->aFB:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ElGamalParameters;->getL()I

    move-result v0

    iget v1, p0, Lorg/spongycastle/crypto/params/ElGamalParameters;->avO:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getG()Ljava/math/BigInteger;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ElGamalParameters;->aFB:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getL()I
    .locals 1

    .line 49
    iget v0, p0, Lorg/spongycastle/crypto/params/ElGamalParameters;->avO:I

    return v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ElGamalParameters;->aFz:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 67
    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/ElGamalParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/ElGamalParameters;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/params/ElGamalParameters;->avO:I

    add-int/2addr v0, v1

    return v0
.end method
