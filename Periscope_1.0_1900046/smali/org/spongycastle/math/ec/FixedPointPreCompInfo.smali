.class public Lorg/spongycastle/math/ec/FixedPointPreCompInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/math/ec/PreCompInfo;


# instance fields
.field protected bcF:[Lorg/spongycastle/math/ec/ECPoint;

.field protected width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/math/ec/FixedPointPreCompInfo;->bcF:[Lorg/spongycastle/math/ec/ECPoint;

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/math/ec/FixedPointPreCompInfo;->width:I

    return-void
.end method


# virtual methods
.method public getWidth()I
    .locals 1

    .line 33
    iget v0, p0, Lorg/spongycastle/math/ec/FixedPointPreCompInfo;->width:I

    return v0
.end method

.method public pY()[Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/spongycastle/math/ec/FixedPointPreCompInfo;->bcF:[Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public setWidth(I)V
    .locals 0

    .line 38
    iput p1, p0, Lorg/spongycastle/math/ec/FixedPointPreCompInfo;->width:I

    .line 39
    return-void
.end method

.method public ˎ([Lorg/spongycastle/math/ec/ECPoint;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lorg/spongycastle/math/ec/FixedPointPreCompInfo;->bcF:[Lorg/spongycastle/math/ec/ECPoint;

    .line 29
    return-void
.end method
