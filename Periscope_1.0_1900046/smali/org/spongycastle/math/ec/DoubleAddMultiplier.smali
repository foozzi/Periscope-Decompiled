.class public Lorg/spongycastle/math/ec/DoubleAddMultiplier;
.super Lorg/spongycastle/math/ec/AbstractECMultiplier;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/spongycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method


# virtual methods
.method protected ˎ(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 7

    .line 12
    const/4 v0, 0x2

    new-array v2, v0, [Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const/4 v0, 0x1

    aput-object p1, v2, v0

    .line 14
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    .line 15
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 17
    invoke-virtual {p2, v4}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 18
    :goto_1
    rsub-int/lit8 v6, v5, 0x1

    .line 19
    aget-object v0, v2, v6

    aget-object v1, v2, v5

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->ʽ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    aput-object v0, v2, v6

    .line 15
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    aget-object v0, v2, v0

    return-object v0
.end method
