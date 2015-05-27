.class public Lorg/spongycastle/math/ec/ECCurve$Config;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Config"
.end annotation


# instance fields
.field protected bco:I

.field protected bcp:Lorg/spongycastle/math/ec/endo/ECEndomorphism;

.field protected bcq:Lorg/spongycastle/math/ec/ECMultiplier;

.field final synthetic bcr:Lorg/spongycastle/math/ec/ECCurve;


# direct methods
.method constructor <init>(Lorg/spongycastle/math/ec/ECCurve;ILorg/spongycastle/math/ec/endo/ECEndomorphism;Lorg/spongycastle/math/ec/ECMultiplier;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/spongycastle/math/ec/ECCurve$Config;->bcr:Lorg/spongycastle/math/ec/ECCurve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p2, p0, Lorg/spongycastle/math/ec/ECCurve$Config;->bco:I

    .line 43
    iput-object p3, p0, Lorg/spongycastle/math/ec/ECCurve$Config;->bcp:Lorg/spongycastle/math/ec/endo/ECEndomorphism;

    .line 44
    iput-object p4, p0, Lorg/spongycastle/math/ec/ECCurve$Config;->bcq:Lorg/spongycastle/math/ec/ECMultiplier;

    .line 45
    return-void
.end method


# virtual methods
.method public pq()Lorg/spongycastle/math/ec/ECCurve;
    .locals 3

    .line 67
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$Config;->bcr:Lorg/spongycastle/math/ec/ECCurve;

    iget v1, p0, Lorg/spongycastle/math/ec/ECCurve$Config;->bco:I

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECCurve;->ﭨ(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$Config;->bcr:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->pg()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    .line 73
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$Config;->bcr:Lorg/spongycastle/math/ec/ECCurve;

    if-ne v2, v0, :cond_1

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "implementation returned current curve"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    iget v0, p0, Lorg/spongycastle/math/ec/ECCurve$Config;->bco:I

    iput v0, v2, Lorg/spongycastle/math/ec/ECCurve;->bco:I

    .line 79
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$Config;->bcp:Lorg/spongycastle/math/ec/endo/ECEndomorphism;

    iput-object v0, v2, Lorg/spongycastle/math/ec/ECCurve;->bcp:Lorg/spongycastle/math/ec/endo/ECEndomorphism;

    .line 80
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$Config;->bcq:Lorg/spongycastle/math/ec/ECMultiplier;

    iput-object v0, v2, Lorg/spongycastle/math/ec/ECCurve;->bcq:Lorg/spongycastle/math/ec/ECMultiplier;

    .line 82
    return-object v2
.end method

.method public ˊ(Lorg/spongycastle/math/ec/endo/ECEndomorphism;)Lorg/spongycastle/math/ec/ECCurve$Config;
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/spongycastle/math/ec/ECCurve$Config;->bcp:Lorg/spongycastle/math/ec/endo/ECEndomorphism;

    .line 56
    return-object p0
.end method

.method public ﮢ(I)Lorg/spongycastle/math/ec/ECCurve$Config;
    .locals 0

    .line 49
    iput p1, p0, Lorg/spongycastle/math/ec/ECCurve$Config;->bco:I

    .line 50
    return-object p0
.end method
