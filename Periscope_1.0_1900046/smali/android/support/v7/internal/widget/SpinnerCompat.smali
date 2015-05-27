.class public Landroid/support/v7/internal/widget/SpinnerCompat;
.super Landroid/support/v7/internal/widget/AbsSpinnerCompat;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;,
        Landroid/support/v7/internal/widget/SpinnerCompat$if;,
        Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;,
        Landroid/support/v7/internal/widget/SpinnerCompat$ˊ;,
        Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;
    }
.end annotation


# instance fields
.field private ᐵ:Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;

.field private ᑈ:Landroid/support/v7/internal/widget/SpinnerCompat$ˊ;

.field ᒏ:I

.field private ᒰ:I

.field private ᒱ:Z

.field private final ᒴ:Lo/ฯ;

.field private בּ:Lo/ῑ$ˊ;

.field private ﹽ:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 141
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 142
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 161
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ﹽ:Landroid/graphics/Rect;

    .line 163
    sget-object v0, Lo/ڊ$ʽ;->Spinner:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Lo/ๅ;->ˊ(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lo/ๅ;

    move-result-object v2

    .line 167
    sget v0, Lo/ڊ$ʽ;->Spinner_android_background:I

    invoke-virtual {v2, v0}, Lo/ๅ;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    sget v0, Lo/ڊ$ʽ;->Spinner_android_background:I

    invoke-virtual {v2, v0}, Lo/ๅ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    :cond_0
    const/4 v0, -0x1

    if-ne p4, v0, :cond_1

    .line 172
    sget v0, Lo/ڊ$ʽ;->Spinner_spinnerMode:I

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lo/ๅ;->getInt(II)I

    move-result p4

    .line 175
    :cond_1
    sparse-switch p4, :sswitch_data_0

    goto :goto_0

    .line 177
    :sswitch_0
    new-instance v0, Landroid/support/v7/internal/widget/SpinnerCompat$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat$if;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat;Lo/ʅ;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᐵ:Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;

    .line 178
    goto :goto_0

    .line 182
    :sswitch_1
    new-instance v3, Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;

    invoke-direct {v3, p0, p1, p2, p3}, Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 184
    sget v0, Lo/ڊ$ʽ;->Spinner_android_dropDownWidth:I

    const/4 v1, -0x2

    invoke-virtual {v2, v0, v1}, Lo/ๅ;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᒏ:I

    .line 187
    sget v0, Lo/ڊ$ʽ;->Spinner_android_popupBackground:I

    invoke-virtual {v2, v0}, Lo/ๅ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    iput-object v3, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᐵ:Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;

    .line 191
    new-instance v0, Lo/ʅ;

    invoke-direct {v0, p0, p0, v3}, Lo/ʅ;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat;Landroid/view/View;Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->בּ:Lo/ῑ$ˊ;

    .line 205
    .line 209
    :goto_0
    sget v0, Lo/ڊ$ʽ;->Spinner_android_gravity:I

    const/16 v1, 0x11

    invoke-virtual {v2, v0, v1}, Lo/ๅ;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᒰ:I

    .line 211
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᐵ:Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;

    sget v1, Lo/ڊ$ʽ;->Spinner_prompt:I

    invoke-virtual {v2, v1}, Lo/ๅ;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;->ʼ(Ljava/lang/CharSequence;)V

    .line 213
    sget v0, Lo/ڊ$ʽ;->Spinner_disableChildrenWhenDisabled:I

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lo/ๅ;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᒱ:Z

    .line 216
    invoke-virtual {v2}, Lo/ๅ;->recycle()V

    .line 220
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᑈ:Landroid/support/v7/internal/widget/SpinnerCompat$ˊ;

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᐵ:Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;

    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᑈ:Landroid/support/v7/internal/widget/SpinnerCompat$ˊ;

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᑈ:Landroid/support/v7/internal/widget/SpinnerCompat$ˊ;

    .line 226
    :cond_2
    invoke-virtual {v2}, Lo/ๅ;->ゝ()Lo/ฯ;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᒴ:Lo/ฯ;

    .line 227
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
    .end sparse-switch
.end method

.method public static synthetic ˊ(Landroid/support/v7/internal/widget/SpinnerCompat;)Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;
    .locals 1

    .line 53
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᐵ:Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;

    return-object v0
.end method

.method private ˎ(Landroid/view/View;Z)V
    .locals 11

    .line 558
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 559
    if-nez v3, :cond_0

    .line 560
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 563
    :cond_0
    if-eqz p2, :cond_1

    .line 564
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v3}, Landroid/support/v7/internal/widget/SpinnerCompat;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 567
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->hasFocus()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 568
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᒱ:Z

    if-eqz v0, :cond_2

    .line 569
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 573
    :cond_2
    iget v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ｔ:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ﾐ:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ﾐ:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    .line 575
    iget v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ｖ:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ﾐ:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ﾐ:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v0, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 579
    invoke-virtual {p1, v5, v4}, Landroid/view/View;->measure(II)V

    .line 585
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ﾐ:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ﾐ:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ﾐ:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int v8, v0, v1

    .line 588
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v9, v8, v0

    .line 590
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 591
    const/4 v6, 0x0

    .line 592
    add-int/lit8 v7, v10, 0x0

    .line 594
    invoke-virtual {p1, v6, v8, v7, v9}, Landroid/view/View;->layout(IIII)V

    .line 595
    return-void
