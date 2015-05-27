.class public Lo/ahz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic bFU:Ltv/periscope/android/ui/main/MainActivity$if;


# direct methods
.method public constructor <init>(Ltv/periscope/android/ui/main/MainActivity$if;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lo/ahz;->bFU:Ltv/periscope/android/ui/main/MainActivity$if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 472
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    .line 473
    iget-object v0, p0, Lo/ahz;->bFU:Ltv/periscope/android/ui/main/MainActivity$if;

    iget-object v0, v0, Ltv/periscope/android/ui/main/MainActivity$if;->bFT:Ltv/periscope/android/ui/main/MainActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/main/MainActivity;->ˊ(Ltv/periscope/android/ui/main/MainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aif;

    move-object v3, v0

    .line 474
    iget-object v0, v3, Lo/aif;->bGb:Lo/aip;

    invoke-virtual {v0, v1}, Lo/aip;->ˮ(F)V

    .line 475
    goto :goto_0

    .line 476
    :cond_0
    return-void
.end method
