.class public Lorg/spongycastle/crypto/params/DHPublicKeyParameters;
.super Lorg/spongycastle/crypto/params/DHKeyParameters;
.source ""


# instance fields
.field private aPZ:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DHParameters;)V
    .locals 1

    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lorg/spongycastle/crypto/params/DHKeyParameters;-><init>(ZLorg/spongycastle/crypto/params/DHParameters;)V

    .line 16
    iput-object p1, p0, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->aPZ:Ljava/math/BigInteger;

    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 32
    instance-of v0, p1, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x0

    return v0

    .line 37
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    move-object v2, v0

    .line 39
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->aPZ:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lorg/spongycastle/crypto/params/DHKeyParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->aPZ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 26
    iget-object v0, p0, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->aPZ:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-super {p0}, Lorg/spongycastle/crypto/params/DHKeyParameters;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method