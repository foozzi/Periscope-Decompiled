.class public Lorg/spongycastle/math/ec/NafR2LMultiplier;
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
    .locals 8

    .line 12
    invoke-static {p2}, Lorg/spongycastle/math/ec/WNafUtil;->ـ(Ljava/math/BigInteger;)[I

    move-result-object v1

    .line 14
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    move-object v3, p1

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    :goto_0
    array-length v0, v1

    if-ge v5, v0, :cond_1

    .line 19
    aget v6, v1, v5

    .line 20
    shr-int/lit8 v7, v6, 0x10

    .line 21
    const v0, 0xffff

    and-int/2addr v0, v6

    add-int/2addr v4, v0

    .line 23
    invoke-virtual {v3, v4}, Lorg/spongycastle/math/ec/ECPoint;->ﺬ(I)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 24
    if-gez v7, :cond_0

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECPoint;->pT()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_1

    :cond_0
    move-object v0, v3

    :goto_1
    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECPoint;->ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    .line 26
    const/4 v4, 0x1

    .line 17
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 29
    :cond_1
    return-object v2
.end method
