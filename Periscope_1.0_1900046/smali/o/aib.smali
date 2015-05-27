.class public Lo/aib;
.super Lo/alv;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic bFU:Ltv/periscope/android/ui/main/MainActivity$if;

.field final synthetic bFW:Lo/aif;


# direct methods
.method public constructor <init>(Ltv/periscope/android/ui/main/MainActivity$if;Lo/aif;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lo/aib;->bFU:Ltv/periscope/android/ui/main/MainActivity$if;

    iput-object p2, p0, Lo/aib;->bFW:Lo/aif;

    invoke-direct {p0}, Lo/alv;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 497
    iget-object v0, p0, Lo/aib;->bFU:Ltv/periscope/android/ui/main/MainActivity$if;

    iget-object v1, p0, Lo/aib;->bFW:Lo/aif;

    invoke-static {v0, v1}, Ltv/periscope/android/ui/main/MainActivity$if;->ˊ(Ltv/periscope/android/ui/main/MainActivity$if;Lo/aif;)V

    .line 498
    iget-object v0, p0, Lo/aib;->bFU:Ltv/periscope/android/ui/main/MainActivity$if;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltv/periscope/android/ui/main/MainActivity$if;->ˊ(Ltv/periscope/android/ui/main/MainActivity$if;Lo/abf;)Lo/abf;

    .line 499
    iget-object v0, p0, Lo/aib;->bFU:Ltv/periscope/android/ui/main/MainActivity$if;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltv/periscope/android/ui/main/MainActivity$if;->ˋ(Ltv/periscope/android/ui/main/MainActivity$if;Lo/abf;)Lo/abf;

    .line 500
    return-void
.end method
