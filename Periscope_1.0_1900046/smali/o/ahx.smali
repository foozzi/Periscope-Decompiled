.class public Lo/ahx;
.super Lo/alv;
.source ""


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

    .line 406
    iput-object p1, p0, Lo/ahx;->bFU:Ltv/periscope/android/ui/main/MainActivity$if;

    invoke-direct {p0}, Lo/alv;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 409
    iget-object v0, p0, Lo/ahx;->bFU:Ltv/periscope/android/ui/main/MainActivity$if;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltv/periscope/android/ui/main/MainActivity$if;->ˊ(Ltv/periscope/android/ui/main/MainActivity$if;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 410
    return-void
.end method
