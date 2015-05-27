.class public Lo/agh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 194
    iput-object p1, p0, Lo/agh;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 197
    iget-object v0, p0, Lo/agh;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lo/agh;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ˋ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/aek;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/agh;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ˋ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/aek;

    move-result-object v0

    invoke-virtual {v0}, Lo/aek;->xZ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    const-string v0, "ViewerActivity"

    const-string v1, "Buffering for more than 1000, showing loading bars."

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lo/agh;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    iget-object v1, p0, Lo/agh;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    const v2, 0x7f0600f8

    invoke-virtual {v1, v2}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ˊ(Ltv/periscope/android/ui/broadcast/ViewerActivity;ZLjava/lang/String;)V

    .line 204
    :cond_1
    iget-object v0, p0, Lo/agh;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ˊ(Ltv/periscope/android/ui/broadcast/ViewerActivity;Z)Z

    .line 205
    return-void
.end method
