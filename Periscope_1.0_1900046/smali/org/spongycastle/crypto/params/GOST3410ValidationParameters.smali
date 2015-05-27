.class public Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aKM:I

.field private aQi:I

.field private aQj:J

.field private aQk:J


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 50
    instance-of v0, p1, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    return v0

    .line 55
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;

    move-object v4, v0

    .line 57
    iget v0, v4, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;->aKM:I

    iget v1, p0, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;->aKM:I

    if-eq v0, v1, :cond_1

    .line 59
    const/4 v0, 0x0

    return v0

    .line 62
    :cond_1
    iget v0, v4, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;->aQi:I

    iget v1, p0, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;->aQi:I

    if-eq v0, v1, :cond_2

    .line 64
    const/4 v0, 0x0

    return v0

    .line 67
    :cond_2
    iget-wide v0, v4, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;->aQk:J

    iget-wide v2, p0, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;->aQk:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 69
    const/4 v0, 0x0

    return v0

    .line 72
    :cond_3
    iget-wide v0, v4, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;->aQj:J

    iget-wide v2, p0, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;->aQj:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 74
    const/4 v0, 0x0

    return v0

    .line 77
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 82
    iget v0, p0, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;->aQi:I

    iget v1, p0, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;->aKM:I

    xor-int/2addr v0, v1

    iget-wide v1, p0, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;->aQj:J

    long-to-int v1, v1

    xor-int/2addr v0, v1

    iget-wide v1, p0, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;->aQj:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    iget-wide v1, p0, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;->aQk:J

    long-to-int v1, v1

    xor-int/2addr v0, v1

    iget-wide v1, p0, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;->aQk:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method
