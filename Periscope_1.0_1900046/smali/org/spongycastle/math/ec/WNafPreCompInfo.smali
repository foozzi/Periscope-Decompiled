.class public Lorg/spongycastle/math/ec/WNafPreCompInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/math/ec/PreCompInfo;


# instance fields
.field protected bcF:[Lorg/spongycastle/math/ec/ECPoint;

.field protected bda:[Lorg/spongycastle/math/ec/ECPoint;

.field protected bdb:Lorg/spongycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/math/ec/WNafPreCompInfo;->bcF:[Lorg/spongycastle/math/ec/ECPoint;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/math/ec/WNafPreCompInfo;->bda:[Lorg/spongycastle/math/ec/ECPoint;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/math/ec/WNafPreCompInfo;->bdb:Lorg/spongycastle/math/ec/ECPoint;

    return-void
.end method


# virtual methods
.method public pY()[Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/spongycastle/math/ec/WNafPreCompInfo;->bcF:[Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public qg()[Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/spongycastle/math/ec/WNafPreCompInfo;->bda:[Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public qh()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/spongycastle/math/ec/WNafPreCompInfo;->bdb:Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public ˎ([Lorg/spongycastle/math/ec/ECPoint;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lorg/spongycastle/math/ec/WNafPreCompInfo;->bcF:[Lorg/spongycastle/math/ec/ECPoint;

    .line 35
    return-void
.end method

.method public ˏ([Lorg/spongycastle/math/ec/ECPoint;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lorg/spongycastle/math/ec/WNafPreCompInfo;->bda:[Lorg/spongycastle/math/ec/ECPoint;

    .line 45
    return-void
.end method

.method public ι(Lorg/spongycastle/math/ec/ECPoint;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lorg/spongycastle/math/ec/WNafPreCompInfo;->bdb:Lorg/spongycastle/math/ec/ECPoint;

    .line 55
    return-void
.end method
