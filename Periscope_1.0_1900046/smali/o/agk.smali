.class public Lo/agk;
.super Lo/alv;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;


# direct methods
.method public constructor <init>(Ltv/periscope/android/ui/broadcast/ViewerActivity;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lo/agk;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-direct {p0}, Lo/alv;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 336
    iget-object v0, p0, Lo/agk;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ﾞ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lo/agk;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ʽ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    move-result-object v0

    iget-boolean v0, v0, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDA:Z

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lo/agk;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ﾞ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 340
    :cond_0
    return-void
.end method