.end method

.method private ͺ(IZ)Landroid/view/View;
    .locals 3

    .line 529
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ƨ:Z

    if-nez v0, :cond_0

    .line 530
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ﾘ:Landroid/support/v7/internal/widget/AbsSpinnerCompat$if;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$if;->ᔇ(I)Landroid/view/View;

    move-result-object v2

    .line 531
    if-eqz v2, :cond_0

    .line 533
    invoke-direct {p0, v2, p2}, Landroid/support/v7/internal/widget/SpinnerCompat;->ˎ(Landroid/view/View;Z)V

    .line 535
    return-object v2

    .line 540
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ｉ:Landroid/widget/SpinnerAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 543
    invoke-direct {p0, v2, p2}, Landroid/support/v7/internal/widget/SpinnerCompat;->ˎ(Landroid/view/View;Z)V

    .line 545
    return-object v2
.end method


# virtual methods
.method public getBaseline()I
    .locals 4

    .line 380
    const/4 v2, 0x0

    .line 382
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 383
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 384
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ｉ:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ｉ:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 385
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->ͺ(IZ)Landroid/view/View;

    move-result-object v2

    .line 386
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ﾘ:Landroid/support/v7/internal/widget/AbsSpinnerCompat$if;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$if;->ˊ(ILandroid/view/View;)V

    .line 389
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 390
    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v3

    .line 391
    if-ltz v3, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    return v0

    .line 393
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 613
    invoke-virtual {p0, p2}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelection(I)V

    .line 614
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 615
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 399
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onDetachedFromWindow()V

    .line 401
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᐵ:Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᐵ:Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᐵ:Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;->dismiss()V

    .line 404
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 449
    invoke-super/range {p0 .. p5}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onLayout(ZIIII)V

    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mInLayout:Z

    .line 451
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->ʼ(IZ)V

    .line 452
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->mInLayout:Z

    .line 453
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 432
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onMeasure(II)V

    .line 433
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᐵ:Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 434
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getMeasuredWidth()I

    move-result v2

    .line 435
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->ˊ(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setMeasuredDimension(II)V

    .line 440
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .line 693
    move-object v0, p1

    check-cast v0, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;

    move-object v1, v0

    .line 695
    invoke-virtual {v1}, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 697
    iget-boolean v0, v1, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;->ᖬ:Z

    if-eqz v0, :cond_0

    .line 698
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 699
    if-eqz v2, :cond_0

    .line 700
    new-instance v3, Lo/ί;

    invoke-direct {v3, p0}, Lo/ί;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat;)V

    .line 713
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 716
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 686
    new-instance v1, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;

    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 687
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᐵ:Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᐵ:Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;->ᖬ:Z

    .line 688
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 423
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->בּ:Lo/ῑ$ˊ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->בּ:Lo/ῑ$ˊ;

    invoke-virtual {v0, p0, p1}, Lo/ῑ$ˊ;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    const/4 v0, 0x1

    return v0

    .line 427
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performClick()Z
    .locals 2

    .line 599
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->performClick()Z

    move-result v1

    .line 601
    if-nez v1, :cond_0

    .line 602
    const/4 v1, 0x1

    .line 604
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᐵ:Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 605
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᐵ:Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;->show()V

    .line 609
    :cond_0
    return v1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 1

    .line 53
    move-object v0, p1

    check-cast v0, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3

    .line 362
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 364
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ﾘ:Landroid/support/v7/internal/widget/AbsSpinnerCompat$if;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$if;->clear()V

    .line 366
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 367
    const/16 v0, 0x15

    if-lt v2, v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getViewTypeCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 369
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Spinner adapter view type count must be 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᐵ:Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᐵ:Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;

    new-instance v1, Landroid/support/v7/internal/widget/SpinnerCompat$ˊ;

    invoke-direct {v1, p1}, Landroid/support/v7/internal/widget/SpinnerCompat$ˊ;-><init>(Landroid/widget/SpinnerAdapter;)V

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 374
    :cond_1
    new-instance v0, Landroid/support/v7/internal/widget/SpinnerCompat$ˊ;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/widget/SpinnerCompat$ˊ;-><init>(Landroid/widget/SpinnerAdapter;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᑈ:Landroid/support/v7/internal/widget/SpinnerCompat$ˊ;

    .line 376
    :goto_0
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1

    .line 290
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᐵ:Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;->setHorizontalOffset(I)V

    .line 291
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1

    .line 270
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᐵ:Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;->setVerticalOffset(I)V

    .line 271
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 2

    .line 314
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᐵ:Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;

    instance-of v0, v0, Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;

    if-nez v0, :cond_0

    .line 315
    const-string v0, "Spinner"

    const-string v1, "Cannot set dropdown width for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void

    .line 318
    :cond_0
    iput p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᒏ:I

    .line 319
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .line 335
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setEnabled(Z)V

    .line 336
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᒱ:Z

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getChildCount()I

    move-result v1

    .line 338
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 339
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/SpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 338
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 351
    iget v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᒰ:I

    if-eq v0, p1, :cond_1

    .line 352
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_0

    .line 353
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 355
    :cond_0
    iput p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᒰ:I

    .line 356
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->requestLayout()V

    .line 358
    :cond_1
    return-void
.end method

.method public setOnItemClickListener(Lo/ﹹ$ˊ;)V
    .locals 2

    .line 414
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOnItemClickListener cannot be used with a spinner."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 236
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᐵ:Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;

    instance-of v0, v0, Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;

    if-nez v0, :cond_0

    .line 237
    const-string v0, "Spinner"

    const-string v1, "setPopupBackgroundDrawable: incompatible spinner mode; ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᐵ:Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;

    check-cast v0, Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/SpinnerCompat$ˋ;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    return-void
.end method

.method public setPopupBackgroundResource(I)V
    .locals 1

    .line 250
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᒴ:Lo/ฯ;

    invoke-virtual {v0, p1}, Lo/ฯ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 1

    .line 622
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᐵ:Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;->ʼ(Ljava/lang/CharSequence;)V

    .line 623
    return-void
.end method

.method public setPromptId(I)V
    .locals 1

    .line 630
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->setPrompt(Ljava/lang/CharSequence;)V

    .line 631
    return-void
.end method

.method ʼ(IZ)V
    .locals 9

    .line 463
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ﾐ:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 464
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ﾐ:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ﾐ:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v3, v0, v1

    .line 466
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ƨ:Z

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->handleDataChanged()V

    .line 471
    :cond_0
    iget v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ʎ:I

    if-nez v0, :cond_1

    .line 472
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->ہ()V

    .line 473
    return-void

    .line 476
    :cond_1
    iget v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ƫ:I

    if-ltz v0, :cond_2

    .line 477
    iget v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ƫ:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->ᵗ(I)V

    .line 480
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->ܝ()V

    .line 483
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->removeAllViewsInLayout()V

    .line 486
    iget v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->Ț:I

    iput v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ｚ:I

    .line 487
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ｉ:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_3

    .line 488
    iget v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->Ț:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->ͺ(IZ)Landroid/view/View;

    move-result-object v4

    .line 489
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 490
    move v6, v2

    .line 491
    invoke-static {p0}, Lo/ﺑ;->ˌ(Landroid/view/View;)I

    move-result v7

    .line 492
    iget v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ᒰ:I

    invoke-static {v0, v7}, Lo/৲;->getAbsoluteGravity(II)I

    move-result v8

    .line 493
    and-int/lit8 v0, v8, 0x7

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 495
    :sswitch_0
    div-int/lit8 v0, v3, 0x2

    add-int/2addr v0, v2

    div-int/lit8 v1, v5, 0x2

    sub-int v6, v0, v1

    .line 496
    goto :goto_0

    .line 498
    :sswitch_1
    add-int v0, v2, v3

    sub-int v6, v0, v5

    .line 501
    :goto_0
    invoke-virtual {v4, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 505
    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ﾘ:Landroid/support/v7/internal/widget/AbsSpinnerCompat$if;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat$if;->clear()V

    .line 507
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->invalidate()V

    .line 509
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->ᴬ()V

    .line 511
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ƨ:Z

    .line 512
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ﾗ:Z

    .line 513
    iget v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->Ț:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->ﾟ(I)V

    .line 514
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method ˊ(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 13

    .line 641
    if-nez p1, :cond_0

    .line 642
    const/4 v0, 0x0

    return v0

    .line 645
    :cond_0
    const/4 v3, 0x0

    .line 646
    const/4 v4, 0x0

    .line 647
    const/4 v5, 0x0

    .line 648
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 650
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 655
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 656
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v1, v8, 0xf

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 657
    sub-int v10, v9, v8

    .line 658
    rsub-int/lit8 v0, v10, 0xf

    sub-int v0, v8, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 659
    move v11, v8

    :goto_0
    if-ge v11, v9, :cond_3

    .line 660
    invoke-interface {p1, v11}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v12

    .line 661
    if-eq v12, v5, :cond_1

    .line 662
    move v5, v12

    .line 663
    const/4 v4, 0x0

    .line 665
    :cond_1
    invoke-interface {p1, v11, v4, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 666
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_2

    .line 667
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 671
    :cond_2
    invoke-virtual {v4, v6, v7}, Landroid/view/View;->measure(II)V

    .line 672
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 659
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 676
    :cond_3
    if-eqz p2, :cond_4

    .line 677
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ﹽ:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 678
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ﹽ:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->ﹽ:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v3, v0

    .line 681
    :cond_4
    return v3
.end method

.method public ˊ(Lo/ﹹ$ˊ;)V
    .locals 0

    .line 418
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setOnItemClickListener(Lo/ﹹ$ˊ;)V

    .line 419
    return-void
.end method
