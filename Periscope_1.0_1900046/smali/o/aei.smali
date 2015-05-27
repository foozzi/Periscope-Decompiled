.class public Lo/aei;
.super Landroid/view/ViewGroup;
.source ""


# instance fields
.field private aL:Landroid/support/v7/widget/RecyclerView;

.field private bAw:Landroid/widget/ImageView;

.field private bAx:Landroid/view/View;

.field private ȑ:Landroid/widget/TextView;

.field private Ч:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0, p1}, Lo/aei;->ˊ(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p1}, Lo/aei;->ˊ(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0, p1}, Lo/aei;->ˊ(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method private ˊ(Landroid/content/Context;)V
    .locals 4

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 40
    const v0, 0x7f0b0060

    invoke-virtual {p0, v0}, Lo/aei;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/aei;->bAw:Landroid/widget/ImageView;

    .line 41
    const v0, 0x7f0b005e

    invoke-virtual {p0, v0}, Lo/aei;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/aei;->bAx:Landroid/view/View;

    .line 42
    const v0, 0x7f0b0083

    invoke-virtual {p0, v0}, Lo/aei;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/aei;->ȑ:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f0b0084

    invoke-virtual {p0, v0}, Lo/aei;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/aei;->Ч:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Lo/aei;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lo/aei;->aL:Landroid/support/v7/widget/RecyclerView;

    .line 45
    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v3, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 46
    iget-object v0, p0, Lo/aei;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$ʻ;)V

    .line 47
    iget-object v0, p0, Lo/aei;->aL:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ˎ;)V

    .line 48
    return-void
.end method


# virtual methods
.method public canScrollVertically(I)Z
    .locals 1

    .line 75
    iget-object v0, p0, Lo/aei;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 13

    .line 121
    sub-int v3, p4, p2

    .line 122
    sub-int v4, p5, p3

    .line 124
    iget-object v0, p0, Lo/aei;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v5

    .line 125
    sub-int v6, v4, v5

    .line 127
    iget-object v0, p0, Lo/aei;->aL:Landroid/support/v7/widget/RecyclerView;

    add-int v1, v6, v5

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v6, v3, v1}, Landroid/support/v7/widget/RecyclerView;->layout(IIII)V

    .line 129
    iget-object v0, p0, Lo/aei;->bAx:Landroid/view/View;

    iget-object v1, p0, Lo/aei;->bAx:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v6, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v3, v6}, Landroid/view/View;->layout(IIII)V

    .line 132
    invoke-virtual {p0}, Lo/aei;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 133
    iget-object v0, p0, Lo/aei;->bAw:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    .line 134
    iget-object v0, p0, Lo/aei;->bAw:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v9

    .line 136
    iget-object v0, p0, Lo/aei;->bAx:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 138
    sub-int v0, v3, v7

    sub-int v11, v0, v8

    .line 139
    div-int/lit8 v0, v9, 0x2

    sub-int v12, v10, v0

    .line 141
    iget-object v0, p0, Lo/aei;->bAw:Landroid/widget/ImageView;

    add-int v1, v11, v8

    add-int v2, v12, v9

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 142
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 105
    iget-object v0, p0, Lo/aei;->bAw:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p2}, Lo/aei;->measureChild(Landroid/view/View;II)V

    .line 106
    iget-object v0, p0, Lo/aei;->bAx:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lo/aei;->measureChild(Landroid/view/View;II)V

    .line 109
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 110
    int-to-float v0, v3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 113
    iget-object v0, p0, Lo/aei;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0, p1, v4}, Lo/aei;->measureChild(Landroid/view/View;II)V

    .line 115
    invoke-virtual {p0}, Lo/aei;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lo/aei;->getDefaultSize(II)I

    move-result v0

    iget-object v1, p0, Lo/aei;->bAx:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lo/aei;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lo/aei;->setMeasuredDimension(II)V

    .line 117
    return-void
.end method

.method public setActionButtonVisibility(Z)V
    .locals 2

    .line 84
    if-eqz p1, :cond_0

    .line 85
    iget-object v0, p0, Lo/aei;->bAw:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lo/aei;->bAw:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    :goto_0
    return-void
.end method

.method public setAdapter(Lo/adx;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lo/aei;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$if;)V

    .line 101
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lo/aei;->bAw:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    .line 60
    invoke-static {p1}, Lo/anw;->ᐨ(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lo/aei;->ȑ:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lo/aei;->ȑ:Landroid/widget/TextView;

    const v1, 0x7f060103

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 65
    :goto_0
    invoke-static {p2}, Lo/anw;->ᐨ(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lo/aei;->Ч:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lo/aei;->Ч:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 69
    :cond_1
    iget-object v0, p0, Lo/aei;->Ч:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    :goto_1
    return-void
.end method

.method public setTitleAlpha(F)V
    .locals 1

    .line 54
    iget-object v0, p0, Lo/aei;->bAx:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 55
    iget-object v0, p0, Lo/aei;->bAw:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 56
    iget-object v0, p0, Lo/aei;->bAw:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 57
    return-void
.end method

.method public xH()V
    .locals 2

    .line 92
    iget-object v0, p0, Lo/aei;->bAw:Landroid/widget/ImageView;

    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    return-void
.end method

.method public xI()V
    .locals 2

    .line 96
    iget-object v0, p0, Lo/aei;->bAw:Landroid/widget/ImageView;

    const v1, 0x7f0200b0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    return-void
.end method

.method public xJ()V
    .locals 2

    .line 145
    iget-object v0, p0, Lo/aei;->bAw:Landroid/widget/ImageView;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 146
    return-void
.end method
