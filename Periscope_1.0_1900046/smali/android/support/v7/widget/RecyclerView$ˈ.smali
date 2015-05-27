.class public abstract Landroid/support/v7/widget/RecyclerView$ˈ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "\u02c8"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$ˈ$if;
    }
.end annotation


# instance fields
.field private D:Landroid/support/v7/widget/RecyclerView$ʻ;

.field private aL:Landroid/support/v7/widget/RecyclerView;

.field private bd:I

.field private be:Z

.field private bf:Z

.field private bg:Landroid/view/View;

.field private final bh:Landroid/support/v7/widget/RecyclerView$ˈ$if;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 7547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7533
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->bd:I

    .line 7548
    new-instance v0, Landroid/support/v7/widget/RecyclerView$ˈ$if;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ˈ$if;-><init>(II)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->bh:Landroid/support/v7/widget/RecyclerView$ˈ$if;

    .line 7549
    return-void
.end method

.method static synthetic ˊ(Landroid/support/v7/widget/RecyclerView$ˈ;II)V
    .locals 0

    .line 7531
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ˈ;->ᐪ(II)V

    return-void
.end method

.method private ᐪ(II)V
    .locals 3

    .line 7641
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->bf:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->bd:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 7642
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ˈ;->stop()V

    .line 7644
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->be:Z

    .line 7645
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->bg:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 7647
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->bg:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$ˈ;->ﹴ(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->bd:I

    if-ne v0, v1, :cond_2

    .line 7648
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->bg:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->aL:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->bh:Landroid/support/v7/widget/RecyclerView$ˈ$if;

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ˈ;->ˊ(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ˉ;Landroid/support/v7/widget/RecyclerView$ˈ$if;)V

    .line 7649
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->bh:Landroid/support/v7/widget/RecyclerView$ˈ$if;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$ˈ$if;->ˊ(Landroid/support/v7/widget/RecyclerView$ˈ$if;Landroid/support/v7/widget/RecyclerView;)V

    .line 7650
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ˈ;->stop()V

    goto :goto_0

    .line 7652
    :cond_2
    const-string v0, "RecyclerView"

    const-string v1, "Passed over target position while smooth scrolling."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7653
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->bg:Landroid/view/View;

    .line 7656
    :cond_3
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->bf:Z

    if-eqz v0, :cond_4

    .line 7657
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->aL:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->bh:Landroid/support/v7/widget/RecyclerView$ˈ$if;

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/RecyclerView$ˈ;->ˊ(IILandroid/support/v7/widget/RecyclerView$ˉ;Landroid/support/v7/widget/RecyclerView$ˈ$if;)V

    .line 7658
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->bh:Landroid/support/v7/widget/RecyclerView$ˈ$if;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$ˈ$if;->ˊ(Landroid/support/v7/widget/RecyclerView$ˈ$if;Landroid/support/v7/widget/RecyclerView;)V

    .line 7660
    :cond_4
    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .line 7627
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->bf:Z

    return v0
.end method

.method protected abstract onStop()V
.end method

.method protected final stop()V
    .locals 2

    .line 7595
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->bf:Z

    if-nez v0, :cond_0

    .line 7596
    return-void

    .line 7598
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ˈ;->onStop()V

    .line 7599
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->aL:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˏ(Landroid/support/v7/widget/RecyclerView$ˉ;I)I

    .line 7600
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->bg:Landroid/view/View;

    .line 7601
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->bd:I

    .line 7602
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->be:Z

    .line 7603
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->bf:Z

    .line 7605
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->D:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-static {v0, p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˊ(Landroid/support/v7/widget/RecyclerView$ʻ;Landroid/support/v7/widget/RecyclerView$ˈ;)V

    .line 7607
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->D:Landroid/support/v7/widget/RecyclerView$ʻ;

    .line 7608
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->aL:Landroid/support/v7/widget/RecyclerView;

    .line 7609
    return-void
.end method

.method protected abstract ˊ(IILandroid/support/v7/widget/RecyclerView$ˉ;Landroid/support/v7/widget/RecyclerView$ˈ$if;)V
.end method

.method protected abstract ˊ(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ˉ;Landroid/support/v7/widget/RecyclerView$ˈ$if;)V
.end method

.method public ء()Z
    .locals 1

    .line 7619
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->be:Z

    return v0
.end method

.method public ر()I
    .locals 1

    .line 7637
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->bd:I

    return v0
.end method

.method public ᕽ(I)V
    .locals 0

    .line 7578
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->bd:I

    .line 7579
    return-void
.end method

.method protected ᵀ(Landroid/view/View;)V
    .locals 2

    .line 7691
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$ˈ;->ﹴ(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ˈ;->ر()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 7692
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->bg:Landroid/view/View;

    .line 7697
    :cond_0
    return-void
.end method

.method public ﹴ(Landroid/view/View;)I
    .locals 1

    .line 7666
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->ᴸ(Landroid/view/View;)I

    move-result v0

    return v0
.end method
