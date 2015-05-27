.class public Lorg/spongycastle/math/ec/MixedNafR2LMultiplier;
.super Lorg/spongycastle/math/ec/AbstractECMultiplier;
.source ""


# instance fields
.field protected bcO:I

.field protected bcP:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/math/ec/MixedNafR2LMultiplier;-><init>(II)V

    .line 20
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lorg/spongycastle/math/ec/AbstractECMultiplier;-><init>()V

    .line 24
    iput p1, p0, Lorg/spongycastle/math/ec/MixedNafR2LMultiplier;->bcO:I

    .line 25
    iput p2, p0, Lorg/spongycastle/math/ec/MixedNafR2LMultiplier;->bcP:I

    .line 26
    return-void
.end method


# virtual methods
.method protected ˊ(Lorg/spongycastle/math/ec/ECCurve;I)Lorg/spongycastle/math/ec/ECCurve;
    .locals 3

    .line 65
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve;->pn()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 67
    return-object p1

    .line 70
    :cond_0
    invoke-virtual {p1, p2}, Lorg/spongycastle/math/ec/ECCurve;->ﭨ(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Coordinate system "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported by this curve"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve;->pf()Lorg/spongycastle/math/ec/ECCurve$Config;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/spongycastle/math/ec/ECCurve$Config;->ﮢ(I)Lorg/spongycastle/math/ec/ECCurve$Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve$Config;->pq()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    return-object v0
.end method

.method protected ˎ(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 12

    .line 30
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    .line 32
    iget v0, p0, Lorg/spongycastle/math/ec/MixedNafR2LMultiplier;->bcO:I

    invoke-virtual {p0, v1, v0}, Lorg/spongycastle/math/ec/MixedNafR2LMultiplier;->ˊ(Lorg/spongycastle/math/ec/ECCurve;I)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    .line 33
    iget v0, p0, Lorg/spongycastle/math/ec/MixedNafR2LMultiplier;->bcP:I

    invoke-virtual {p0, v1, v0}, Lorg/spongycastle/math/ec/MixedNafR2LMultiplier;->ˊ(Lorg/spongycastle/math/ec/ECCurve;I)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    .line 35
    invoke-static {p2}, Lorg/spongycastle/math/ec/WNafUtil;->ـ(Ljava/math/BigInteger;)[I

    move-result-object v4

    .line 37
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    .line 38
    invoke-virtual {v3, p1}, Lorg/spongycastle/math/ec/ECCurve;->ˏ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    .line 40
    const/4 v7, 0x0

    .line 41
    const/4 v8, 0x0

    :goto_0
    array-length v0, v4

    if-ge v8, v0, :cond_1

    .line 43
    aget v9, v4, v8

    .line 44
    shr-int/lit8 v10, v9, 0x10

    .line 45
    const v0, 0xffff

    and-int/2addr v0, v9

    add-int/2addr v7, v0

    .line 47
    invoke-virtual {v6, v7}, Lorg/spongycastle/math/ec/ECPoint;->ﺬ(I)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    .line 49
    invoke-virtual {v2, v6}, Lorg/spongycastle/math/ec/ECCurve;->ˏ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    .line 50
    if-gez v10, :cond_0

    .line 52
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECPoint;->pT()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    .line 55
    :cond_0
    invoke-virtual {v5, v11}, Lorg/spongycastle/math/ec/ECPoint;->ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    .line 57
    const/4 v7, 0x1

    .line 41
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v1, v5}, Lorg/spongycastle/math/ec/ECCurve;->ˏ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
