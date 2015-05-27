.class public Lo/ヽ;
.super Lo/ᵪ;
.source ""

# interfaces
.implements Lo/ﭔ;


# instance fields
.field private ȑ:Landroid/widget/TextView;

.field private ʡ:Landroid/graphics/drawable/Drawable;

.field private ε:Ljava/lang/CharSequence;

.field private κ:Landroid/view/View;

.field private ν:Landroid/view/View;

.field private Ϛ:Landroid/widget/LinearLayout;

.field private Ч:Landroid/widget/TextView;

.field private з:I

.field private л:I

.field private ь:Z

.field private ҫ:I

.field private ү:Lo/ᓑ;

.field private ҷ:Z

.field private Һ:I

.field private ḹ:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/ヽ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 75
    sget v0, Lo/ڊ$if;->actionModeStyle:I

    invoke-direct {p0, p1, p2, v0}, Lo/ヽ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lo/ᵪ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    sget-object v0, Lo/ڊ$ʽ;->ActionMode:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Lo/ๅ;->ˊ(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lo/ๅ;

    move-result-object v2

    .line 83
    sget v0, Lo/ڊ$ʽ;->ActionMode_background:I

    invoke-virtual {v2, v0}, Lo/ๅ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/ヽ;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    sget v0, Lo/ڊ$ʽ;->ActionMode_titleTextStyle:I

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lo/ๅ;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lo/ヽ;->з:I

    .line 87
    sget v0, Lo/ڊ$ʽ;->ActionMode_subtitleTextStyle:I

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lo/ๅ;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lo/ヽ;->л:I

    .line 90
    sget v0, Lo/ڊ$ʽ;->ActionMode_height:I

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lo/ๅ;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lo/ヽ;->ﮈ:I

    .line 93
    sget v0, Lo/ڊ$ʽ;->ActionMode_backgroundSplit:I

    invoke-virtual {v2, v0}, Lo/ๅ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lo/ヽ;->ʡ:Landroid/graphics/drawable/Drawable;

    .line 96
    sget v0, Lo/ڊ$ʽ;->ActionMode_closeItemLayout:I

    sget v1, Lo/ڊ$ᐝ;->abc_action_mode_close_item_material:I

    invoke-virtual {v2, v0, v1}, Lo/ๅ;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lo/ヽ;->ҫ:I

    .line 100
    invoke-virtual {v2}, Lo/ๅ;->recycle()V

    .line 101
    return-void
.end method

.method private ᐥ()V
    .locals 5

    .line 183
    iget-object v0, p0, Lo/ヽ;->Ϛ:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 184
    invoke-virtual {p0}, Lo/ヽ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 185
    sget v0, Lo/ڊ$ᐝ;->abc_action_bar_title_item:I

    invoke-virtual {v3, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 186
    invoke-virtual {p0}, Lo/ヽ;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lo/ヽ;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lo/ヽ;->Ϛ:Landroid/widget/LinearLayout;

    .line 187
    iget-object v0, p0, Lo/ヽ;->Ϛ:Landroid/widget/LinearLayout;

    sget v1, Lo/ڊ$ˏ;->action_bar_title:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/ヽ;->ȑ:Landroid/widget/TextView;

    .line 188
    iget-object v0, p0, Lo/ヽ;->Ϛ:Landroid/widget/LinearLayout;

    sget v1, Lo/ڊ$ˏ;->action_bar_subtitle:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/ヽ;->Ч:Landroid/widget/TextView;

    .line 189
    iget v0, p0, Lo/ヽ;->з:I

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lo/ヽ;->ȑ:Landroid/widget/TextView;

    invoke-virtual {p0}, Lo/ヽ;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lo/ヽ;->з:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 192
    :cond_0
    iget v0, p0, Lo/ヽ;->л:I

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lo/ヽ;->Ч:Landroid/widget/TextView;

    invoke-virtual {p0}, Lo/ヽ;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lo/ヽ;->л:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 197
    :cond_1
    iget-object v0, p0, Lo/ヽ;->ȑ:Landroid/widget/TextView;

    iget-object v1, p0, Lo/ヽ;->ḹ:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lo/ヽ;->Ч:Landroid/widget/TextView;

    iget-object v1, p0, Lo/ヽ;->ε:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lo/ヽ;->ḹ:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 201
    :goto_0
    iget-object v0, p0, Lo/ヽ;->ε:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 202
    :goto_1
    iget-object v0, p0, Lo/ヽ;->Ч:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lo/ヽ;->Ϛ:Landroid/widget/LinearLayout;

    if-nez v3, :cond_5

    if-eqz v4, :cond_6

    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lo/ヽ;->Ϛ:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_7

    .line 205
    iget-object v0, p0, Lo/ヽ;->Ϛ:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lo/ヽ;->addView(Landroid/view/View;)V

    .line 207
    :cond_7
    return-void
.end method

.method private ᒃ()V
    .locals 2

    .line 274
    iget-object v1, p0, Lo/ヽ;->ү:Lo/ᓑ;

    .line 275
    if-eqz v1, :cond_0

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ヽ;->ү:Lo/ᓑ;

    .line 277
    invoke-virtual {v1}, Lo/ᓑ;->cancel()V

    .line 279
    :cond_0
    return-void
.end method

.method private ᕪ()Lo/ᓑ;
    .locals 10

    .line 409
    iget-object v0, p0, Lo/ヽ;->κ:Landroid/view/View;

    iget-object v1, p0, Lo/ヽ;->κ:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Lo/ヽ;->κ:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lo/ﺑ;->ˊ(Landroid/view/View;F)V

    .line 411
    iget-object v0, p0, Lo/ヽ;->κ:Landroid/view/View;

    invoke-static {v0}, Lo/ﺑ;->ﹳ(Landroid/view/View;)Lo/ᵘ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ᵘ;->ˏ(F)Lo/ᵘ;

    move-result-object v3

    .line 412
    const-wide/16 v0, 0xc8

    invoke-virtual {v3, v0, v1}, Lo/ᵘ;->ˊ(J)Lo/ᵘ;

    .line 413
    invoke-virtual {v3, p0}, Lo/ᵘ;->ˊ(Lo/ﭔ;)Lo/ᵘ;

    .line 414
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v0}, Lo/ᵘ;->ˊ(Landroid/view/animation/Interpolator;)Lo/ᵘ;

    .line 416
    new-instance v4, Lo/ᓑ;

    invoke-direct {v4}, Lo/ᓑ;-><init>()V

    .line 417
    invoke-virtual {v4, v3}, Lo/ᓑ;->ˏ(Lo/ᵘ;)Lo/ᓑ;

    .line 419
    iget-object v0, p0, Lo/ヽ;->Ἵ:Lo/ᖦ;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lo/ヽ;->Ἵ:Lo/ᖦ;

    invoke-virtual {v0}, Lo/ᖦ;->getChildCount()I

    move-result v5

    .line 421
    if-lez v5, :cond_0

    .line 422
    add-int/lit8 v6, v5, -0x1

    const/4 v7, 0x0

    :goto_0
    if-ltz v6, :cond_0

    .line 423
    iget-object v0, p0, Lo/ヽ;->Ἵ:Lo/ᖦ;

    invoke-virtual {v0, v6}, Lo/ᖦ;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 424
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lo/ﺑ;->ᐝ(Landroid/view/View;F)V

    .line 425
    invoke-static {v8}, Lo/ﺑ;->ﹳ(Landroid/view/View;)Lo/ᵘ;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lo/ᵘ;->ʼ(F)Lo/ᵘ;

    move-result-object v9

    .line 426
    const-wide/16 v0, 0x12c

    invoke-virtual {v9, v0, v1}, Lo/ᵘ;->ˊ(J)Lo/ᵘ;

    .line 427
    invoke-virtual {v4, v9}, Lo/ᓑ;->ˏ(Lo/ᵘ;)Lo/ᓑ;

    .line 422
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 432
    :cond_0
    return-object v4
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 320
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 325
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lo/ヽ;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 105
    invoke-super {p0}, Lo/ᵪ;->onDetachedFromWindow()V

    .line 106
    iget-object v0, p0, Lo/ヽ;->ⅈ:Lo/ᓴ;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lo/ヽ;->ⅈ:Lo/ᓴ;

    invoke-virtual {v0}, Lo/ᓴ;->hideOverflowMenu()Z

    .line 108
    iget-object v0, p0, Lo/ヽ;->ⅈ:Lo/ᓴ;

    invoke-virtual {v0}, Lo/ᓴ;->נּ()Z

    .line 110
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 523
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 524
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 526
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 527
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 528
    invoke-virtual {p0}, Lo/ヽ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v0, p0, Lo/ヽ;->ḹ:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 531
    :cond_0
    invoke-super {p0, p1}, Lo/ᵪ;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 534
    :cond_1
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 13

    .line 464
    invoke-static {p0}, Lo/ᓯ;->ᐩ(Landroid/view/View;)Z

    move-result v6

    .line 465
    if-eqz v6, :cond_0

    sub-int v0, p4, p2

    invoke-virtual {p0}, Lo/ヽ;->getPaddingRight()I

    move-result v1

    sub-int v7, v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo/ヽ;->getPaddingLeft()I

    move-result v7

    .line 466
    :goto_0
    invoke-virtual {p0}, Lo/ヽ;->getPaddingTop()I

    move-result v8

    .line 467
    sub-int v0, p5, p3

    invoke-virtual {p0}, Lo/ヽ;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lo/ヽ;->getPaddingBottom()I

    move-result v1

    sub-int v9, v0, v1

    .line 469
    iget-object v0, p0, Lo/ヽ;->κ:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/ヽ;->κ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 470
    iget-object v0, p0, Lo/ヽ;->κ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v10, v0

    .line 471
    if-eqz v6, :cond_1

    iget v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    :cond_1
    iget v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 472
    :goto_1
    if-eqz v6, :cond_2

    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    :cond_2
    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 473
    :goto_2
    invoke-static {v7, v11, v6}, Lo/ヽ;->ˊ(IIZ)I

    move-result v7

    .line 474
    move-object v0, p0

    iget-object v1, p0, Lo/ヽ;->κ:Landroid/view/View;

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lo/ヽ;->ˊ(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v7, v0

    .line 475
    invoke-static {v7, v12, v6}, Lo/ヽ;->ˊ(IIZ)I

    move-result v7

    .line 477
    iget-boolean v0, p0, Lo/ヽ;->ҷ:Z

    if-eqz v0, :cond_3

    .line 478
    const/4 v0, 0x1

    iput v0, p0, Lo/ヽ;->Һ:I

    .line 479
    invoke-direct {p0}, Lo/ヽ;->ᕪ()Lo/ᓑ;

    move-result-object v0

    iput-object v0, p0, Lo/ヽ;->ү:Lo/ᓑ;

    .line 480
    iget-object v0, p0, Lo/ヽ;->ү:Lo/ᓑ;

    invoke-virtual {v0}, Lo/ᓑ;->start()V

    .line 481
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ヽ;->ҷ:Z

    .line 485
    :cond_3
    iget-object v0, p0, Lo/ヽ;->Ϛ:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/ヽ;->ν:Landroid/view/View;

    if-nez v0, :cond_4

    iget-object v0, p0, Lo/ヽ;->Ϛ:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    .line 486
    move-object v0, p0

    iget-object v1, p0, Lo/ヽ;->Ϛ:Landroid/widget/LinearLayout;

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lo/ヽ;->ˊ(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v7, v0

    .line 489
    :cond_4
    iget-object v0, p0, Lo/ヽ;->ν:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 490
    move-object v0, p0

    iget-object v1, p0, Lo/ヽ;->ν:Landroid/view/View;

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lo/ヽ;->ˊ(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v7, v0

    .line 493
    :cond_5
    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lo/ヽ;->getPaddingLeft()I

    move-result v7

    goto :goto_3

    :cond_6
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lo/ヽ;->getPaddingRight()I

    move-result v1

    sub-int v7, v0, v1

    .line 495
    :goto_3
    iget-object v0, p0, Lo/ヽ;->Ἵ:Lo/ᖦ;

    if-eqz v0, :cond_8

    .line 496
    move-object v0, p0

    iget-object v1, p0, Lo/ヽ;->Ἵ:Lo/ᖦ;

    move v2, v7

    move v3, v8

    move v4, v9

    if-nez v6, :cond_7

    const/4 v5, 0x1

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    :goto_4
    invoke-virtual/range {v0 .. v5}, Lo/ヽ;->ˊ(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v7, v0

    .line 498
    :cond_8
    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    .line 330
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 331
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v3, v0, :cond_0

    .line 332
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be used "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 337
    if-nez v4, :cond_1

    .line 338
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be used "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "with android:layout_height=\"wrap_content\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 344
    move-object/from16 v0, p0

    iget v0, v0, Lo/ヽ;->ﮈ:I

    if-lez v0, :cond_2

    move-object/from16 v0, p0

    iget v6, v0, Lo/ヽ;->ﮈ:I

    goto :goto_0

    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 347
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lo/ヽ;->getPaddingTop()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lo/ヽ;->getPaddingBottom()I

    move-result v1

    add-int v7, v0, v1

    .line 348
    invoke-virtual/range {p0 .. p0}, Lo/ヽ;->getPaddingLeft()I

    move-result v0

    sub-int v0, v5, v0

    invoke-virtual/range {p0 .. p0}, Lo/ヽ;->getPaddingRight()I

    move-result v1

    sub-int v8, v0, v1

    .line 349
    sub-int v9, v6, v7

    .line 350
    const/high16 v0, -0x80000000

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ヽ;->κ:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ヽ;->κ:Landroid/view/View;

    move-object/from16 v1, p0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v8, v10, v2}, Lo/ヽ;->ˊ(Landroid/view/View;III)I

    move-result v8

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ヽ;->κ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v11, v0

    .line 355
    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    sub-int/2addr v8, v0

    .line 358
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ヽ;->Ἵ:Lo/ᖦ;

    if-eqz v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ヽ;->Ἵ:Lo/ᖦ;

    invoke-virtual {v0}, Lo/ᖦ;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_4

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ヽ;->Ἵ:Lo/ᖦ;

    move-object/from16 v1, p0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v8, v10, v2}, Lo/ヽ;->ˊ(Landroid/view/View;III)I

    move-result v8

    .line 363
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ヽ;->Ϛ:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ヽ;->ν:Landroid/view/View;

    if-nez v0, :cond_9

    .line 364
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/ヽ;->ь:Z

    if-eqz v0, :cond_8

    .line 365
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ヽ;->Ϛ:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11, v10}, Landroid/widget/LinearLayout;->measure(II)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ヽ;->Ϛ:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v12

    .line 368
    if-gt v12, v8, :cond_5

    const/4 v13, 0x1

    goto :goto_1

    :cond_5
    const/4 v13, 0x0

    .line 369
    :goto_1
    if-eqz v13, :cond_6

    .line 370
    sub-int/2addr v8, v12

    .line 372
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ヽ;->Ϛ:Landroid/widget/LinearLayout;

    if-eqz v13, :cond_7

    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 373
    goto :goto_3

    .line 374
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ヽ;->Ϛ:Landroid/widget/LinearLayout;

    move-object/from16 v1, p0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v8, v10, v2}, Lo/ヽ;->ˊ(Landroid/view/View;III)I

    move-result v8

    .line 378
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ヽ;->ν:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ヽ;->ν:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 380
    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_a

    const/high16 v12, 0x40000000    # 2.0f

    goto :goto_4

    :cond_a
    const/high16 v12, -0x80000000

    .line 382
    :goto_4
    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v0, :cond_b

    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto :goto_5

    :cond_b
    move v13, v8

    .line 384
    :goto_5
    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_c

    const/high16 v14, 0x40000000    # 2.0f

    goto :goto_6

    :cond_c
    const/high16 v14, -0x80000000

    .line 386
    :goto_6
    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v0, :cond_d

    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v15

    goto :goto_7

    :cond_d
    move v15, v9

    .line 388
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ヽ;->ν:Landroid/view/View;

    invoke-static {v13, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v15, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 392
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lo/ヽ;->ﮈ:I

    if-gtz v0, :cond_11

    .line 393
    const/4 v11, 0x0

    .line 394
    invoke-virtual/range {p0 .. p0}, Lo/ヽ;->getChildCount()I

    move-result v12

    .line 395
    const/4 v13, 0x0

    :goto_8
    if-ge v13, v12, :cond_10

    .line 396
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lo/ヽ;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 397
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v15, v0, v7

    .line 398
    if-le v15, v11, :cond_f

    .line 399
    move v11, v15

    .line 395
    :cond_f
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 402
    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v11}, Lo/ヽ;->setMeasuredDimension(II)V

    .line 403
    goto :goto_9

    .line 404
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lo/ヽ;->setMeasuredDimension(II)V

    .line 406
    :goto_9
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0

    .line 146
    iput p1, p0, Lo/ヽ;->ﮈ:I

    .line 147
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lo/ヽ;->ν:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lo/ヽ;->ν:Landroid/view/View;

    invoke-virtual {p0, v0}, Lo/ヽ;->removeView(Landroid/view/View;)V

    .line 153
    :cond_0
    iput-object p1, p0, Lo/ヽ;->ν:Landroid/view/View;

    .line 154
    iget-object v0, p0, Lo/ヽ;->Ϛ:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lo/ヽ;->Ϛ:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lo/ヽ;->removeView(Landroid/view/View;)V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ヽ;->Ϛ:Landroid/widget/LinearLayout;

    .line 158
    :cond_1
    if-eqz p1, :cond_2

    .line 159
    invoke-virtual {p0, p1}, Lo/ヽ;->addView(Landroid/view/View;)V

    .line 161
    :cond_2
    invoke-virtual {p0}, Lo/ヽ;->requestLayout()V

    .line 162
    return-void
.end method

.method public setSplitToolbar(Z)V
    .locals 5

    .line 114
    iget-boolean v0, p0, Lo/ヽ;->הּ:Z

    if-eq v0, p1, :cond_4

    .line 115
    iget-object v0, p0, Lo/ヽ;->ⅈ:Lo/ᓴ;

    if-eqz v0, :cond_3

    .line 117
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {v3, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 119
    if-nez p1, :cond_1

    .line 120
    iget-object v0, p0, Lo/ヽ;->ⅈ:Lo/ᓴ;

    invoke-virtual {v0, p0}, Lo/ᓴ;->ˎ(Landroid/view/ViewGroup;)Lo/ᵊ;

    move-result-object v0

    check-cast v0, Lo/ᖦ;

    iput-object v0, p0, Lo/ヽ;->Ἵ:Lo/ᖦ;

    .line 121
    iget-object v0, p0, Lo/ヽ;->Ἵ:Lo/ᖦ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ᖦ;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v0, p0, Lo/ヽ;->Ἵ:Lo/ᖦ;

    invoke-virtual {v0}, Lo/ᖦ;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    .line 123
    if-eqz v4, :cond_0

    iget-object v0, p0, Lo/ヽ;->Ἵ:Lo/ᖦ;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lo/ヽ;->Ἵ:Lo/ᖦ;

    invoke-virtual {p0, v0, v3}, Lo/ヽ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lo/ヽ;->ⅈ:Lo/ᓴ;

    invoke-virtual {p0}, Lo/ヽ;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo/ᓴ;->ʾ(IZ)V

    .line 130
    iget-object v0, p0, Lo/ヽ;->ⅈ:Lo/ᓴ;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lo/ᓴ;->ۦ(I)V

    .line 132
    const/4 v0, -0x1

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 133
    iget v0, p0, Lo/ヽ;->ﮈ:I

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 134
    iget-object v0, p0, Lo/ヽ;->ⅈ:Lo/ᓴ;

    invoke-virtual {v0, p0}, Lo/ᓴ;->ˎ(Landroid/view/ViewGroup;)Lo/ᵊ;

    move-result-object v0

    check-cast v0, Lo/ᖦ;

    iput-object v0, p0, Lo/ヽ;->Ἵ:Lo/ᖦ;

    .line 135
    iget-object v0, p0, Lo/ヽ;->Ἵ:Lo/ᖦ;

    iget-object v1, p0, Lo/ヽ;->ʡ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lo/ᖦ;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v0, p0, Lo/ヽ;->Ἵ:Lo/ᖦ;

    invoke-virtual {v0}, Lo/ᖦ;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    .line 137
    if-eqz v4, :cond_2

    iget-object v0, p0, Lo/ヽ;->Ἵ:Lo/ᖦ;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 138
    :cond_2
    iget-object v0, p0, Lo/ヽ;->冖:Landroid/view/ViewGroup;

    iget-object v1, p0, Lo/ヽ;->Ἵ:Lo/ᖦ;

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lo/ᵪ;->setSplitToolbar(Z)V

    .line 143
    :cond_4
    return-void
.end method

.method public bridge synthetic setSplitView(Landroid/view/ViewGroup;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Lo/ᵪ;->setSplitView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Lo/ᵪ;->setSplitWhenNarrow(Z)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lo/ヽ;->ε:Ljava/lang/CharSequence;

    .line 171
    invoke-direct {p0}, Lo/ヽ;->ᐥ()V

    .line 172
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lo/ヽ;->ḹ:Ljava/lang/CharSequence;

    .line 166
    invoke-direct {p0}, Lo/ヽ;->ᐥ()V

    .line 167
    return-void
.end method

.method public setTitleOptional(Z)V
    .locals 1

    .line 537
    iget-boolean v0, p0, Lo/ヽ;->ь:Z

    if-eq p1, v0, :cond_0

    .line 538
    invoke-virtual {p0}, Lo/ヽ;->requestLayout()V

    .line 540
    :cond_0
    iput-boolean p1, p0, Lo/ヽ;->ь:Z

    .line 541
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 518
    const/4 v0, 0x0

    return v0
.end method

.method public ᓒ()V
    .locals 2

    .line 282
    invoke-direct {p0}, Lo/ヽ;->ᒃ()V

    .line 283
    invoke-virtual {p0}, Lo/ヽ;->removeAllViews()V

    .line 284
    iget-object v0, p0, Lo/ヽ;->冖:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lo/ヽ;->冖:Landroid/view/ViewGroup;

    iget-object v1, p0, Lo/ヽ;->Ἵ:Lo/ᖦ;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 287
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ヽ;->ν:Landroid/view/View;

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ヽ;->Ἵ:Lo/ᖦ;

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ヽ;->ҷ:Z

    .line 290
    return-void
.end method

.method public ᵢ(Landroid/view/View;)V
    .locals 0

    .line 502
    return-void
.end method

.method public ⁱ(Landroid/view/View;)V
    .locals 2

    .line 506
    iget v0, p0, Lo/ヽ;->Һ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 507
    invoke-virtual {p0}, Lo/ヽ;->ᓒ()V

    .line 509
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lo/ヽ;->Һ:I

    .line 510
    return-void
.end method

.method public ﹶ(Landroid/view/View;)V
    .locals 0

    .line 514
    return-void
.end method
