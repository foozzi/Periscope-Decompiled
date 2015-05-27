.class public Lorg/spongycastle/math/ec/ScaleYPointMap;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/math/ec/ECPointMap;


# instance fields
.field protected final bcQ:Lorg/spongycastle/math/ec/ECFieldElement;


# virtual methods
.method public ͺ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/spongycastle/math/ec/ScaleYPointMap;->bcQ:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {p1, v0}, Lorg/spongycastle/math/ec/ECPoint;->ʾ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
