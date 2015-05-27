.class public Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aFA:Ljava/math/BigInteger;

.field private aFL:Ljava/math/BigInteger;

.field private aFz:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->aFz:Ljava/math/BigInteger;

    .line 27
    iput-object p2, p0, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->aFA:Ljava/math/BigInteger;

    .line 28
    iput-object p3, p0, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->aFL:Ljava/math/BigInteger;

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 64
    instance-of v0, p1, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    if-eqz v0, :cond_1

    .line 66
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    move-object v2, v0

    .line 68
    iget-object v0, p0, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->aFL:Ljava/math/BigInteger;

    iget-object v1, v2, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->aFL:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->aFz:Ljava/math/BigInteger;

    iget-object v1, v2, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->aFz:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->aFA:Ljava/math/BigInteger;

    iget-object v1, v2, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->aFA:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 71
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getA()Ljava/math/BigInteger;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->aFL:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->aFz:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->aFA:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 76
    iget-object v0, p0, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->aFL:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->aFz:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->aFA:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
