.class public Lo/ﺫ;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field private չ:Landroid/util/TypedValue;

.field private ט:Landroid/util/TypedValue;

.field private ס:Landroid/util/TypedValue;

.field private ף:Landroid/util/TypedValue;

.field private ت:Landroid/util/TypedValue;

.field private ٺ:Landroid/util/TypedValue;

.field private final ٻ:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/ﺫ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lo/ﺫ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/ﺫ;->ٻ:Landroid/graphics/Rect;

    .line 56
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 11

    .line 80
    invoke-virtual {p0}, Lo/ﺫ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 81
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 83
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 84
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 86
    const/4 v6, 0x0

    .line 87
    const/high16 v0, -0x80000000

    if-ne v4, v0, :cond_4

    .line 88
    if-eqz v3, :cond_1

    iget-object v7, p0, Lo/ﺫ;->ף:Landroid/util/TypedValue;

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lo/ﺫ;->ס:Landroid/util/TypedValue;

    .line 89
    :goto_1
    if-eqz v7, :cond_4

    iget v0, v7, Landroid/util/TypedValue;->type:I

    if-eqz v0, :cond_4

    .line 90
    const/4 v8, 0x0

    .line 91
    iget v0, v7, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 92
    invoke-virtual {v7, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v8, v0

    goto :goto_2

    .line 93
    :cond_2
    iget v0, v7, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 94
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    invoke-virtual {v7, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    float-to-int v8, v0

    .line 96
    :cond_3
    :goto_2
    if-lez v8, :cond_4

    .line 97
    iget-object v0, p0, Lo/ﺫ;->ٻ:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lo/ﺫ;->ٻ:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    sub-int/2addr v8, v0

    .line 98
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 99
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 101
    const/4 v6, 0x1

    .line 106
    :cond_4
    const/high16 v0, -0x80000000

    if-ne v5, v0, :cond_8

    .line 107
    if-eqz v3, :cond_5

    iget-object v7, p0, Lo/ﺫ;->ت:Landroid/util/TypedValue;

    goto :goto_3

    :cond_5
    iget-object v7, p0, Lo/ﺫ;->ٺ:Landroid/util/TypedValue;

    .line 108
    :goto_3
    if-eqz v7, :cond_8

    iget v0, v7, Landroid/util/TypedValue;->type:I

    if-eqz v0, :cond_8

    .line 109
    const/4 v8, 0x0

    .line 110
    iget v0, v7, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 111
    invoke-virtual {v7, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v8, v0

    goto :goto_4

    .line 112
    :cond_6
    iget v0, v7, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    .line 113
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    invoke-virtual {v7, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    float-to-int v8, v0

    .line 115
    :cond_7
    :goto_4
    if-lez v8, :cond_8

    .line 116
    iget-object v0, p0, Lo/ﺫ;->ٻ:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lo/ﺫ;->ٻ:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    sub-int/2addr v8, v0

    .line 117
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 118
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 124
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 126
    invoke-virtual {p0}, Lo/ﺫ;->getMeasuredWidth()I

    move-result v7

    .line 127
    const/4 v8, 0x0

    .line 129
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 131
    if-nez v6, :cond_d

    const/high16 v0, -0x80000000

    if-ne v4, v0, :cond_d

    .line 132
    if-eqz v3, :cond_9

    iget-object v9, p0, Lo/ﺫ;->ט:Landroid/util/TypedValue;

    goto :goto_5

    :cond_9
    iget-object v9, p0, Lo/ﺫ;->չ:Landroid/util/TypedValue;

    .line 133
    :goto_5
    if-eqz v9, :cond_d

    iget v0, v9, Landroid/util/TypedValue;->type:I

    if-eqz v0, :cond_d

    .line 134
    const/4 v10, 0x0

    .line 135
    iget v0, v9, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    .line 136
    invoke-virtual {v9, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v10, v0

    goto :goto_6

    .line 137
    :cond_a
    iget v0, v9, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_b

    .line 138
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    invoke-virtual {v9, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    float-to-int v10, v0

    .line 140
    :cond_b
    :goto_6
    if-lez v10, :cond_c

    .line 141
    iget-object v0, p0, Lo/ﺫ;->ٻ:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lo/ﺫ;->ٻ:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    sub-int/2addr v10, v0

    .line 143
    :cond_c
    if-ge v7, v10, :cond_d

    .line 144
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 145
    const/4 v8, 0x1

    .line 150
    :cond_d
    if-eqz v8, :cond_e

    .line 151
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 153
    :cond_e
    return-void
.end method

.method public setDecorPadding(IIII)V
    .locals 1

    .line 72
    iget-object v0, p0, Lo/ﺫ;->ٻ:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 73
    invoke-static {p0}, Lo/ﺑ;->ٴ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lo/ﺫ;->requestLayout()V

    .line 76
    :cond_0
    return-void
.end method

.method public ˊ(Landroid/graphics/Rect;)V
    .locals 1

    .line 62
    invoke-virtual {p0, p1}, Lo/ﺫ;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 63
    return-void
.end method
