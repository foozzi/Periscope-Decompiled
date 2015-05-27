.class public Lorg/spongycastle/math/ec/ScaleXPointMap;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/math/ec/ECPointMap;


# instance fields
.field protected final bcQ:Lorg/spongycastle/math/ec/ECFieldElement;


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lorg/spongycastle/math/ec/ScaleXPointMap;->bcQ:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 10
    return-void
.end method


# virtual methods
.method public ͺ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/spongycastle/math/ec/ScaleXPointMap;->bcQ:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {p1, v0}, Lorg/spongycastle/math/ec/ECPoint;->ι(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
