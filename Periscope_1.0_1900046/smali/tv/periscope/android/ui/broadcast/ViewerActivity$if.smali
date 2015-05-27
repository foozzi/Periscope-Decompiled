.class Ltv/periscope/android/ui/broadcast/ViewerActivity$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/periscope/android/ui/broadcast/ViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "if"
.end annotation


# instance fields
.field final synthetic bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;


# direct methods
.method private constructor <init>(Ltv/periscope/android/ui/broadcast/ViewerActivity;)V
    .locals 0

    .line 521
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity$if;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltv/periscope/android/ui/broadcast/ViewerActivity;Lo/agg;)V
    .locals 0

    .line 521
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/broadcast/ViewerActivity$if;-><init>(Ltv/periscope/android/ui/broadcast/ViewerActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 524
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity$if;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ՙ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity$if;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    :cond_0
    return-void

    .line 527
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity$if;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ʽ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    move-result-object v0

    sget-object v1, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDx:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity$if;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ˋ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/aek;

    move-result-object v0

    invoke-virtual {v0}, Lo/aek;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 528
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity$if;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ٴ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/vn;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity$if;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v1}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ι(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity$if;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v2}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ˈ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Lo/vm;

    move-result-object v2

    iget-object v2, v2, Lo/vm;->bnn:Ljava/lang/String;

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity$if;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v3}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->י(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lo/vn;->ʻ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 529
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity$if;->bDv:Ltv/periscope/android/ui/broadcast/ViewerActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ViewerActivity;->ﹳ(Ltv/periscope/android/ui/broadcast/ViewerActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 531
    :cond_2
    return-void
.end method
