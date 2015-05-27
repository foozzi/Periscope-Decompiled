.class public Landroid/support/v7/widget/RecyclerView$ʼ;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u02bc"
.end annotation


# instance fields
.field aO:Landroid/support/v7/widget/RecyclerView$ˑ;

.field final aP:Landroid/graphics/Rect;

.field aQ:Z

.field aR:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 7412
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 7400
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʼ;->aP:Landroid/graphics/Rect;

    .line 7401
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ʼ;->aQ:Z

    .line 7405
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ʼ;->aR:Z

    .line 7413
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 7408
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7400
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʼ;->aP:Landroid/graphics/Rect;

    .line 7401
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ʼ;->aQ:Z

    .line 7405
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ʼ;->aR:Z

    .line 7409
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$ʼ;)V
    .locals 1

    .line 7424
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7400
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʼ;->aP:Landroid/graphics/Rect;

    .line 7401
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ʼ;->aQ:Z

    .line 7405
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ʼ;->aR:Z

    .line 7425
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 7420
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7400
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʼ;->aP:Landroid/graphics/Rect;

    .line 7401
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ʼ;->aQ:Z

    .line 7405
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ʼ;->aR:Z

    .line 7421
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 7416
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 7400
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʼ;->aP:Landroid/graphics/Rect;

    .line 7401
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ʼ;->aQ:Z

    .line 7405
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ʼ;->aR:Z

    .line 7417
    return-void
.end method


# virtual methods
.method public ϲ()Z
    .locals 1

    .line 7455
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʼ;->aO:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->isRemoved()Z

    move-result v0

    return v0
.end method

.method public ϳ()Z
    .locals 1

    .line 7466
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʼ;->aO:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ἱ()Z

    move-result v0

    return v0
.end method

.method public Ј()I
    .locals 1

    .line 7483
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ʼ;->aO:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->getLayoutPosition()I

    move-result v0

    return v0
.end method
