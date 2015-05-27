.class public Lo/agj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


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

    .line 289
    iput-object p1, p0, Lo/agj;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 5

    .line 292
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/agj;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ـ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/adw;

    move-result-object v0

    iget-object v1, p0, Lo/agj;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v1}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ˎ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/aei;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/adw;->ˢ(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/agj;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ᐧ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/ads;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/agj;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ᐧ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/ads;

    move-result-object v0

    invoke-virtual {v0}, Lo/ads;->xf()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lo/agj;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ﹳ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/agj;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v1}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ᐨ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 297
    iget-object v0, p0, Lo/agj;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ﹳ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/agj;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v1}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ᐨ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 299
    :cond_0
    return-void
.end method
