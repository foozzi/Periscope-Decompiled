.class public Lo/一;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/一$if;,
        Lo/一$ˊ;
    }
.end annotation


# static fields
.field static final ᐹ:[I


# instance fields
.field private ӌ:I

.field private ԁ:I

.field private ԅ:Lo/ﺫ;

.field private ւ:Lo/ー;

.field private ח:Lo/ー;

.field private צ:Lo/ﻴ;

.field private ب:Landroid/graphics/drawable/Drawable;

.field private م:Z

.field private ٵ:Z

.field private ڋ:Z

.field private ڒ:Z

.field private ڕ:Z

.field private ڹ:I

.field private ۂ:I

.field private final ۊ:Landroid/graphics/Rect;

.field private final ܚ:Landroid/graphics/Rect;

.field private final ܪ:Landroid/graphics/Rect;

.field private final ܬ:Landroid/graphics/Rect;

.field private final र:Landroid/graphics/Rect;

.field private final ঌ:Landroid/graphics/Rect;

.field private গ:Lo/一$if;

.field private final ঢ:I

.field private ব:Lo/ⅼ;

.field private শ:Lo/ᵘ;

.field private ঽ:Lo/ᵘ;

.field private final ก:Lo/ﭔ;

.field private final კ:Lo/ﭔ;

.field private final ᐯ:Ljava/lang/Runnable;

.field private final ᐴ:Ljava/lang/Runnable;

.field private final ᒌ:Lo/וֹ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 149
    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Lo/ڊ$if;->actionBarSize:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const v1, 0x1010059

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Lo/一;->ᐹ:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/一;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 161
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lo/一;->ԁ:I

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/一;->ۊ:Landroid/graphics/Rect;

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/一;->ܚ:Landroid/graphics/Rect;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/一;->ܪ:Landroid/graphics/Rect;

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/一;->ܬ:Landroid/graphics/Rect;

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/一;->र:Landroid/graphics/Rect;

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/一;->ঌ:Landroid/graphics/Rect;

    .line 86
    const/16 v0, 0x258

    iput v0, p0, Lo/一;->ঢ:I

    .line 93
    new-instance v0, Lo/גּ;

    invoke-direct {v0, p0}, Lo/גּ;-><init>(Lo/一;)V

    iput-object v0, p0, Lo/一;->ก:Lo/ﭔ;

    .line 108
    new-instance v0, Lo/זּ;

    invoke-direct {v0, p0}, Lo/זּ;-><init>(Lo/一;)V

    iput-object v0, p0, Lo/一;->კ:Lo/ﭔ;

    .line 123
    new-instance v0, Lo/נּ;

    invoke-direct {v0, p0}, Lo/נּ;-><init>(Lo/一;)V

    iput-object v0, p0, Lo/一;->ᐯ:Ljava/lang/Runnable;

    .line 135
    new-instance v0, Lo/רּ;

    invoke-direct {v0, p0}, Lo/רּ;-><init>(Lo/一;)V

    iput-object v0, p0, Lo/一;->ᐴ:Ljava/lang/Runnable;

    .line 162
    invoke-direct {p0, p1}, Lo/一;->ˊ(Landroid/content/Context;)V

    .line 164
    new-instance v0, Lo/וֹ;

    invoke-direct {v0, p0}, Lo/וֹ;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lo/一;->ᒌ:Lo/וֹ;

    .line 165
    return-void
.end method

.method private ʿ(FF)Z
    .locals 10

    .line 667
    iget-object v0, p0, Lo/一;->ব:Lo/ⅼ;

    float-to-int v4, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    invoke-virtual/range {v0 .. v8}, Lo/ⅼ;->fling(IIIIIIII)V

    .line 668
    iget-object v0, p0, Lo/一;->ব:Lo/ⅼ;

    invoke-virtual {v0}, Lo/ⅼ;->getFinalY()I

    move-result v9

    .line 669
    iget-object v0, p0, Lo/一;->ח:Lo/ー;

    invoke-virtual {v0}, Lo/ー;->getHeight()I

    move-result v0

    if-le v9, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic ˊ(Lo/一;Lo/ᵘ;)Lo/ᵘ;
    .locals 0

    .line 51
    iput-object p1, p0, Lo/一;->শ:Lo/ᵘ;

    return-object p1
.end method

.method private ˊ(Landroid/content/Context;)V
    .locals 3

    .line 168
    invoke-virtual {p0}, Lo/一;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lo/一;->ᐹ:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 169
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lo/一;->ӌ:I

    .line 170
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lo/一;->ب:Landroid/graphics/drawable/Drawable;

    .line 171
    iget-object v0, p0, Lo/一;->ب:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lo/一;->setWillNotDraw(Z)V

    .line 172
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lo/一;->م:Z

    .line 177
    invoke-static {p1}, Lo/ⅼ;->ˎ(Landroid/content/Context;)Lo/ⅼ;

    move-result-object v0

    iput-object v0, p0, Lo/一;->ব:Lo/ⅼ;

    .line 178
    return-void
.end method

.method static synthetic ˊ(Lo/一;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lo/一;->ᵏ()V

    return-void
.end method

.method private ˊ(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .locals 4

    .line 284
    const/4 v2, 0x0

    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/一$ˊ;

    move-object v3, v0

    .line 286
    if-eqz p3, :cond_0

    iget v0, v3, Lo/一$ˊ;->leftMargin:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-eq v0, v1, :cond_0

    .line 287
    const/4 v2, 0x1

    .line 288
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iput v0, v3, Lo/一$ˊ;->leftMargin:I

    .line 290
    :cond_0
    if-eqz p4, :cond_1

    iget v0, v3, Lo/一$ˊ;->topMargin:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-eq v0, v1, :cond_1

    .line 291
    const/4 v2, 0x1

    .line 292
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iput v0, v3, Lo/一$ˊ;->topMargin:I

    .line 294
    :cond_1
    if-eqz p6, :cond_2

    iget v0, v3, Lo/一$ˊ;->rightMargin:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-eq v0, v1, :cond_2

    .line 295
    const/4 v2, 0x1

    .line 296
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iput v0, v3, Lo/一$ˊ;->rightMargin:I

    .line 298
    :cond_2
    if-eqz p5, :cond_3

    iget v0, v3, Lo/一$ˊ;->bottomMargin:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v1, :cond_3

    .line 299
    const/4 v2, 0x1

    .line 300
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iput v0, v3, Lo/一$ˊ;->bottomMargin:I

    .line 302
    :cond_3
    return v2
.end method

.method static synthetic ˊ(Lo/一;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lo/一;->ڕ:Z

    return p1
.end method

.method static synthetic ˋ(Lo/一;Lo/ᵘ;)Lo/ᵘ;
    .locals 0

    .line 51
    iput-object p1, p0, Lo/一;->ঽ:Lo/ᵘ;

    return-object p1
.end method

.method static synthetic ˋ(Lo/一;)Lo/ﭔ;
    .locals 1

    .line 51
    iget-object v0, p0, Lo/一;->ก:Lo/ﭔ;

    return-object v0
.end method

.method static synthetic ˎ(Lo/一;)Lo/ー;
    .locals 1

    .line 51
    iget-object v0, p0, Lo/一;->ח:Lo/ー;

    return-object v0
.end method

.method static synthetic ˏ(Lo/一;)Lo/ー;
    .locals 1

    .line 51
    iget-object v0, p0, Lo/一;->ւ:Lo/ー;

    return-object v0
.end method

.method static synthetic ᐝ(Lo/一;)Lo/ﭔ;
    .locals 1

    .line 51
    iget-object v0, p0, Lo/一;->კ:Lo/ﭔ;

    return-object v0
.end method

.method private ᐣ(Landroid/view/View;)Lo/ﻴ;
    .locals 3

    .line 594
    instance-of v0, p1, Lo/ﻴ;

    if-eqz v0, :cond_0

    .line 595
    move-object v0, p1

    check-cast v0, Lo/ﻴ;

    return-object v0

    .line 596
    :cond_0
    instance-of v0, p1, Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 597
    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->Γ()Lo/ﻴ;

    move-result-object v0

    return-object v0

    .line 599
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ᵏ()V
    .locals 1

    .line 636
    iget-object v0, p0, Lo/一;->ᐯ:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lo/一;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 637
    iget-object v0, p0, Lo/一;->ᐴ:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lo/一;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 638
    iget-object v0, p0, Lo/一;->শ:Lo/ᵘ;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lo/一;->শ:Lo/ᵘ;

    invoke-virtual {v0}, Lo/ᵘ;->cancel()V

    .line 641
    :cond_0
    iget-object v0, p0, Lo/一;->ঽ:Lo/ᵘ;

    if-eqz v0, :cond_1

    .line 642
    iget-object v0, p0, Lo/一;->ঽ:Lo/ᵘ;

    invoke-virtual {v0}, Lo/ᵘ;->cancel()V

    .line 644
    :cond_1
    return-void
.end method

.method private ⅼ()V
    .locals 3

    .line 647
    invoke-direct {p0}, Lo/一;->ᵏ()V

    .line 648
    iget-object v0, p0, Lo/一;->ᐯ:Ljava/lang/Runnable;

    const-wide/16 v1, 0x258

    invoke-virtual {p0, v0, v1, v2}, Lo/一;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 649
    return-void
.end method

.method private ﭘ()V
    .locals 3

    .line 652
    invoke-direct {p0}, Lo/一;->ᵏ()V

    .line 653
    iget-object v0, p0, Lo/一;->ᐴ:Ljava/lang/Runnable;

    const-wide/16 v1, 0x258

    invoke-virtual {p0, v0, v1, v2}, Lo/一;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 654
    return-void
.end method

.method private ﺒ()V
    .locals 1

    .line 657
    invoke-direct {p0}, Lo/一;->ᵏ()V

    .line 658
    iget-object v0, p0, Lo/一;->ᐯ:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 659
    return-void
.end method

.method private ﺛ()V
    .locals 1

    .line 662
    invoke-direct {p0}, Lo/一;->ᵏ()V

    .line 663
    iget-object v0, p0, Lo/一;->ᐴ:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 664
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 354
    instance-of v0, p1, Lo/一$ˊ;

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 500
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 501
    iget-object v0, p0, Lo/一;->ب:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/一;->م:Z

    if-nez v0, :cond_1

    .line 502
    iget-object v0, p0, Lo/一;->ח:Lo/ー;

    invoke-virtual {v0}, Lo/ー;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/一;->ח:Lo/ー;

    invoke-virtual {v0}, Lo/ー;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lo/一;->ח:Lo/ー;

    invoke-static {v1}, Lo/ﺑ;->ـ(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v4, v0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 505
    :goto_0
    iget-object v0, p0, Lo/一;->ب:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lo/一;->getWidth()I

    move-result v1

    iget-object v2, p0, Lo/一;->ب:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v2, v4

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 507
    iget-object v0, p0, Lo/一;->ب:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 509
    :cond_1
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 11

    .line 307
    invoke-virtual {p0}, Lo/一;->ᴊ()V

    .line 309
    invoke-static {p0}, Lo/ﺑ;->ʹ(Landroid/view/View;)I

    move-result v7

    .line 310
    and-int/lit16 v0, v7, 0x100

    if-eqz v0, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 311
    :goto_0
    move-object v9, p1

    .line 314
    move-object v0, p0

    iget-object v1, p0, Lo/一;->ח:Lo/ー;

    move-object v2, v9

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lo/一;->ˊ(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v10

    .line 315
    iget-object v0, p0, Lo/一;->ւ:Lo/ー;

    if-eqz v0, :cond_1

    .line 316
    move-object v0, p0

    iget-object v1, p0, Lo/一;->ւ:Lo/ー;

    move-object v2, v9

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lo/一;->ˊ(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v0

    or-int/2addr v10, v0

    .line 319
    :cond_1
    iget-object v0, p0, Lo/一;->ܬ:Landroid/graphics/Rect;

    invoke-virtual {v0, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 320
    iget-object v0, p0, Lo/一;->ܬ:Landroid/graphics/Rect;

    iget-object v1, p0, Lo/一;->ۊ:Landroid/graphics/Rect;

    invoke-static {p0, v0, v1}, Lo/ᓯ;->ˊ(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 321
    iget-object v0, p0, Lo/一;->ܚ:Landroid/graphics/Rect;

    iget-object v1, p0, Lo/一;->ۊ:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 322
    const/4 v10, 0x1

    .line 323
    iget-object v0, p0, Lo/一;->ܚ:Landroid/graphics/Rect;

    iget-object v1, p0, Lo/一;->ۊ:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 326
    :cond_2
    if-eqz v10, :cond_3

    .line 327
    invoke-virtual {p0}, Lo/一;->requestLayout()V

    .line 334
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lo/一;->ᙆ()Lo/一$ˊ;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 51
    invoke-virtual {p0, p1}, Lo/一;->ˊ(Landroid/util/AttributeSet;)Lo/一$ˊ;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 349
    new-instance v0, Lo/一$ˊ;

    invoke-direct {v0, p1}, Lo/一$ˊ;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 581
    iget-object v0, p0, Lo/一;->ᒌ:Lo/וֹ;

    invoke-virtual {v0}, Lo/וֹ;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 242
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 243
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 245
    :cond_0
    invoke-virtual {p0}, Lo/一;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/一;->ˊ(Landroid/content/Context;)V

    .line 246
    invoke-static {p0}, Lo/ﺑ;->ՙ(Landroid/view/View;)V

    .line 247
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 182
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 183
    invoke-direct {p0}, Lo/一;->ᵏ()V

    .line 184
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14

    .line 469
    invoke-virtual {p0}, Lo/一;->getChildCount()I

    move-result v2

    .line 471
    invoke-virtual {p0}, Lo/一;->getPaddingLeft()I

    move-result v3

    .line 472
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lo/一;->getPaddingRight()I

    move-result v1

    sub-int v4, v0, v1

    .line 474
    invoke-virtual {p0}, Lo/一;->getPaddingTop()I

    move-result v5

    .line 475
    sub-int v0, p5, p3

    invoke-virtual {p0}, Lo/一;->getPaddingBottom()I

    move-result v1

    sub-int v6, v0, v1

    .line 477
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v2, :cond_2

    .line 478
    invoke-virtual {p0, v7}, Lo/一;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 479
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 480
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/一$ˊ;

    move-object v9, v0

    .line 482
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 483
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 485
    iget v0, v9, Lo/一$ˊ;->leftMargin:I

    add-int v12, v3, v0

    .line 487
    iget-object v0, p0, Lo/一;->ւ:Lo/ー;

    if-ne v8, v0, :cond_0

    .line 488
    sub-int v0, v6, v11

    iget v1, v9, Lo/一$ˊ;->bottomMargin:I

    sub-int v13, v0, v1

    goto :goto_1

    .line 490
    :cond_0
    iget v0, v9, Lo/一$ˊ;->topMargin:I

    add-int v13, v5, v0

    .line 493
    :goto_1
    add-int v0, v12, v10

    add-int v1, v13, v11

    invoke-virtual {v8, v12, v13, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 477
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 496
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    .line 359
    invoke-virtual/range {p0 .. p0}, Lo/一;->ᴊ()V

    .line 361
    const/4 v7, 0x0

    .line 362
    const/4 v8, 0x0

    .line 363
    const/4 v9, 0x0

    .line 365
    const/4 v10, 0x0

    .line 366
    const/4 v11, 0x0

    .line 368
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/一;->ח:Lo/ー;

    move/from16 v2, p1

    move/from16 v4, p2

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lo/一;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/一;->ח:Lo/ー;

    invoke-virtual {v0}, Lo/ー;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/一$ˊ;

    move-object v12, v0

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/一;->ח:Lo/ー;

    invoke-virtual {v0}, Lo/ー;->getMeasuredWidth()I

    move-result v0

    iget v1, v12, Lo/一$ˊ;->leftMargin:I

    add-int/2addr v0, v1

    iget v1, v12, Lo/一$ˊ;->rightMargin:I

    add-int/2addr v0, v1

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/一;->ח:Lo/ー;

    invoke-virtual {v0}, Lo/ー;->getMeasuredHeight()I

    move-result v0

    iget v1, v12, Lo/一$ˊ;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v12, Lo/一$ˊ;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/一;->ח:Lo/ー;

    invoke-static {v0}, Lo/ﺑ;->ˍ(Landroid/view/View;)I

    move-result v0

    invoke-static {v9, v0}, Lo/ᓯ;->combineMeasuredStates(II)I

    move-result v9

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/一;->ւ:Lo/ー;

    if-eqz v0, :cond_0

    .line 379
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/一;->ւ:Lo/ー;

    move/from16 v2, p1

    move/from16 v4, p2

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lo/一;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/一;->ւ:Lo/ー;

    invoke-virtual {v0}, Lo/ー;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/一$ˊ;

    move-object v12, v0

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/一;->ւ:Lo/ー;

    invoke-virtual {v0}, Lo/ー;->getMeasuredWidth()I

    move-result v0

    iget v1, v12, Lo/一$ˊ;->leftMargin:I

    add-int/2addr v0, v1

    iget v1, v12, Lo/一$ˊ;->rightMargin:I

    add-int/2addr v0, v1

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/一;->ւ:Lo/ー;

    invoke-virtual {v0}, Lo/ー;->getMeasuredHeight()I

    move-result v0

    iget v1, v12, Lo/一$ˊ;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v12, Lo/一$ˊ;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/一;->ւ:Lo/ー;

    invoke-static {v0}, Lo/ﺑ;->ˍ(Landroid/view/View;)I

    move-result v0

    invoke-static {v9, v0}, Lo/ᓯ;->combineMeasuredStates(II)I

    move-result v9

    .line 389
    :cond_0
    invoke-static/range {p0 .. p0}, Lo/ﺑ;->ʹ(Landroid/view/View;)I

    move-result v13

    .line 390
    and-int/lit16 v0, v13, 0x100

    if-eqz v0, :cond_1

    const/4 v14, 0x1

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    .line 392
    :goto_0
    if-eqz v14, :cond_3

    .line 395
    move-object/from16 v0, p0

    iget v10, v0, Lo/一;->ӌ:I

    .line 396
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/一;->ڋ:Z

    if-eqz v0, :cond_4

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/一;->ח:Lo/ー;

    invoke-virtual {v0}, Lo/ー;->า()Landroid/view/View;

    move-result-object v15

    .line 398
    if-eqz v15, :cond_2

    .line 400
    move-object/from16 v0, p0

    iget v0, v0, Lo/一;->ӌ:I

    add-int/2addr v10, v0

    .line 402
    :cond_2
    goto :goto_1

    .line 403
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/一;->ח:Lo/ー;

    invoke-virtual {v0}, Lo/ー;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/一;->ח:Lo/ー;

    invoke-virtual {v0}, Lo/ー;->getMeasuredHeight()I

    move-result v10

    .line 409
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/一;->צ:Lo/ﻴ;

    invoke-interface {v0}, Lo/ﻴ;->ᴾ()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/一;->ւ:Lo/ー;

    if-eqz v0, :cond_6

    .line 412
    if-eqz v14, :cond_5

    .line 413
    move-object/from16 v0, p0

    iget v11, v0, Lo/一;->ӌ:I

    goto :goto_2

    .line 415
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/一;->ւ:Lo/ー;

    invoke-virtual {v0}, Lo/ー;->getMeasuredHeight()I

    move-result v11

    .line 424
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/一;->ܪ:Landroid/graphics/Rect;

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/一;->ۊ:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/一;->र:Landroid/graphics/Rect;

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/一;->ܬ:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 426
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/一;->ٵ:Z

    if-nez v0, :cond_7

    if-nez v14, :cond_7

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/一;->ܪ:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v10

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/一;->ܪ:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v11

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    .line 430
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/一;->र:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v10

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/一;->र:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v11

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 433
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/一;->ԅ:Lo/ﺫ;

    move-object/from16 v2, p0

    iget-object v2, v2, Lo/一;->ܪ:Landroid/graphics/Rect;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lo/一;->ˊ(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/一;->ঌ:Landroid/graphics/Rect;

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/一;->र:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/一;->ঌ:Landroid/graphics/Rect;

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/一;->र:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/一;->ԅ:Lo/ﺫ;

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/一;->र:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lo/ﺫ;->ˊ(Landroid/graphics/Rect;)V

    .line 444
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/一;->ԅ:Lo/ﺫ;

    move/from16 v2, p1

    move/from16 v4, p2

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lo/一;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/一;->ԅ:Lo/ﺫ;

    invoke-virtual {v0}, Lo/ﺫ;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/一$ˊ;

    move-object v12, v0

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/一;->ԅ:Lo/ﺫ;

    invoke-virtual {v0}, Lo/ﺫ;->getMeasuredWidth()I

    move-result v0

    iget v1, v12, Lo/一$ˊ;->leftMargin:I

    add-int/2addr v0, v1

    iget v1, v12, Lo/一$ˊ;->rightMargin:I

    add-int/2addr v0, v1

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/一;->ԅ:Lo/ﺫ;

    invoke-virtual {v0}, Lo/ﺫ;->getMeasuredHeight()I

    move-result v0

    iget v1, v12, Lo/一$ˊ;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v12, Lo/一$ˊ;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/一;->ԅ:Lo/ﺫ;

    invoke-static {v0}, Lo/ﺑ;->ˍ(Landroid/view/View;)I

    move-result v0

    invoke-static {v9, v0}, Lo/ᓯ;->combineMeasuredStates(II)I

    move-result v9

    .line 454
    invoke-virtual/range {p0 .. p0}, Lo/一;->getPaddingLeft()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lo/一;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v8, v0

    .line 455
    invoke-virtual/range {p0 .. p0}, Lo/一;->getPaddingTop()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lo/一;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v7, v0

    .line 458
    invoke-virtual/range {p0 .. p0}, Lo/一;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 459
    invoke-virtual/range {p0 .. p0}, Lo/一;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 461
    move/from16 v0, p1

    invoke-static {v8, v0, v9}, Lo/ﺑ;->resolveSizeAndState(III)I

    move-result v0

    shl-int/lit8 v1, v9, 0x10

    move/from16 v2, p2

    invoke-static {v7, v2, v1}, Lo/ﺑ;->resolveSizeAndState(III)I

    move-result v1

    move-object/from16 v2, p0

    invoke-virtual {v2, v0, v1}, Lo/一;->setMeasuredDimension(II)V

    .line 465
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1

    .line 557
    iget-boolean v0, p0, Lo/一;->ڒ:Z

    if-eqz v0, :cond_0

    if-nez p4, :cond_1

    .line 558
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 560
    :cond_1
    invoke-direct {p0, p2, p3}, Lo/一;->ʿ(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 561
    invoke-direct {p0}, Lo/一;->ﺛ()V

    goto :goto_0

    .line 563
    :cond_2
    invoke-direct {p0}, Lo/一;->ﺒ()V

    .line 565
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/一;->ڕ:Z

    .line 566
    const/4 v0, 0x1

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1

    .line 576
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0

    .line 572
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 1

    .line 537
    iget v0, p0, Lo/一;->ڹ:I

    add-int/2addr v0, p3

    iput v0, p0, Lo/一;->ڹ:I

    .line 538
    iget v0, p0, Lo/一;->ڹ:I

    invoke-virtual {p0, v0}, Lo/一;->setActionBarHideOffset(I)V

    .line 539
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 526
    iget-object v0, p0, Lo/一;->ᒌ:Lo/וֹ;

    invoke-virtual {v0, p1, p2, p3}, Lo/וֹ;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 527
    invoke-virtual {p0}, Lo/一;->ᴷ()I

    move-result v0

    iput v0, p0, Lo/一;->ڹ:I

    .line 528
    invoke-direct {p0}, Lo/一;->ᵏ()V

    .line 529
    iget-object v0, p0, Lo/一;->গ:Lo/一$if;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lo/一;->গ:Lo/一$if;

    invoke-interface {v0}, Lo/一$if;->ｨ()V

    .line 532
    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    .line 518
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/一;->ח:Lo/ー;

    invoke-virtual {v0}, Lo/ー;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 521
    :cond_1
    iget-boolean v0, p0, Lo/一;->ڒ:Z

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2

    .line 543
    iget-boolean v0, p0, Lo/一;->ڒ:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/一;->ڕ:Z

    if-nez v0, :cond_1

    .line 544
    iget v0, p0, Lo/一;->ڹ:I

    iget-object v1, p0, Lo/一;->ח:Lo/ー;

    invoke-virtual {v1}, Lo/ー;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 545
    invoke-direct {p0}, Lo/一;->ⅼ()V

    goto :goto_0

    .line 547
    :cond_0
    invoke-direct {p0}, Lo/一;->ﭘ()V

    .line 550
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/一;->গ:Lo/一$if;

    if-eqz v0, :cond_2

    .line 551
    iget-object v0, p0, Lo/一;->গ:Lo/一$if;

    invoke-interface {v0}, Lo/一$if;->Ȉ()V

    .line 553
    :cond_2
    return-void
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 5

    .line 250
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 251
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowSystemUiVisibilityChanged(I)V

    .line 253
    :cond_0
    invoke-virtual {p0}, Lo/一;->ᴊ()V

    .line 254
    iget v0, p0, Lo/一;->ۂ:I

    xor-int v2, v0, p1

    .line 255
    iput p1, p0, Lo/一;->ۂ:I

    .line 256
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 257
    :goto_0
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 258
    :goto_1
    iget-object v0, p0, Lo/一;->গ:Lo/一$if;

    if-eqz v0, :cond_6

    .line 262
    iget-object v0, p0, Lo/一;->গ:Lo/一$if;

    if-nez v4, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-interface {v0, v1}, Lo/一$if;->ʹ(Z)V

    .line 263
    if-nez v3, :cond_4

    if-nez v4, :cond_5

    :cond_4
    iget-object v0, p0, Lo/一;->গ:Lo/一$if;

    invoke-interface {v0}, Lo/一$if;->ﺩ()V

    goto :goto_3

    .line 264
    :cond_5
    iget-object v0, p0, Lo/一;->গ:Lo/一$if;

    invoke-interface {v0}, Lo/一$if;->ﻨ()V

    .line 266
    :cond_6
    :goto_3
    and-int/lit16 v0, v2, 0x100

    if-eqz v0, :cond_7

    .line 267
    iget-object v0, p0, Lo/一;->গ:Lo/一$if;

    if-eqz v0, :cond_7

    .line 268
    invoke-static {p0}, Lo/ﺑ;->ՙ(Landroid/view/View;)V

    .line 271
    :cond_7
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .line 275
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 276
    iput p1, p0, Lo/一;->ԁ:I

    .line 277
    iget-object v0, p0, Lo/一;->গ:Lo/一$if;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lo/一;->গ:Lo/一$if;

    invoke-interface {v0, p1}, Lo/一$if;->onWindowVisibilityChanged(I)V

    .line 280
    :cond_0
    return-void
.end method

.method public setActionBarHideOffset(I)V
    .locals 5

    .line 623
    invoke-direct {p0}, Lo/一;->ᵏ()V

    .line 624
    iget-object v0, p0, Lo/一;->ח:Lo/ー;

    invoke-virtual {v0}, Lo/ー;->getHeight()I

    move-result v2

    .line 625
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 626
    iget-object v0, p0, Lo/一;->ח:Lo/ー;

    neg-int v1, p1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lo/ﺑ;->ˋ(Landroid/view/View;F)V

    .line 627
    iget-object v0, p0, Lo/一;->ւ:Lo/ー;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/一;->ւ:Lo/ー;

    invoke-virtual {v0}, Lo/ー;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 629
    int-to-float v0, p1

    int-to-float v1, v2

    div-float v3, v0, v1

    .line 630
    iget-object v0, p0, Lo/一;->ւ:Lo/ー;

    invoke-virtual {v0}, Lo/ー;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v4, v0

    .line 631
    iget-object v0, p0, Lo/一;->ւ:Lo/ー;

    int-to-float v1, v4

    invoke-static {v0, v1}, Lo/ﺑ;->ˋ(Landroid/view/View;F)V

    .line 633
    :cond_0
    return-void
.end method

.method public setActionBarVisibilityCallback(Lo/一$if;)V
    .locals 3

    .line 187
    iput-object p1, p0, Lo/一;->গ:Lo/一$if;

    .line 188
    invoke-virtual {p0}, Lo/一;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lo/一;->গ:Lo/一$if;

    iget v1, p0, Lo/一;->ԁ:I

    invoke-interface {v0, v1}, Lo/一$if;->onWindowVisibilityChanged(I)V

    .line 192
    iget v0, p0, Lo/一;->ۂ:I

    if-eqz v0, :cond_0

    .line 193
    iget v2, p0, Lo/一;->ۂ:I

    .line 194
    invoke-virtual {p0, v2}, Lo/一;->onWindowSystemUiVisibilityChanged(I)V

    .line 195
    invoke-static {p0}, Lo/ﺑ;->ՙ(Landroid/view/View;)V

    .line 198
    :cond_0
    return-void
.end method

.method public setHasNonEmbeddedTabs(Z)V
    .locals 0

    .line 217
    iput-boolean p1, p0, Lo/一;->ڋ:Z

    .line 218
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 1

    .line 605
    iget-boolean v0, p0, Lo/一;->ڒ:Z

    if-eq p1, v0, :cond_0

    .line 606
    iput-boolean p1, p0, Lo/一;->ڒ:Z

    .line 607
    if-nez p1, :cond_0

    .line 608
    invoke-direct {p0}, Lo/一;->ᵏ()V

    .line 609
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/一;->setActionBarHideOffset(I)V

    .line 612
    :cond_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 725
    invoke-virtual {p0}, Lo/一;->ᴊ()V

    .line 726
    iget-object v0, p0, Lo/一;->צ:Lo/ﻴ;

    invoke-interface {v0, p1}, Lo/ﻴ;->setIcon(I)V

    .line 727
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 731
    invoke-virtual {p0}, Lo/一;->ᴊ()V

    .line 732
    iget-object v0, p0, Lo/一;->צ:Lo/ﻴ;

    invoke-interface {v0, p1}, Lo/ﻴ;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 733
    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .line 737
    invoke-virtual {p0}, Lo/一;->ᴊ()V

    .line 738
    iget-object v0, p0, Lo/一;->צ:Lo/ﻴ;

    invoke-interface {v0, p1}, Lo/ﻴ;->setLogo(I)V

    .line 739
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lo/ᵉ$if;)V
    .locals 1

    .line 779
    invoke-virtual {p0}, Lo/一;->ᴊ()V

    .line 780
    iget-object v0, p0, Lo/一;->צ:Lo/ﻴ;

    invoke-interface {v0, p1, p2}, Lo/ﻴ;->setMenu(Landroid/view/Menu;Lo/ᵉ$if;)V

    .line 781
    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    .line 773
    invoke-virtual {p0}, Lo/一;->ᴊ()V

    .line 774
    iget-object v0, p0, Lo/一;->צ:Lo/ﻴ;

    invoke-interface {v0}, Lo/ﻴ;->setMenuPrepared()V

    .line 775
    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 2

    .line 201
    iput-boolean p1, p0, Lo/一;->ٵ:Z

    .line 207
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lo/一;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lo/一;->م:Z

    .line 210
    return-void
.end method

.method public setShowingForActionMode(Z)V
    .locals 0

    .line 239
    return-void
.end method

.method public setUiOptions(I)V
    .locals 0

    .line 709
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 1

    .line 674
    invoke-virtual {p0}, Lo/一;->ᴊ()V

    .line 675
    iget-object v0, p0, Lo/一;->צ:Lo/ﻴ;

    invoke-interface {v0, p1}, Lo/ﻴ;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 676
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 680
    invoke-virtual {p0}, Lo/一;->ᴊ()V

    .line 681
    iget-object v0, p0, Lo/一;->צ:Lo/ﻴ;

    invoke-interface {v0, p1}, Lo/ﻴ;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 682
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 513
    const/4 v0, 0x0

    return v0
.end method

.method public ˊ(Landroid/util/AttributeSet;)Lo/一$ˊ;
    .locals 2

    .line 344
    new-instance v0, Lo/一$ˊ;

    invoke-virtual {p0}, Lo/一;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lo/一$ˊ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected ᙆ()Lo/一$ˊ;
    .locals 3

    .line 339
    new-instance v0, Lo/一$ˊ;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lo/一$ˊ;-><init>(II)V

    return-object v0
.end method

.method ᴊ()V
    .locals 1

    .line 585
    iget-object v0, p0, Lo/一;->ԅ:Lo/ﺫ;

    if-nez v0, :cond_0

    .line 586
    sget v0, Lo/ڊ$ˏ;->action_bar_activity_content:I

    invoke-virtual {p0, v0}, Lo/一;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ﺫ;

    iput-object v0, p0, Lo/一;->ԅ:Lo/ﺫ;

    .line 587
    sget v0, Lo/ڊ$ˏ;->action_bar_container:I

    invoke-virtual {p0, v0}, Lo/一;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ー;

    iput-object v0, p0, Lo/一;->ח:Lo/ー;

    .line 588
    sget v0, Lo/ڊ$ˏ;->action_bar:I

    invoke-virtual {p0, v0}, Lo/一;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/一;->ᐣ(Landroid/view/View;)Lo/ﻴ;

    move-result-object v0

    iput-object v0, p0, Lo/一;->צ:Lo/ﻴ;

    .line 589
    sget v0, Lo/ڊ$ˏ;->split_action_bar:I

    invoke-virtual {p0, v0}, Lo/一;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ー;

    iput-object v0, p0, Lo/一;->ւ:Lo/ー;

    .line 591
    :cond_0
    return-void
.end method

.method public ᴷ()I
    .locals 1

    .line 619
    iget-object v0, p0, Lo/一;->ח:Lo/ー;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/一;->ח:Lo/ー;

    invoke-static {v0}, Lo/ﺑ;->ـ(Landroid/view/View;)F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
