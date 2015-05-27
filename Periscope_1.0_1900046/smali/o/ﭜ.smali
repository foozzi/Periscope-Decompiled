.class public Lo/ﭜ;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ﭜ$ˋ;,
        Lo/ﭜ$if;,
        Lo/ﭜ$ˊ;
    }
.end annotation


# instance fields
.field private final ᘢ:Lo/ﭜ$if;

.field private final ᚁ:Lo/ﭜ$ˊ;

.field private final ᚆ:Lo/ί;

.field private final ᴒ:Landroid/graphics/drawable/Drawable;

.field private final ᴫ:Landroid/widget/FrameLayout;

.field private final Ḻ:Landroid/widget/ImageView;

.field private final Ṫ:Landroid/widget/FrameLayout;

.field private final Ỳ:Landroid/widget/ImageView;

.field private final Ỵ:I

.field ἶ:Lo/ˤ;

.field private final ἷ:Landroid/database/DataSetObserver;

.field private final ῗ:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private ℓ:Lo/ῑ;

.field private Ⅴ:Landroid/widget/PopupWindow$OnDismissListener;

.field private ゞ:Z

.field private イ:I

.field private 忄:Z

.field private אּ:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/ﭜ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lo/ﭜ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 203
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 213
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    new-instance v0, Lo/ﭡ;

    invoke-direct {v0, p0}, Lo/ﭡ;-><init>(Lo/ﭜ;)V

    iput-object v0, p0, Lo/ﭜ;->ἷ:Landroid/database/DataSetObserver;

    .line 140
    new-instance v0, Lo/ﭤ;

    invoke-direct {v0, p0}, Lo/ﭤ;-><init>(Lo/ﭜ;)V

    iput-object v0, p0, Lo/ﭜ;->ῗ:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 174
    const/4 v0, 0x4

    iput v0, p0, Lo/ﭜ;->イ:I

    .line 215
    sget-object v0, Lo/ڊ$ʽ;->ActivityChooserView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 218
    sget v0, Lo/ڊ$ʽ;->ActivityChooserView_initialActivityCount:I

    const/4 v1, 0x4

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lo/ﭜ;->イ:I

    .line 222
    sget v0, Lo/ڊ$ʽ;->ActivityChooserView_expandActivityOverflowButtonDrawable:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 225
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 227
    invoke-virtual {p0}, Lo/ﭜ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 228
    sget v0, Lo/ڊ$ᐝ;->abc_activity_chooser_view:I

    const/4 v1, 0x1

    invoke-virtual {v4, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 230
    new-instance v0, Lo/ﭜ$ˊ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/ﭜ$ˊ;-><init>(Lo/ﭜ;Lo/ﭡ;)V

    iput-object v0, p0, Lo/ﭜ;->ᚁ:Lo/ﭜ$ˊ;

    .line 232
    sget v0, Lo/ڊ$ˏ;->activity_chooser_view_content:I

    invoke-virtual {p0, v0}, Lo/ﭜ;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ί;

    iput-object v0, p0, Lo/ﭜ;->ᚆ:Lo/ί;

    .line 233
    iget-object v0, p0, Lo/ﭜ;->ᚆ:Lo/ί;

    invoke-virtual {v0}, Lo/ί;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lo/ﭜ;->ᴒ:Landroid/graphics/drawable/Drawable;

    .line 235
    sget v0, Lo/ڊ$ˏ;->default_activity_button:I

    invoke-virtual {p0, v0}, Lo/ﭜ;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lo/ﭜ;->Ṫ:Landroid/widget/FrameLayout;

    .line 236
    iget-object v0, p0, Lo/ﭜ;->Ṫ:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lo/ﭜ;->ᚁ:Lo/ﭜ$ˊ;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v0, p0, Lo/ﭜ;->Ṫ:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lo/ﭜ;->ᚁ:Lo/ﭜ$ˊ;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 238
    iget-object v0, p0, Lo/ﭜ;->Ṫ:Landroid/widget/FrameLayout;

    sget v1, Lo/ڊ$ˏ;->image:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/ﭜ;->Ỳ:Landroid/widget/ImageView;

    .line 240
    sget v0, Lo/ڊ$ˏ;->expand_activities_button:I

    invoke-virtual {p0, v0}, Lo/ﭜ;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    move-object v5, v0

    .line 241
    iget-object v0, p0, Lo/ﭜ;->ᚁ:Lo/ﭜ$ˊ;

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    new-instance v0, Lo/ﯧ;

    invoke-direct {v0, p0, v5}, Lo/ﯧ;-><init>(Lo/ﭜ;Landroid/view/View;)V

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 260
    iput-object v5, p0, Lo/ﭜ;->ᴫ:Landroid/widget/FrameLayout;

    .line 261
    sget v0, Lo/ڊ$ˏ;->image:I

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/ﭜ;->Ḻ:Landroid/widget/ImageView;

    .line 263
    iget-object v0, p0, Lo/ﭜ;->Ḻ:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 265
    new-instance v0, Lo/ﭜ$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/ﭜ$if;-><init>(Lo/ﭜ;Lo/ﭡ;)V

    iput-object v0, p0, Lo/ﭜ;->ᘢ:Lo/ﭜ$if;

    .line 266
    iget-object v0, p0, Lo/ﭜ;->ᘢ:Lo/ﭜ$if;

    new-instance v1, Lo/ﯿ;

    invoke-direct {v1, p0}, Lo/ﯿ;-><init>(Lo/ﭜ;)V

    invoke-virtual {v0, v1}, Lo/ﭜ$if;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 274
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 275
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    sget v1, Lo/ڊ$ˋ;->abc_config_prefDialogWidth:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lo/ﭜ;->Ỵ:I

    .line 277
    return-void
.end method

.method static synthetic ʻ(Lo/ﭜ;)Landroid/widget/FrameLayout;
    .locals 1

    .line 68
    iget-object v0, p0, Lo/ﭜ;->ᴫ:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic ʼ(Lo/ﭜ;)I
    .locals 1

    .line 68
    iget v0, p0, Lo/ﭜ;->イ:I

    return v0
.end method

.method static synthetic ʽ(Lo/ﭜ;)Landroid/widget/PopupWindow$OnDismissListener;
    .locals 1

    .line 68
    iget-object v0, p0, Lo/ﭜ;->Ⅴ:Landroid/widget/PopupWindow$OnDismissListener;

    return-object v0
.end method

.method static synthetic ˊ(Lo/ﭜ;)Lo/ﭜ$if;
    .locals 1

    .line 68
    iget-object v0, p0, Lo/ﭜ;->ᘢ:Lo/ﭜ$if;

    return-object v0
.end method

.method static synthetic ˊ(Lo/ﭜ;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lo/ﭜ;->ᵀ(I)V

    return-void
.end method

.method static synthetic ˊ(Lo/ﭜ;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lo/ﭜ;->ゞ:Z

    return p1
.end method

.method static synthetic ˋ(Lo/ﭜ;)Lo/ῑ;
    .locals 1

    .line 68
    invoke-direct {p0}, Lo/ﭜ;->ง()Lo/ῑ;

    move-result-object v0

    return-object v0
.end method

.method static synthetic ˎ(Lo/ﭜ;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lo/ﭜ;->ว()V

    return-void
.end method

.method static synthetic ˏ(Lo/ﭜ;)Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lo/ﭜ;->ゞ:Z

    return v0
.end method

.method static synthetic ͺ(Lo/ﭜ;)Landroid/database/DataSetObserver;
    .locals 1

    .line 68
    iget-object v0, p0, Lo/ﭜ;->ἷ:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method private ง()Lo/ῑ;
    .locals 2

    .line 505
    iget-object v0, p0, Lo/ﭜ;->ℓ:Lo/ῑ;

    if-nez v0, :cond_0

    .line 506
    new-instance v0, Lo/ῑ;

    invoke-virtual {p0}, Lo/ﭜ;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ῑ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/ﭜ;->ℓ:Lo/ῑ;

    .line 507
    iget-object v0, p0, Lo/ﭜ;->ℓ:Lo/ῑ;

    iget-object v1, p0, Lo/ﭜ;->ᘢ:Lo/ﭜ$if;

    invoke-virtual {v0, v1}, Lo/ῑ;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 508
    iget-object v0, p0, Lo/ﭜ;->ℓ:Lo/ῑ;

    invoke-virtual {v0, p0}, Lo/ῑ;->setAnchorView(Landroid/view/View;)V

    .line 509
    iget-object v0, p0, Lo/ﭜ;->ℓ:Lo/ῑ;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ῑ;->setModal(Z)V

    .line 510
    iget-object v0, p0, Lo/ﭜ;->ℓ:Lo/ῑ;

    iget-object v1, p0, Lo/ﭜ;->ᚁ:Lo/ﭜ$ˊ;

    invoke-virtual {v0, v1}, Lo/ῑ;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 511
    iget-object v0, p0, Lo/ﭜ;->ℓ:Lo/ῑ;

    iget-object v1, p0, Lo/ﭜ;->ᚁ:Lo/ﭜ$ˊ;

    invoke-virtual {v0, v1}, Lo/ῑ;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 513
    :cond_0
    iget-object v0, p0, Lo/ﭜ;->ℓ:Lo/ῑ;

    return-object v0
.end method

.method private ว()V
    .locals 10

    .line 521
    iget-object v0, p0, Lo/ﭜ;->ᘢ:Lo/ﭜ$if;

    invoke-virtual {v0}, Lo/ﭜ$if;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 522
    iget-object v0, p0, Lo/ﭜ;->ᴫ:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_0

    .line 524
    :cond_0
    iget-object v0, p0, Lo/ﭜ;->ᴫ:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 527
    :goto_0
    iget-object v0, p0, Lo/ﭜ;->ᘢ:Lo/ﭜ$if;

    invoke-virtual {v0}, Lo/ﭜ$if;->ȋ()I

    move-result v4

    .line 528
    iget-object v0, p0, Lo/ﭜ;->ᘢ:Lo/ﭜ$if;

    invoke-virtual {v0}, Lo/ﭜ$if;->getHistorySize()I

    move-result v5

    .line 529
    const/4 v0, 0x1

    if-eq v4, v0, :cond_1

    const/4 v0, 0x1

    if-le v4, v0, :cond_3

    if-lez v5, :cond_3

    .line 530
    :cond_1
    iget-object v0, p0, Lo/ﭜ;->Ṫ:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lo/ﭜ;->ᘢ:Lo/ﭜ$if;

    invoke-virtual {v0}, Lo/ﭜ$if;->ɨ()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 532
    invoke-virtual {p0}, Lo/ﭜ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 533
    iget-object v0, p0, Lo/ﭜ;->Ỳ:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 534
    iget v0, p0, Lo/ﭜ;->אּ:I

    if-eqz v0, :cond_2

    .line 535
    invoke-virtual {v6, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 536
    invoke-virtual {p0}, Lo/ﭜ;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lo/ﭜ;->אּ:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 538
    iget-object v0, p0, Lo/ﭜ;->Ṫ:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 540
    :cond_2
    goto :goto_1

    .line 541
    :cond_3
    iget-object v0, p0, Lo/ﭜ;->Ṫ:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 544
    :goto_1
    iget-object v0, p0, Lo/ﭜ;->Ṫ:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 545
    iget-object v0, p0, Lo/ﭜ;->ᚆ:Lo/ί;

    iget-object v1, p0, Lo/ﭜ;->ᴒ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lo/ί;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 547
    :cond_4
    iget-object v0, p0, Lo/ﭜ;->ᚆ:Lo/ί;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ί;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 549
    :goto_2
    return-void
.end method

.method static synthetic ᐝ(Lo/ﭜ;)Landroid/widget/FrameLayout;
    .locals 1

    .line 68
    iget-object v0, p0, Lo/ﭜ;->Ṫ:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private ᵀ(I)V
    .locals 8

    .line 348
    iget-object v0, p0, Lo/ﭜ;->ᘢ:Lo/ﭜ$if;

    invoke-virtual {v0}, Lo/ﭜ$if;->ᐦ()Lo/ﭕ;

    move-result-object v0

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No data model. Did you call #setDataModel?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_0
    invoke-virtual {p0}, Lo/ﭜ;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lo/ﭜ;->ῗ:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 354
    iget-object v0, p0, Lo/ﭜ;->Ṫ:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 357
    :goto_0
    iget-object v0, p0, Lo/ﭜ;->ᘢ:Lo/ﭜ$if;

    invoke-virtual {v0}, Lo/ﭜ$if;->ȋ()I

    move-result v4

    .line 358
    if-eqz v3, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 359
    :goto_1
    const v0, 0x7fffffff

    if-eq p1, v0, :cond_3

    add-int v0, p1, v5

    if-le v4, v0, :cond_3

    .line 361
    iget-object v0, p0, Lo/ﭜ;->ᘢ:Lo/ﭜ$if;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ﭜ$if;->ՙ(Z)V

    .line 362
    iget-object v0, p0, Lo/ﭜ;->ᘢ:Lo/ﭜ$if;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lo/ﭜ$if;->ᵋ(I)V

    goto :goto_2

    .line 364
    :cond_3
    iget-object v0, p0, Lo/ﭜ;->ᘢ:Lo/ﭜ$if;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ﭜ$if;->ՙ(Z)V

    .line 365
    iget-object v0, p0, Lo/ﭜ;->ᘢ:Lo/ﭜ$if;

    invoke-virtual {v0, p1}, Lo/ﭜ$if;->ᵋ(I)V

    .line 368
    :goto_2
    invoke-direct {p0}, Lo/ﭜ;->ง()Lo/ῑ;

    move-result-object v6

    .line 369
    invoke-virtual {v6}, Lo/ῑ;->isShowing()Z

    move-result v0

    if-nez v0, :cond_7

    .line 370
    iget-boolean v0, p0, Lo/ﭜ;->ゞ:Z

    if-nez v0, :cond_4

    if-nez v3, :cond_5

    .line 371
    :cond_4
    iget-object v0, p0, Lo/ﭜ;->ᘢ:Lo/ﭜ$if;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lo/ﭜ$if;->ˋ(ZZ)V

    goto :goto_3

    .line 373
    :cond_5
    iget-object v0, p0, Lo/ﭜ;->ᘢ:Lo/ﭜ$if;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo/ﭜ$if;->ˋ(ZZ)V

    .line 375
    :goto_3
    iget-object v0, p0, Lo/ﭜ;->ᘢ:Lo/ﭜ$if;

    invoke-virtual {v0}, Lo/ﭜ$if;->ן()I

    move-result v0

    iget v1, p0, Lo/ﭜ;->Ỵ:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 376
    invoke-virtual {v6, v7}, Lo/ῑ;->setContentWidth(I)V

    .line 377
    invoke-virtual {v6}, Lo/ῑ;->show()V

    .line 378
    iget-object v0, p0, Lo/ﭜ;->ἶ:Lo/ˤ;

    if-eqz v0, :cond_6

    .line 379
    iget-object v0, p0, Lo/ﭜ;->ἶ:Lo/ˤ;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ˤ;->ˎ(Z)V

    .line 381
    :cond_6
    invoke-virtual {v6}, Lo/ῑ;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lo/ﭜ;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lo/ڊ$ʻ;->abc_activitychooserview_choose_application:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 384
    :cond_7
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 413
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 414
    iget-object v0, p0, Lo/ﭜ;->ᘢ:Lo/ﭜ$if;

    invoke-virtual {v0}, Lo/ﭜ$if;->ᐦ()Lo/ﭕ;

    move-result-object v1

    .line 415
    if-eqz v1, :cond_0

    .line 416
    iget-object v0, p0, Lo/ﭜ;->ἷ:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v0}, Lo/ﭕ;->registerObserver(Ljava/lang/Object;)V

    .line 418
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ﭜ;->忄:Z

    .line 419
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 423
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 424
    iget-object v0, p0, Lo/ﭜ;->ᘢ:Lo/ﭜ$if;

    invoke-virtual {v0}, Lo/ﭜ$if;->ᐦ()Lo/ﭕ;

    move-result-object v1

    .line 425
    if-eqz v1, :cond_0

    .line 426
    iget-object v0, p0, Lo/ﭜ;->ἷ:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v0}, Lo/ﭕ;->unregisterObserver(Ljava/lang/Object;)V

    .line 428
    :cond_0
    invoke-virtual {p0}, Lo/ﭜ;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 429
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lo/ﭜ;->ῗ:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 432
    :cond_1
    invoke-virtual {p0}, Lo/ﭜ;->ܙ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    invoke-virtual {p0}, Lo/ﭜ;->ڊ()Z

    .line 435
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ﭜ;->忄:Z

    .line 436
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 454
    iget-object v0, p0, Lo/ﭜ;->ᚆ:Lo/ί;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Lo/ί;->layout(IIII)V

    .line 455
    invoke-virtual {p0}, Lo/ﭜ;->ܙ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    invoke-virtual {p0}, Lo/ﭜ;->ڊ()Z

    .line 458
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 440
    iget-object v2, p0, Lo/ﭜ;->ᚆ:Lo/ί;

    .line 444
    iget-object v0, p0, Lo/ﭜ;->Ṫ:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 448
    :cond_0
    invoke-virtual {p0, v2, p1, p2}, Lo/ﭜ;->measureChild(Landroid/view/View;II)V

    .line 449
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lo/ﭜ;->setMeasuredDimension(II)V

    .line 450
    return-void
.end method

.method public setActivityChooserModel(Lo/ﭕ;)V
    .locals 1

    .line 283
    iget-object v0, p0, Lo/ﭜ;->ᘢ:Lo/ﭜ$if;

    invoke-virtual {v0, p1}, Lo/ﭜ$if;->ˎ(Lo/ﭕ;)V

    .line 284
    invoke-virtual {p0}, Lo/ﭜ;->ܙ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lo/ﭜ;->ڊ()Z

    .line 286
    invoke-virtual {p0}, Lo/ﭜ;->ذ()Z

    .line 288
    :cond_0
    return-void
.end method

.method public setDefaultActionButtonContentDescription(I)V
    .locals 0

    .line 496
    iput p1, p0, Lo/ﭜ;->אּ:I

    .line 497
    return-void
.end method

.method public setExpandActivityOverflowButtonContentDescription(I)V
    .locals 2

    .line 316
    invoke-virtual {p0}, Lo/ﭜ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 317
    iget-object v0, p0, Lo/ﭜ;->Ḻ:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 318
    return-void
.end method

.method public setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 302
    iget-object v0, p0, Lo/ﭜ;->Ḻ:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    return-void
.end method

.method public setInitialActivityCount(I)V
    .locals 0

    .line 482
    iput p1, p0, Lo/ﭜ;->イ:I

    .line 483
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lo/ﭜ;->Ⅴ:Landroid/widget/PopupWindow$OnDismissListener;

    .line 471
    return-void
.end method

.method public setProvider(Lo/ˤ;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lo/ﭜ;->ἶ:Lo/ˤ;

    .line 326
    return-void
.end method

.method public ذ()Z
    .locals 1

    .line 334
    invoke-virtual {p0}, Lo/ﭜ;->ܙ()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/ﭜ;->忄:Z

    if-nez v0, :cond_1

    .line 335
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 337
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ﭜ;->ゞ:Z

    .line 338
    iget v0, p0, Lo/ﭜ;->イ:I

    invoke-direct {p0, v0}, Lo/ﭜ;->ᵀ(I)V

    .line 339
    const/4 v0, 0x1

    return v0
.end method

.method public ڊ()Z
    .locals 2

    .line 392
    invoke-virtual {p0}, Lo/ﭜ;->ܙ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    invoke-direct {p0}, Lo/ﭜ;->ง()Lo/ῑ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ῑ;->dismiss()V

    .line 394
    invoke-virtual {p0}, Lo/ﭜ;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 395
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lo/ﭜ;->ῗ:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 399
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public ܙ()Z
    .locals 1

    .line 408
    invoke-direct {p0}, Lo/ﭜ;->ง()Lo/ῑ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ῑ;->isShowing()Z

    move-result v0

    return v0
.end method
