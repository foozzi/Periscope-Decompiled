.class public Lorg/spongycastle/math/ec/GLVMultiplier;
.super Lorg/spongycastle/math/ec/AbstractECMultiplier;
.source ""


# instance fields
.field protected final aDw:Lorg/spongycastle/math/ec/ECCurve;

.field protected final bcG:Lorg/spongycastle/math/ec/endo/GLVEndomorphism;


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/endo/GLVEndomorphism;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Lorg/spongycastle/math/ec/AbstractECMultiplier;-><init>()V

    .line 14
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_1

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need curve with known group order"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_1
    iput-object p1, p0, Lorg/spongycastle/math/ec/GLVMultiplier;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    .line 20
    iput-object p2, p0, Lorg/spongycastle/math/ec/GLVMultiplier;->bcG:Lorg/spongycastle/math/ec/endo/GLVEndomorphism;

    .line 21
    return-void
.end method


# virtual methods
.method protected ˎ(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 7

    .line 25
    iget-object v0, p0, Lorg/spongycastle/math/ec/GLVMultiplier;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECCurve;->ʼ(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 30
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v2

    .line 31
    iget-object v0, p0, Lorg/spongycastle/math/ec/GLVMultiplier;->bcG:Lorg/spongycastle/math/ec/endo/GLVEndomorphism;

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/spongycastle/math/ec/endo/GLVEndomorphism;->ﾞ(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v3

    .line 32
    const/4 v0, 0x0

    aget-object v4, v3, v0

    const/4 v0, 0x1

    aget-object v5, v3, v0

    .line 34
    iget-object v0, p0, Lorg/spongycastle/math/ec/GLVMultiplier;->bcG:Lorg/spongycastle/math/ec/endo/GLVEndomorphism;

    invoke-interface {v0}, Lorg/spongycastle/math/ec/endo/GLVEndomorphism;->qk()Lorg/spongycastle/math/ec/ECPointMap;

    move-result-object v6

    .line 35
    iget-object v0, p0, Lorg/spongycastle/math/ec/GLVMultiplier;->bcG:Lorg/spongycastle/math/ec/endo/GLVEndomorphism;

    invoke-interface {v0}, Lorg/spongycastle/math/ec/endo/GLVEndomorphism;->ql()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-static {p1, v4, v6, v5}, Lorg/spongycastle/math/ec/ECAlgorithms;->ˊ(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPointMap;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 40
    :cond_1
    invoke-interface {v6, p1}, Lorg/spongycastle/math/ec/ECPointMap;->ͺ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-static {p1, v4, v0, v5}, Lorg/spongycastle/math/ec/ECAlgorithms;->ˋ(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
