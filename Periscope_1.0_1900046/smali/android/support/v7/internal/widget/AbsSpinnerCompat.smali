.class public abstract Landroid/support/v7/internal/widget/AbsSpinnerCompat;
.super Lo/ﹹ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/widget/AbsSpinnerCompat$if;,
        Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/\ufe79<Landroid/widget/SpinnerAdapter;>;"
    }
.end annotation


# instance fields
.field ｉ:Landroid/widget/SpinnerAdapter;

.field ｔ:I

.field ｖ:I

.field ｬ:I

.field ｴ:I

.field ｺ:I

.field ﾋ:I

.field private ﾌ:Landroid/database/DataSetObserver;

.field final ﾐ:Landroid/graphics/Rect;

.field final ﾘ:Landroid/support/v7/internal/widget/AbsSpinnerCompat$if;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lo/ﹹ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ｬ:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ｴ:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ｺ:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ﾋ:I

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ﾐ:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat$if;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$if;-><init>(Landroid/support/v7/internal/widget/AbsSpinnerCompat;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ﾘ:Landroid/support/v7/internal/widget/AbsSpinnerCompat$if;

    .line 64
    invoke-direct {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->د()V

    .line 65
    return-void
.end method

.method static synthetic ˊ(Landroid/support/v7/internal/widget/AbsSpinnerCompat;Landroid/view/View;Z)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private د()V
    .locals 1

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setFocusable(Z)V

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setWillNotDraw(Z)V

    .line 73
    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 229
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 35
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .line 308
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ｉ:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .line 286
    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ʎ:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->Ț:I

    if-ltz v0, :cond_0

    .line 287
    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->Ț:I

    iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ｚ:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 289
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 14

    .line 147
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 151
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getPaddingLeft()I

    move-result v5

    .line 152
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getPaddingTop()I

    move-result v6

    .line 153
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getPaddingRight()I

    move-result v7

    .line 154
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getPaddingBottom()I

    move-result v8

    .line 156
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ﾐ:Landroid/graphics/Rect;

    iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ｬ:I

    if-le v5, v1, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ｬ:I

    :goto_0
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 158
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ﾐ:Landroid/graphics/Rect;

    iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ｴ:I

    if-le v6, v1, :cond_1

    move v1, v6

    goto :goto_1

    :cond_1
    iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ｴ:I

    :goto_1
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 160
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ﾐ:Landroid/graphics/Rect;

    iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ｺ:I

    if-le v7, v1, :cond_2

    move v1, v7

    goto :goto_2

    :cond_2
    iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ｺ:I

    :goto_2
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 162
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ﾐ:Landroid/graphics/Rect;

    iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ﾋ:I

    if-le v8, v1, :cond_3

    move v1, v8

    goto :goto_3

    :cond_3
    iget v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ﾋ:I

    :goto_3
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 165
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ƨ:Z

    if-eqz v0, :cond_4

    .line 166
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->handleDataChanged()V

    .line 169
    :cond_4
    const/4 v9, 0x0

    .line 170
    const/4 v10, 0x0

    .line 171
    const/4 v11, 0x1

    .line 173
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getSelectedItemPosition()I

    move-result v12

    .line 174
    if-ltz v12, :cond_7

    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ｉ:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ｉ:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-ge v12, v0, :cond_7

    .line 176
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ﾘ:Landroid/support/v7/internal/widget/AbsSpinnerCompat$if;

    invoke-virtual {v0, v12}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$if;->ᔇ(I)Landroid/view/View;

    move-result-object v13

    .line 177
    if-nez v13, :cond_5

    .line 179
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ｉ:Landroid/widget/SpinnerAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, v12, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 182
    :cond_5
    if-eqz v13, :cond_7

    .line 184
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ﾘ:Landroid/support/v7/internal/widget/AbsSpinnerCompat$if;

    invoke-virtual {v0, v12, v13}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$if;->ˊ(ILandroid/view/View;)V

    .line 186
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_6

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->к:Z

    .line 188
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->к:Z

    .line 191
    :cond_6
    move/from16 v0, p2

    invoke-virtual {p0, v13, p1, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->measureChild(Landroid/view/View;II)V

    .line 193
    invoke-virtual {p0, v13}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ˡ(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ﾐ:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ﾐ:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int v9, v0, v1

    .line 194
    invoke-virtual {p0, v13}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ˮ(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ﾐ:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ﾐ:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int v10, v0, v1

    .line 196
    const/4 v11, 0x0

    .line 200
    :cond_7
    if-eqz v11, :cond_8

    .line 202
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ﾐ:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ﾐ:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int v9, v0, v1

    .line 203
    if-nez v2, :cond_8

    .line 204
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ﾐ:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ﾐ:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int v10, v0, v1

    .line 208
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 209
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 211
    move/from16 v0, p2

    const/4 v1, 0x0

    invoke-static {v9, v0, v1}, Lo/ﺑ;->resolveSizeAndState(III)I

    move-result v4

    .line 212
    const/4 v0, 0x0

    invoke-static {v10, p1, v0}, Lo/ﺑ;->resolveSizeAndState(III)I

    move-result v3

    .line 214
    invoke-virtual {p0, v3, v4}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setMeasuredDimension(II)V

    .line 215
    move/from16 v0, p2

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ｔ:I

    .line 216
    iput p1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ｖ:I

    .line 217
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .line 406
    move-object v0, p1

    check-cast v0, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;

    move-object v4, v0

    .line 408
    invoke-virtual {v4}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lo/ﹹ;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 410
    iget-wide v0, v4, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->Ÿ:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ƨ:Z

    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ﾗ:Z

    .line 413
    iget-wide v0, v4, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->Ÿ:J

    iput-wide v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ｱ:J

    .line 414
    iget v0, v4, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->position:I

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ｮ:I

    .line 415
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ﾜ:I

    .line 416
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->requestLayout()V

    .line 418
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .line 393
    invoke-super {p0}, Lo/ﹹ;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v4

    .line 394
    new-instance v5, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;

    invoke-direct {v5, v4}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 395
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getSelectedItemId()J

    move-result-wide v0

    iput-wide v0, v5, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->Ÿ:J

    .line 396
    iget-wide v0, v5, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->Ÿ:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 397
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getSelectedItemPosition()I

    move-result v0

    iput v0, v5, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->position:I

    goto :goto_0

    .line 399
    :cond_0
    const/4 v0, -0x1

    iput v0, v5, Landroid/support/v7/internal/widget/AbsSpinnerCompat$SavedState;->position:I

    .line 401
    :goto_0
    return-object v5
.end method

.method public requestLayout()V
    .locals 1

    .line 301
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->к:Z

    if-nez v0, :cond_0

    .line 302
    invoke-super {p0}, Lo/ﹹ;->requestLayout()V

    .line 304
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 1

    .line 35
    move-object v0, p1

    check-cast v0, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3

    .line 83
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ｉ:Landroid/widget/SpinnerAdapter;

    const/4 v1, 0x0

    if-eq v1, v0, :cond_0

    .line 84
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ｉ:Landroid/widget/SpinnerAdapter;

    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ﾌ:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 85
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ہ()V

    .line 88
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ｉ:Landroid/widget/SpinnerAdapter;

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ʭ:I

    .line 91
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->λ:J

    .line 93
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ｉ:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_3

    .line 94
    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ʎ:I

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ʝ:I

    .line 95
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ｉ:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ʎ:I

    .line 96
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ᓑ()V

    .line 98
    new-instance v0, Lo/ﹹ$if;

    invoke-direct {v0, p0}, Lo/ﹹ$if;-><init>(Lo/ﹹ;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ﾌ:Landroid/database/DataSetObserver;

    .line 99
    iget-object v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ｉ:Landroid/widget/SpinnerAdapter;

    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ﾌ:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 101
    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ʎ:I

    if-lez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 103
    :goto_0
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ᵗ(I)V

    .line 104
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ﾟ(I)V

    .line 106
    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ʎ:I

    if-nez v0, :cond_2

    .line 108
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ᴬ()V

    .line 111
    :cond_2
    goto :goto_1

    .line 112
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ᓑ()V

    .line 113
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ہ()V

    .line 115
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ᴬ()V

    .line 118
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->requestLayout()V

    .line 119
    return-void
.end method

.method public setSelection(I)V
    .locals 0

    .line 259
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ﾟ(I)V

    .line 260
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->requestLayout()V

    .line 261
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->invalidate()V

    .line 262
    return-void
.end method

.method public setSelection(IZ)V
    .locals 3

    .line 252
    if-eqz p2, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ｚ:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ｚ:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 254
    :goto_0
    invoke-virtual {p0, p1, v2}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ʻ(IZ)V

    .line 255
    return-void
.end method

.method ʻ(IZ)V
    .locals 2

    .line 273
    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ʭ:I

    if-eq p1, v0, :cond_0

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->к:Z

    .line 275
    iget v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->Ț:I

    sub-int v1, p1, v0

    .line 276
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ﾟ(I)V

    .line 277
    invoke-virtual {p0, v1, p2}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ʼ(IZ)V

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->к:Z

    .line 280
    :cond_0
    return-void
.end method

.method abstract ʼ(IZ)V
.end method

.method ˡ(Landroid/view/View;)I
    .locals 1

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method ˮ(Landroid/view/View;)I
    .locals 1

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method ہ()V
    .locals 2

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ƨ:Z

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ﾗ:Z

    .line 128
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->removeAllViewsInLayout()V

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ʭ:I

    .line 130
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->λ:J

    .line 132
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ᵗ(I)V

    .line 133
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ﾟ(I)V

    .line 134
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->invalidate()V

    .line 135
    return-void
.end method

.method ܝ()V
    .locals 7

    .line 235
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildCount()I

    move-result v1

    .line 236
    iget-object v2, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ﾘ:Landroid/support/v7/internal/widget/AbsSpinnerCompat$if;

    .line 237
    iget v3, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->ｚ:I

    .line 240
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    .line 241
    invoke-virtual {p0, v4}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 242
    add-int v6, v3, v4

    .line 243
    invoke-virtual {v2, v6, v5}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$if;->ˊ(ILandroid/view/View;)V

    .line 240
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 245
    :cond_0
    return-void
.end method