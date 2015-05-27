.class public abstract Lorg/spongycastle/asn1/ua/DSTU4145PointEncoder;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ˊ(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 11

    .line 37
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    return-object p1

    .line 42
    :cond_0
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECCurve;->ι(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 44
    const/4 v3, 0x0

    .line 45
    const/4 v4, 0x0

    .line 47
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 48
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->getFieldSize()I

    move-result v6

    .line 51
    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v6, v5}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECCurve;->ι(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 52
    move-object v3, v2

    .line 53
    move-object v8, p1

    .line 54
    const/4 v9, 0x1

    :goto_0
    add-int/lit8 v0, v6, -0x1

    if-gt v9, v0, :cond_2

    .line 56
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 57
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v10, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 58
    invoke-virtual {v10, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 54
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_3

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_3
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 66
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    return-object v3
.end method

.method private static ˊ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    .line 19
    move-object v1, p0

    .line 20
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECFieldElement;->getFieldSize()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 22
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 20
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24
    :cond_0
    return-object v1
.end method

.method public static ˊ(Lorg/spongycastle/math/ec/ECCurve;[B)Lorg/spongycastle/math/ec/ECPoint;
    .locals 7

    .line 120
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECCurve;->ι(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 122
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECCurve;->ι(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 123
    invoke-static {v3}, Lorg/spongycastle/asn1/ua/DSTU4145PointEncoder;->ˊ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->pv()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 128
    :cond_0
    const/4 v4, 0x0

    .line 129
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->pl()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->pz()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->py()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->pl()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 136
    invoke-static {p0, v5}, Lorg/spongycastle/asn1/ua/DSTU4145PointEncoder;->ˊ(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 137
    if-eqz v6, :cond_3

    .line 139
    invoke-static {v6}, Lorg/spongycastle/asn1/ua/DSTU4145PointEncoder;->ˊ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 141
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->pv()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 143
    :cond_2
    invoke-virtual {v3, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 147
    :cond_3
    :goto_0
    if-nez v4, :cond_4

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid point compression"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_4
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/math/ec/ECCurve;->ᐝ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public static ˊ(Lorg/spongycastle/math/ec/ECPoint;)[B
    .locals 6

    .line 85
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    .line 87
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 89
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object v4

    .line 91
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->pI()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->ʼ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 94
    invoke-static {v5}, Lorg/spongycastle/asn1/ua/DSTU4145PointEncoder;->ˊ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->pA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    aget-byte v1, v4, v0

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    goto :goto_0

    .line 100
    :cond_0
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    aget-byte v1, v4, v0

    and-int/lit16 v1, v1, 0xfe

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    .line 104
    :cond_1
    :goto_0
    return-object v4
.end method
