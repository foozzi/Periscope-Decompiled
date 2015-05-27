.class public abstract Landroid/support/v7/widget/RecyclerView$aux;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "aux"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6837
    return-void
.end method

.method public ˊ(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ˉ;)V
    .locals 0

    .line 6828
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$aux;->ˊ(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    .line 6829
    return-void
.end method

.method public ˊ(Landroid/graphics/Rect;ILandroid/support/v7/widget/RecyclerView;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6867
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 6868
    return-void
.end method

.method public ˊ(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ˉ;)V
    .locals 1

    .line 6891
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʼ;->Ј()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Landroid/support/v7/widget/RecyclerView$aux;->ˊ(Landroid/graphics/Rect;ILandroid/support/v7/widget/RecyclerView;)V

    .line 6893
    return-void
.end method

.method public ˋ(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6858
    return-void
.end method

.method public ˋ(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ˉ;)V
    .locals 0

    .line 6849
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$aux;->ˋ(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    .line 6850
    return-void
.end method
