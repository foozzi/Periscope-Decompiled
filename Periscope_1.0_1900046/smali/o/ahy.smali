.class public Lo/ahy;
.super Lo/alv;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic bFU:Ltv/periscope/android/ui/main/MainActivity$if;

.field final synthetic bFV:Z

.field final synthetic bFW:Lo/aif;


# direct methods
.method public constructor <init>(Ltv/periscope/android/ui/main/MainActivity$if;ZLo/aif;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lo/ahy;->bFU:Ltv/periscope/android/ui/main/MainActivity$if;

    iput-boolean p2, p0, Lo/ahy;->bFV:Z

    iput-object p3, p0, Lo/ahy;->bFW:Lo/aif;

    invoke-direct {p0}, Lo/alv;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 443
    iget-object v0, p0, Lo/ahy;->bFU:Ltv/periscope/android/ui/main/MainActivity$if;

    iget-object v1, p0, Lo/ahy;->bFW:Lo/aif;

    iget v1, v1, Lo/aif;->bGh:I

    invoke-static {v0, v1}, Ltv/periscope/android/ui/main/MainActivity$if;->ˊ(Ltv/periscope/android/ui/main/MainActivity$if;I)I

    .line 444
    iget-boolean v0, p0, Lo/ahy;->bFV:Z

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lo/ahy;->bFU:Ltv/periscope/android/ui/main/MainActivity$if;

    iget-object v0, v0, Ltv/periscope/android/ui/main/MainActivity$if;->bFT:Ltv/periscope/android/ui/main/MainActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/main/MainActivity;->ˋ(Ltv/periscope/android/ui/main/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 447
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 435
    iget-boolean v0, p0, Lo/ahy;->bFV:Z

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lo/ahy;->bFU:Ltv/periscope/android/ui/main/MainActivity$if;

    iget-object v0, v0, Ltv/periscope/android/ui/main/MainActivity$if;->bFT:Ltv/periscope/android/ui/main/MainActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/main/MainActivity;->ˋ(Ltv/periscope/android/ui/main/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lo/ahy;->bFU:Ltv/periscope/android/ui/main/MainActivity$if;

    iget-object v0, v0, Ltv/periscope/android/ui/main/MainActivity$if;->bFT:Ltv/periscope/android/ui/main/MainActivity;

    invoke-static {v0}, Ltv/periscope/android/ui/main/MainActivity;->ˋ(Ltv/periscope/android/ui/main/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lo/ahy;->bFW:Lo/aif;

    iget v1, v1, Lo/aif;->bGh:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 439
    :cond_0
    return-void
.end method
