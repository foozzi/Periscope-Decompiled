.class public Lo/aia;
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

    .line 486
    iput-object p1, p0, Lo/aia;->bFU:Ltv/periscope/android/ui/main/MainActivity$if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 489
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    .line 490
    iget-object v0, p0, Lo/aia;->bFU:Ltv/periscope/android/ui/main/MainActivity$if;

    iget-object v0, v0, Ltv/periscope/android/ui/main/MainActivity$if;->bFT:Ltv/periscope/android/ui/main/MainActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/main/MainActivity;->ˎ(Ltv/periscope/android/ui/main/MainActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/aia;->bFU:Ltv/periscope/android/ui/main/MainActivity$if;

    invoke-static {v1}, Ltv/periscope/android/ui/main/MainActivity$if;->ˊ(Ltv/periscope/android/ui/main/MainActivity$if;)Lo/abf;

    move-result-object v1

    invoke-virtual {v1, v2}, Lo/abf;->ˆ(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 491
    iget-object v0, p0, Lo/aia;->bFU:Ltv/periscope/android/ui/main/MainActivity$if;

    iget-object v0, v0, Ltv/periscope/android/ui/main/MainActivity$if;->bFT:Ltv/periscope/android/ui/main/MainActivity;

    iget-object v1, p0, Lo/aia;->bFU:Ltv/periscope/android/ui/main/MainActivity$if;

    invoke-static {v1}, Ltv/periscope/android/ui/main/MainActivity$if;->ˋ(Ltv/periscope/android/ui/main/MainActivity$if;)Lo/abf;

    move-result-object v1

    invoke-virtual {v1, v2}, Lo/abf;->ˆ(F)I

    move-result v1

    invoke-static {v0, v1}, Ltv/periscope/android/ui/main/MainActivity;->ˊ(Ltv/periscope/android/ui/main/MainActivity;I)V

    .line 492
    return-void
.end method
