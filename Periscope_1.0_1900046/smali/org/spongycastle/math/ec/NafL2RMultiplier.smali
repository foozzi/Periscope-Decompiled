.class public Lorg/spongycastle/math/ec/NafL2RMultiplier;
.super Lorg/spongycastle/math/ec/AbstractECMultiplier;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lorg/spongycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method


# virtual methods
.method protected ˎ(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 9

    .line 12
    invoke-static {p2}, Lorg/spongycastle/math/ec/WNafUtil;->ـ(Ljava/math/BigInteger;)[I

    move-result-object v1

    .line 14
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->pQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pT()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 16
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    .line 18
    array-length v5, v1

    .line 19
    :goto_0
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_1

    .line 21
    aget v6, v1, v5

    .line 22
    shr-int/lit8 v7, v6, 0x10

    const v0, 0xffff

    and-int v8, v6, v0

    .line 24
    if-gez v7, :cond_0

    move-object v0, v3

    goto :goto_1

    :cond_0
    move-object v0, v2

    :goto_1
    invoke-virtual {v4, v0}, Lorg/spongycastle/math/ec/ECPoint;->ʽ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    .line 25
    invoke-virtual {v4, v8}, Lorg/spongycastle/math/ec/ECPoint;->ﺬ(I)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    return-object v4
.end method
