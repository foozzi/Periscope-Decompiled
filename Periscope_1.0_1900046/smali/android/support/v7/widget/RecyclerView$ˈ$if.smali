.class public Landroid/support/v7/widget/RecyclerView$ˈ$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView$ˈ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private bi:I

.field private bj:I

.field private bk:I

.field private bl:Z

.field private bm:I

.field private mInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 7772
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/RecyclerView$ˈ$if;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 7773
    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 1

    .line 7791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7761
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ$if;->bl:Z

    .line 7765
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ$if;->bm:I

    .line 7792
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$ˈ$if;->bi:I

    .line 7793
    iput p2, p0, Landroid/support/v7/widget/RecyclerView$ˈ$if;->bj:I

    .line 7794
    iput p3, p0, Landroid/support/v7/widget/RecyclerView$ˈ$if;->bk:I

    .line 7795
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$ˈ$if;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 7796
    return-void
.end method

.method static synthetic ˊ(Landroid/support/v7/widget/RecyclerView$ˈ$if;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 7749
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ˈ$if;->ٴ(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method private ٴ(Landroid/support/v7/widget/RecyclerView;)V
    .locals 5

    .line 7798
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ$if;->bl:Z

    if-eqz v0, :cond_3

    .line 7799
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ˈ$if;->ڎ()V

    .line 7800
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ$if;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    .line 7801
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ$if;->bk:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 7802
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->ᐧ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$ˍ;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$ˈ$if;->bi:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$ˈ$if;->bj:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ˍ;->smoothScrollBy(II)V

    goto :goto_0

    .line 7804
    :cond_0
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->ᐧ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$ˍ;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$ˈ$if;->bi:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$ˈ$if;->bj:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$ˈ$if;->bk:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$ˍ;->ʽ(III)V

    goto :goto_0

    .line 7807
    :cond_1
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->ᐧ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$ˍ;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$ˈ$if;->bi:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$ˈ$if;->bj:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$ˈ$if;->bk:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$ˈ$if;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$ˍ;->ˊ(IIILandroid/view/animation/Interpolator;)V

    .line 7809
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ$if;->bm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ$if;->bm:I

    .line 7810
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ$if;->bm:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 7813
    const-string v0, "RecyclerView"

    const-string v1, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7816
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ$if;->bl:Z

    goto :goto_1

    .line 7818
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ$if;->bm:I

    .line 7820
    :goto_1
    return-void
.end method

.method private ڎ()V
    .locals 2

    .line 7823
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ$if;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ$if;->bk:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 7824
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7826
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ˈ$if;->bk:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 7827
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7829
    :cond_1
    return-void
.end method
