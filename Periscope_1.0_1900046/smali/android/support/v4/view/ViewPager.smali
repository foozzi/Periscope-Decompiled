.class public Landroid/support/v4/view/ViewPager;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewPager$ʼ;,
        Landroid/support/v4/view/ViewPager$ˋ;,
        Landroid/support/v4/view/ViewPager$ʻ;,
        Landroid/support/v4/view/ViewPager$ˎ;,
        Landroid/support/v4/view/ViewPager$SavedState;,
        Landroid/support/v4/view/ViewPager$if;,
        Landroid/support/v4/view/ViewPager$ˏ;,
        Landroid/support/v4/view/ViewPager$ᐝ;,
        Landroid/support/v4/view/ViewPager$aux;,
        Landroid/support/v4/view/ViewPager$ˊ;
    }
.end annotation


# static fields
.field private static final Ὶ:Landroid/support/v4/view/ViewPager$ʼ;

.field private static final 丨:[I

.field private static final 灬:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<Landroid/support/v4/view/ViewPager$\u02ca;>;"
        }
    .end annotation
.end field

.field private static final ﭙ:Landroid/view/animation/Interpolator;


# instance fields
.field private mInLayout:Z

.field private ľ:Ljava/lang/ClassLoader;

.field private ǀ:Landroid/widget/Scroller;

.field private ɔ:Landroid/support/v4/view/ViewPager$ʻ;

.field private ɟ:I

.field private ɺ:Landroid/graphics/drawable/Drawable;

.field private ɼ:I

.field private ʱ:I

.field private ˠ:F

.field private Ί:F

.field private ϲ:I

.field private ϳ:I

.field private Ј:Z

.field private с:Z

.field private т:I

.field private х:Z

.field private ј:Z

.field private ґ:I

.field private ך:I

.field private כ:I

.field private ء:F

.field private ر:F

.field private ڎ:F

.field private ڏ:F

.field private ઽ:I

.field private ເ:I

.field private ᓰ:I

.field private ᓲ:I

.field private ᓴ:Landroid/view/VelocityTracker;

.field private ᓵ:I

.field private ᔿ:Z

.field private ᕻ:Lo/ܝ;

.field private ᴄ:Lo/ܝ;

.field private ᴐ:Z

.field private ᴛ:Z

.field private ᴺ:Z

.field private ᵈ:I

.field private ᵑ:Landroid/support/v4/view/ViewPager$aux;

.field private ᵨ:Landroid/support/v4/view/ViewPager$aux;

.field private Ḯ:Landroid/support/v4/view/ViewPager$ˏ;

.field private Ἰ:Landroid/support/v4/view/ViewPager$ᐝ;

.field private Ἱ:Ljava/lang/reflect/Method;

.field private Ῐ:I

.field private Ῑ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Landroid/view/View;>;"
        }
    .end annotation
.end field

.field private final Ί:Ljava/lang/Runnable;

.field private ℴ:I

.field private 氵:I

.field private final ﮂ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Landroid/support/v4/view/ViewPager$\u02ca;>;"
        }
    .end annotation
.end field

.field private final ﮄ:Landroid/support/v4/view/ViewPager$ˊ;

.field private final ﹽ:Landroid/graphics/Rect;

.field private ﺋ:Lo/ﹲ;

.field private ﺜ:I

.field private ﻟ:I

.field private ﾉ:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v4/view/ViewPager;->丨:[I

    .line 121
    new-instance v0, Lo/ᔾ;

    invoke-direct {v0}, Lo/ᔾ;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->灬:Ljava/util/Comparator;

    .line 128
    new-instance v0, Lo/ᕐ;

    invoke-direct {v0}, Lo/ᕐ;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->ﭙ:Landroid/view/animation/Interpolator;

    .line 227
    new-instance v0, Landroid/support/v4/view/ViewPager$ʼ;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ʼ;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->Ὶ:Landroid/support/v4/view/ViewPager$ʼ;

    return-void

    :array_0
    .array-data 4
        0x10100b3
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 348
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Landroid/support/v4/view/ViewPager$ˊ;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ˊ;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮄ:Landroid/support/v4/view/ViewPager$ˊ;

    .line 138
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ﹽ:Landroid/graphics/Rect;

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ﻟ:I

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ﾉ:Landroid/os/Parcelable;

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ľ:Ljava/lang/ClassLoader;

    .line 156
    const v0, -0x800001

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ˠ:F

    .line 157
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroid/support/v4/view/ViewPager;->Ί:F

    .line 166
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->т:I

    .line 184
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ઽ:I

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ᴐ:Z

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ᴛ:Z

    .line 245
    new-instance v0, Lo/ᕝ;

    invoke-direct {v0, p0}, Lo/ᕝ;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->Ί:Ljava/lang/Runnable;

    .line 252
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ℴ:I

    .line 349
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->ᒽ()V

    .line 350
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 353
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Landroid/support/v4/view/ViewPager$ˊ;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ˊ;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮄ:Landroid/support/v4/view/ViewPager$ˊ;

    .line 138
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ﹽ:Landroid/graphics/Rect;

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ﻟ:I

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ﾉ:Landroid/os/Parcelable;

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ľ:Ljava/lang/ClassLoader;

    .line 156
    const v0, -0x800001

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ˠ:F

    .line 157
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroid/support/v4/view/ViewPager;->Ί:F

    .line 166
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->т:I

    .line 184
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ઽ:I

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ᴐ:Z

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ᴛ:Z

    .line 245
    new-instance v0, Lo/ᕝ;

    invoke-direct {v0, p0}, Lo/ᕝ;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->Ί:Ljava/lang/Runnable;

    .line 252
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ℴ:I

    .line 354
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->ᒽ()V

    .line 355
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .line 2416
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Ј:Z

    if-eq v0, p1, :cond_0

    .line 2417
    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->Ј:Z

    .line 2428
    :cond_0
    return-void
.end method

.method static synthetic ǃ()[I
    .locals 1

    .line 89
    sget-object v0, Landroid/support/v4/view/ViewPager;->丨:[I

    return-object v0
.end method

.method private ʻ(Z)V
    .locals 7

    .line 1740
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ℴ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1741
    :goto_0
    if-eqz v2, :cond_2

    .line 1743
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1744
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ǀ:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1745
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    .line 1746
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v4

    .line 1747
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ǀ:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1748
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ǀ:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1749
    if-ne v3, v5, :cond_1

    if-eq v4, v6, :cond_2

    .line 1750
    :cond_1
    invoke-virtual {p0, v5, v6}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1751
    if-eq v5, v3, :cond_2

    .line 1752
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->ﹳ(I)Z

    .line 1756
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->с:Z

    .line 1757
    const/4 v3, 0x0

    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 1758
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˊ;

    move-object v4, v0

    .line 1759
    iget-boolean v0, v4, Landroid/support/v4/view/ViewPager$ˊ;->ײַ:Z

    if-eqz v0, :cond_3

    .line 1760
    const/4 v2, 0x1

    .line 1761
    const/4 v0, 0x0

    iput-boolean v0, v4, Landroid/support/v4/view/ViewPager$ˊ;->ײַ:Z

    .line 1757
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1764
    :cond_4
    if-eqz v2, :cond_6

    .line 1765
    if-eqz p1, :cond_5

    .line 1766
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Ί:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lo/ﺑ;->ˊ(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 1768
    :cond_5
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Ί:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1771
    :cond_6
    :goto_2
    return-void
.end method

.method private ʼ(Z)V
    .locals 5

    .line 1778
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    .line 1779
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 1780
    if-eqz p1, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 1782
    :goto_1
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v4, v1}, Lo/ﺑ;->ˊ(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 1779
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1784
    :cond_1
    return-void
.end method

.method private ʽ(Z)V
    .locals 1

    .line 2057
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2058
    if-eqz v0, :cond_0

    .line 2059
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2061
    :cond_0
    return-void
.end method

.method private ˊ(IFII)I
    .locals 6

    .line 2158
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->ᓲ:I

    if-le v0, v1, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->ເ:I

    if-le v0, v1, :cond_1

    .line 2159
    if-lez p3, :cond_0

    move v3, p1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p1, 0x1

    :goto_0
    goto :goto_2

    .line 2161
    :cond_1
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    if-lt p1, v0, :cond_2

    const v4, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_2
    const v4, 0x3f19999a    # 0.6f

    .line 2162
    :goto_1
    int-to-float v0, p1

    add-float/2addr v0, p2

    add-float/2addr v0, v4

    float-to-int v3, v0

    .line 2165
    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2166
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˊ;

    move-object v4, v0

    .line 2167
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˊ;

    move-object v5, v0

    .line 2170
    iget v0, v4, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    iget v1, v5, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2173
    :cond_3
    return v3
.end method

.method private ˊ(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 6

    .line 2587
    if-nez p1, :cond_0

    .line 2588
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2590
    :cond_0
    if-nez p2, :cond_1

    .line 2591
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2592
    return-object p1

    .line 2594
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2595
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2596
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2597
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2599
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 2600
    :goto_0
    instance-of v0, v4, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eq v4, p0, :cond_2

    .line 2601
    move-object v0, v4

    check-cast v0, Landroid/view/ViewGroup;

    move-object v5, v0

    .line 2602
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2603
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2604
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2605
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2607
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 2608
    goto :goto_0

    .line 2609
    :cond_2
    return-object p1
.end method

.method static synthetic ˊ(Landroid/support/v4/view/ViewPager;)Lo/ﹲ;
    .locals 1

    .line 89
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    return-object v0
.end method

.method private ˊ(IIII)V
    .locals 13

    .line 1472
    if-lez p2, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1473
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int v6, v0, p3

    .line 1474
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int v7, v0, p4

    .line 1476
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v8

    .line 1477
    int-to-float v0, v8

    int-to-float v1, v7

    div-float v9, v0, v1

    .line 1478
    int-to-float v0, v6

    mul-float/2addr v0, v9

    float-to-int v10, v0

    .line 1480
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v10, v0}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1481
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ǀ:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1483
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ǀ:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->ǀ:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->timePassed()I

    move-result v1

    sub-int v11, v0, v1

    .line 1484
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->ᐨ(I)Landroid/support/v4/view/ViewPager$ˊ;

    move-result-object v12

    .line 1485
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ǀ:Landroid/widget/Scroller;

    move v1, v10

    iget v2, v12, Landroid/support/v4/view/ViewPager$ˊ;->דּ:F

    int-to-float v3, p1

    mul-float/2addr v2, v3

    float-to-int v3, v2

    move v5, v11

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1488
    :cond_0
    goto :goto_1

    .line 1489
    :cond_1
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->ᐨ(I)Landroid/support/v4/view/ViewPager$ˊ;

    move-result-object v6

    .line 1490
    if-eqz v6, :cond_2

    iget v0, v6, Landroid/support/v4/view/ViewPager$ˊ;->דּ:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->Ί:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v7

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    .line 1491
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v7

    float-to-int v8, v0

    .line 1493
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    if-eq v8, v0, :cond_3

    .line 1494
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->ʻ(Z)V

    .line 1495
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v8, v0}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1498
    :cond_3
    :goto_1
    return-void
.end method

.method private ˊ(IZIZ)V
    .locals 7

    .line 561
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->ᐨ(I)Landroid/support/v4/view/ViewPager$ˊ;

    move-result-object v4

    .line 562
    const/4 v5, 0x0

    .line 563
    if-eqz v4, :cond_0

    .line 564
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->ᔈ()I

    move-result v6

    .line 565
    int-to-float v0, v6

    iget v1, p0, Landroid/support/v4/view/ViewPager;->ˠ:F

    iget v2, v4, Landroid/support/v4/view/ViewPager$ˊ;->דּ:F

    iget v3, p0, Landroid/support/v4/view/ViewPager;->Ί:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v5, v0

    .line 568
    :cond_0
    if-eqz p2, :cond_2

    .line 569
    const/4 v0, 0x0

    invoke-virtual {p0, v5, v0, p3}, Landroid/support/v4/view/ViewPager;->ˊ(III)V

    .line 570
    if-eqz p4, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᵑ:Landroid/support/v4/view/ViewPager$aux;

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᵑ:Landroid/support/v4/view/ViewPager$aux;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$aux;->ﾞ(I)V

    .line 573
    :cond_1
    if-eqz p4, :cond_5

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᵨ:Landroid/support/v4/view/ViewPager$aux;

    if-eqz v0, :cond_5

    .line 574
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᵨ:Landroid/support/v4/view/ViewPager$aux;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$aux;->ﾞ(I)V

    goto :goto_0

    .line 577
    :cond_2
    if-eqz p4, :cond_3

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᵑ:Landroid/support/v4/view/ViewPager$aux;

    if-eqz v0, :cond_3

    .line 578
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᵑ:Landroid/support/v4/view/ViewPager$aux;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$aux;->ﾞ(I)V

    .line 580
    :cond_3
    if-eqz p4, :cond_4

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᵨ:Landroid/support/v4/view/ViewPager$aux;

    if-eqz v0, :cond_4

    .line 581
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᵨ:Landroid/support/v4/view/ViewPager$aux;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$aux;->ﾞ(I)V

    .line 583
    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->ʻ(Z)V

    .line 584
    const/4 v0, 0x0

    invoke-virtual {p0, v5, v0}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 585
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->ﹳ(I)Z

    .line 587
    :cond_5
    :goto_0
    return-void
.end method

.method private ˊ(Landroid/support/v4/view/ViewPager$ˊ;ILandroid/support/v4/view/ViewPager$ˊ;)V
    .locals 10

    .line 1126
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    invoke-virtual {v0}, Lo/ﹲ;->getCount()I

    move-result v2

    .line 1127
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->ᔈ()I

    move-result v3

    .line 1128
    if-lez v3, :cond_0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->ɟ:I

    int-to-float v0, v0

    int-to-float v1, v3

    div-float v4, v0, v1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1130
    :goto_0
    if-eqz p3, :cond_7

    .line 1131
    iget v5, p3, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    .line 1133
    iget v0, p1, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    if-ge v5, v0, :cond_4

    .line 1134
    const/4 v6, 0x0

    .line 1135
    const/4 v7, 0x0

    .line 1136
    iget v0, p3, Landroid/support/v4/view/ViewPager$ˊ;->דּ:F

    iget v1, p3, Landroid/support/v4/view/ViewPager$ˊ;->ﬧ:F

    add-float/2addr v0, v1

    add-float v8, v0, v4

    .line 1137
    add-int/lit8 v9, v5, 0x1

    .line 1138
    :goto_1
    iget v0, p1, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    if-gt v9, v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_3

    .line 1139
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˊ;

    move-object v7, v0

    .line 1140
    :goto_2
    iget v0, v7, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    if-le v9, v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_1

    .line 1141
    add-int/lit8 v6, v6, 0x1

    .line 1142
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˊ;

    move-object v7, v0

    goto :goto_2

    .line 1144
    :cond_1
    :goto_3
    iget v0, v7, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    if-ge v9, v0, :cond_2

    .line 1147
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    invoke-virtual {v0, v9}, Lo/ﹲ;->ˑ(I)F

    move-result v0

    add-float/2addr v0, v4

    add-float/2addr v8, v0

    .line 1148
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1150
    :cond_2
    iput v8, v7, Landroid/support/v4/view/ViewPager$ˊ;->דּ:F

    .line 1151
    iget v0, v7, Landroid/support/v4/view/ViewPager$ˊ;->ﬧ:F

    add-float/2addr v0, v4

    add-float/2addr v8, v0

    .line 1138
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 1153
    :cond_3
    goto/16 :goto_7

    :cond_4
    iget v0, p1, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    if-le v5, v0, :cond_7

    .line 1154
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .line 1155
    const/4 v7, 0x0

    .line 1156
    iget v8, p3, Landroid/support/v4/view/ViewPager$ˊ;->דּ:F

    .line 1157
    add-int/lit8 v9, v5, -0x1

    .line 1158
    :goto_4
    iget v0, p1, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    if-lt v9, v0, :cond_7

    if-ltz v6, :cond_7

    .line 1159
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˊ;

    move-object v7, v0

    .line 1160
    :goto_5
    iget v0, v7, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    if-ge v9, v0, :cond_5

    if-lez v6, :cond_5

    .line 1161
    add-int/lit8 v6, v6, -0x1

    .line 1162
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˊ;

    move-object v7, v0

    goto :goto_5

    .line 1164
    :cond_5
    :goto_6
    iget v0, v7, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    if-le v9, v0, :cond_6

    .line 1167
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    invoke-virtual {v0, v9}, Lo/ﹲ;->ˑ(I)F

    move-result v0

    add-float/2addr v0, v4

    sub-float/2addr v8, v0

    .line 1168
    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    .line 1170
    :cond_6
    iget v0, v7, Landroid/support/v4/view/ViewPager$ˊ;->ﬧ:F

    add-float/2addr v0, v4

    sub-float/2addr v8, v0

    .line 1171
    iput v8, v7, Landroid/support/v4/view/ViewPager$ˊ;->דּ:F

    .line 1158
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 1177
    :cond_7
    :goto_7
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1178
    iget v6, p1, Landroid/support/v4/view/ViewPager$ˊ;->דּ:F

    .line 1179
    iget v0, p1, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    add-int/lit8 v7, v0, -0x1

    .line 1180
    iget v0, p1, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    if-nez v0, :cond_8

    iget v0, p1, Landroid/support/v4/view/ViewPager$ˊ;->דּ:F

    goto :goto_8

    :cond_8
    const v0, -0x800001

    :goto_8
    iput v0, p0, Landroid/support/v4/view/ViewPager;->ˠ:F

    .line 1181
    iget v0, p1, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    add-int/lit8 v1, v2, -0x1

    if-ne v0, v1, :cond_9

    iget v0, p1, Landroid/support/v4/view/ViewPager$ˊ;->דּ:F

    iget v1, p1, Landroid/support/v4/view/ViewPager$ˊ;->ﬧ:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    goto :goto_9

    :cond_9
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    :goto_9
    iput v0, p0, Landroid/support/v4/view/ViewPager;->Ί:F

    .line 1184
    add-int/lit8 v8, p2, -0x1

    :goto_a
    if-ltz v8, :cond_c

    .line 1185
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˊ;

    move-object v9, v0

    .line 1186
    :goto_b
    iget v0, v9, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    if-le v7, v0, :cond_a

    .line 1187
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    move v1, v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v1}, Lo/ﹲ;->ˑ(I)F

    move-result v0

    add-float/2addr v0, v4

    sub-float/2addr v6, v0

    goto :goto_b

    .line 1189
    :cond_a
    iget v0, v9, Landroid/support/v4/view/ViewPager$ˊ;->ﬧ:F

    add-float/2addr v0, v4

    sub-float/2addr v6, v0

    .line 1190
    iput v6, v9, Landroid/support/v4/view/ViewPager$ˊ;->דּ:F

    .line 1191
    iget v0, v9, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    if-nez v0, :cond_b

    iput v6, p0, Landroid/support/v4/view/ViewPager;->ˠ:F

    .line 1184
    :cond_b
    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_a

    .line 1193
    :cond_c
    iget v0, p1, Landroid/support/v4/view/ViewPager$ˊ;->דּ:F

    iget v1, p1, Landroid/support/v4/view/ViewPager$ˊ;->ﬧ:F

    add-float/2addr v0, v1

    add-float v6, v0, v4

    .line 1194
    iget v0, p1, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    add-int/lit8 v7, v0, 0x1

    .line 1196
    add-int/lit8 v8, p2, 0x1

    :goto_c
    if-ge v8, v5, :cond_f

    .line 1197
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˊ;

    move-object v9, v0

    .line 1198
    :goto_d
    iget v0, v9, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    if-ge v7, v0, :cond_d

    .line 1199
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    move v1, v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v1}, Lo/ﹲ;->ˑ(I)F

    move-result v0

    add-float/2addr v0, v4

    add-float/2addr v6, v0

    goto :goto_d

    .line 1201
    :cond_d
    iget v0, v9, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    add-int/lit8 v1, v2, -0x1

    if-ne v0, v1, :cond_e

    .line 1202
    iget v0, v9, Landroid/support/v4/view/ViewPager$ˊ;->ﬧ:F

    add-float/2addr v0, v6

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->Ί:F

    .line 1204
    :cond_e
    iput v6, v9, Landroid/support/v4/view/ViewPager$ˊ;->דּ:F

    .line 1205
    iget v0, v9, Landroid/support/v4/view/ViewPager$ˊ;->ﬧ:F

    add-float/2addr v0, v4

    add-float/2addr v6, v0

    .line 1196
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 1208
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ᴛ:Z

    .line 1209
    return-void
.end method

.method public static synthetic ˊ(Landroid/support/v4/view/ViewPager;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->ـ(I)V

    return-void
.end method

.method private ˊ(FF)Z
    .locals 2

    .line 1774
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ך:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->ך:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic ˋ(Landroid/support/v4/view/ViewPager;)I
    .locals 1

    .line 89
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    return v0
.end method

.method private ˋ(F)Z
    .locals 15

    .line 2064
    const/4 v3, 0x0

    .line 2066
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ء:F

    sub-float v4, v0, p1

    .line 2067
    move/from16 v0, p1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ء:F

    .line 2069
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    int-to-float v5, v0

    .line 2070
    add-float v6, v5, v4

    .line 2071
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->ᔈ()I

    move-result v7

    .line 2073
    int-to-float v0, v7

    iget v1, p0, Landroid/support/v4/view/ViewPager;->ˠ:F

    mul-float v8, v0, v1

    .line 2074
    int-to-float v0, v7

    iget v1, p0, Landroid/support/v4/view/ViewPager;->Ί:F

    mul-float v9, v0, v1

    .line 2075
    const/4 v10, 0x1

    .line 2076
    const/4 v11, 0x1

    .line 2078
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˊ;

    move-object v12, v0

    .line 2079
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˊ;

    move-object v13, v0

    .line 2080
    iget v0, v12, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    if-eqz v0, :cond_0

    .line 2081
    const/4 v10, 0x0

    .line 2082
    iget v0, v12, Landroid/support/v4/view/ViewPager$ˊ;->דּ:F

    int-to-float v1, v7

    mul-float v8, v0, v1

    .line 2084
    :cond_0
    iget v0, v13, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    invoke-virtual {v1}, Lo/ﹲ;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2085
    const/4 v11, 0x0

    .line 2086
    iget v0, v13, Landroid/support/v4/view/ViewPager$ˊ;->דּ:F

    int-to-float v1, v7

    mul-float v9, v0, v1

    .line 2089
    :cond_1
    cmpg-float v0, v6, v8

    if-gez v0, :cond_3

    .line 2090
    if-eqz v10, :cond_2

    .line 2091
    sub-float v14, v8, v6

    .line 2092
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᕻ:Lo/ܝ;

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v2, v7

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lo/ܝ;->ͺ(F)Z

    move-result v3

    .line 2094
    :cond_2
    move v6, v8

    goto :goto_0

    .line 2095
    :cond_3
    cmpl-float v0, v6, v9

    if-lez v0, :cond_5

    .line 2096
    if-eqz v11, :cond_4

    .line 2097
    sub-float v14, v6, v9

    .line 2098
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᴄ:Lo/ܝ;

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v2, v7

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lo/ܝ;->ͺ(F)Z

    move-result v3

    .line 2100
    :cond_4
    move v6, v9

    .line 2103
    :cond_5
    :goto_0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ء:F

    float-to-int v1, v6

    int-to-float v1, v1

    sub-float v1, v6, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ء:F

    .line 2104
    float-to-int v0, v6

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 2105
    float-to-int v0, v6

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->ﹳ(I)Z

    .line 2107
    return v3
.end method

.method private ˏ(Landroid/view/MotionEvent;)V
    .locals 4

    .line 2391
    invoke-static {p1}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;)I

    move-result v1

    .line 2392
    invoke-static {p1, v1}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 2393
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ઽ:I

    if-ne v2, v0, :cond_1

    .line 2396
    if-nez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2397
    :goto_0
    invoke-static {p1, v3}, Lo/ᵧ;->ˎ(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ء:F

    .line 2398
    invoke-static {p1, v3}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ઽ:I

    .line 2399
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᓴ:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 2400
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᓴ:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2403
    :cond_1
    return-void
.end method

.method private ـ(I)V
    .locals 1

    .line 392
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ℴ:I

    if-ne v0, p1, :cond_0

    .line 393
    return-void

    .line 396
    :cond_0
    iput p1, p0, Landroid/support/v4/view/ViewPager;->ℴ:I

    .line 397
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Ἰ:Landroid/support/v4/view/ViewPager$ᐝ;

    if-eqz v0, :cond_2

    .line 399
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->ʼ(Z)V

    .line 401
    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᵑ:Landroid/support/v4/view/ViewPager$aux;

    if-eqz v0, :cond_3

    .line 402
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᵑ:Landroid/support/v4/view/ViewPager$aux;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$aux;->ʹ(I)V

    .line 404
    :cond_3
    return-void
.end method

.method private ᔇ()V
    .locals 4

    .line 458
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 459
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 460
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˋ;

    move-object v3, v0

    .line 461
    iget-boolean v0, v3, Landroid/support/v4/view/ViewPager$ˋ;->ﭝ:Z

    if-nez v0, :cond_0

    .line 462
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->removeViewAt(I)V

    .line 463
    add-int/lit8 v1, v1, -0x1

    .line 458
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 466
    :cond_1
    return-void
.end method

.method private ᔈ()I
    .locals 2

    .line 482
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private ᵀ()V
    .locals 5

    .line 1110
    iget v0, p0, Landroid/support/v4/view/ViewPager;->Ῐ:I

    if-eqz v0, :cond_2

    .line 1111
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Ῑ:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->Ῑ:Ljava/util/ArrayList;

    goto :goto_0

    .line 1114
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Ῑ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1116
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    .line 1117
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    .line 1118
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1119
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Ῑ:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1121
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Ῑ:Ljava/util/ArrayList;

    sget-object v1, Landroid/support/v4/view/ViewPager;->Ὶ:Landroid/support/v4/view/ViewPager$ʼ;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1123
    :cond_2
    return-void
.end method

.method private ᵋ()Landroid/support/v4/view/ViewPager$ˊ;
    .locals 15

    .line 2115
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->ᔈ()I

    move-result v2

    .line 2116
    if-lez v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v2

    div-float v3, v0, v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2117
    :goto_0
    if-lez v2, :cond_1

    iget v0, p0, Landroid/support/v4/view/ViewPager;->ɟ:I

    int-to-float v0, v0

    int-to-float v1, v2

    div-float v4, v0, v1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 2118
    :goto_1
    const/4 v5, -0x1

    .line 2119
    const/4 v6, 0x0

    .line 2120
    const/4 v7, 0x0

    .line 2121
    const/4 v8, 0x1

    .line 2123
    const/4 v9, 0x0

    .line 2124
    const/4 v10, 0x0

    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_7

    .line 2125
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˊ;

    move-object v11, v0

    .line 2127
    if-nez v8, :cond_2

    iget v0, v11, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    add-int/lit8 v1, v5, 0x1

    if-eq v0, v1, :cond_2

    .line 2129
    iget-object v11, p0, Landroid/support/v4/view/ViewPager;->ﮄ:Landroid/support/v4/view/ViewPager$ˊ;

    .line 2130
    add-float v0, v6, v7

    add-float/2addr v0, v4

    iput v0, v11, Landroid/support/v4/view/ViewPager$ˊ;->דּ:F

    .line 2131
    add-int/lit8 v0, v5, 0x1

    iput v0, v11, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    .line 2132
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    iget v1, v11, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    invoke-virtual {v0, v1}, Lo/ﹲ;->ˑ(I)F

    move-result v0

    iput v0, v11, Landroid/support/v4/view/ViewPager$ˊ;->ﬧ:F

    .line 2133
    add-int/lit8 v10, v10, -0x1

    .line 2135
    :cond_2
    iget v12, v11, Landroid/support/v4/view/ViewPager$ˊ;->דּ:F

    .line 2137
    move v13, v12

    .line 2138
    iget v0, v11, Landroid/support/v4/view/ViewPager$ˊ;->ﬧ:F

    add-float/2addr v0, v12

    add-float v14, v0, v4

    .line 2139
    if-nez v8, :cond_3

    cmpl-float v0, v3, v13

    if-ltz v0, :cond_5

    .line 2140
    :cond_3
    cmpg-float v0, v3, v14

    if-ltz v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v10, v0, :cond_6

    .line 2141
    :cond_4
    return-object v11

    .line 2144
    :cond_5
    return-object v9

    .line 2146
    :cond_6
    const/4 v8, 0x0

    .line 2147
    iget v5, v11, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    .line 2148
    move v6, v12

    .line 2149
    iget v7, v11, Landroid/support/v4/view/ViewPager$ˊ;->ﬧ:F

    .line 2150
    move-object v9, v11

    .line 2124
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 2153
    :cond_7
    return-object v9
.end method

.method private ᵗ()V
    .locals 1

    .line 2406
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->х:Z

    .line 2407
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ј:Z

    .line 2409
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᓴ:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2410
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᓴ:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2411
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ᓴ:Landroid/view/VelocityTracker;

    .line 2413
    :cond_0
    return-void
.end method

.method private ﹳ(I)Z
    .locals 10

    .line 1635
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1636
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ᴺ:Z

    .line 1637
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/view/ViewPager;->ˊ(IFI)V

    .line 1638
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ᴺ:Z

    if-nez v0, :cond_0

    .line 1639
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1642
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1644
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->ᵋ()Landroid/support/v4/view/ViewPager$ˊ;

    move-result-object v3

    .line 1645
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->ᔈ()I

    move-result v4

    .line 1646
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ɟ:I

    add-int v5, v4, v0

    .line 1647
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ɟ:I

    int-to-float v0, v0

    int-to-float v1, v4

    div-float v6, v0, v1

    .line 1648
    iget v7, v3, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    .line 1649
    int-to-float v0, p1

    int-to-float v1, v4

    div-float/2addr v0, v1

    iget v1, v3, Landroid/support/v4/view/ViewPager$ˊ;->דּ:F

    sub-float/2addr v0, v1

    iget v1, v3, Landroid/support/v4/view/ViewPager$ˊ;->ﬧ:F

    add-float/2addr v1, v6

    div-float v8, v0, v1

    .line 1651
    int-to-float v0, v5

    mul-float/2addr v0, v8

    float-to-int v9, v0

    .line 1653
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ᴺ:Z

    .line 1654
    invoke-virtual {p0, v7, v8, v9}, Landroid/support/v4/view/ViewPager;->ˊ(IFI)V

    .line 1655
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ᴺ:Z

    if-nez v0, :cond_2

    .line 1656
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1659
    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/ArrayList<Landroid/view/View;>;II)V"
        }
    .end annotation

    .line 2633
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2635
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDescendantFocusability()I

    move-result v3

    .line 2637
    const/high16 v0, 0x60000

    if-eq v3, v0, :cond_1

    .line 2638
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 2639
    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2640
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2641
    invoke-virtual {p0, v5}, Landroid/support/v4/view/ViewPager;->ᴵ(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ˊ;

    move-result-object v6

    .line 2642
    if-eqz v6, :cond_0

    iget v0, v6, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    if-ne v0, v1, :cond_0

    .line 2643
    invoke-virtual {v5, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2638
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2653
    :cond_1
    const/high16 v0, 0x40000

    if-ne v3, v0, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v2, v0, :cond_5

    .line 2659
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2660
    return-void

    .line 2662
    :cond_3
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusableInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2664
    return-void

    .line 2666
    :cond_4
    if-eqz p1, :cond_5

    .line 2667
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2670
    :cond_5
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/ArrayList<Landroid/view/View;>;)V"
        }
    .end annotation

    .line 2680
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 2681
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2682
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2683
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->ᴵ(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ˊ;

    move-result-object v4

    .line 2684
    if-eqz v4, :cond_0

    iget v0, v4, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    if-ne v0, v1, :cond_0

    .line 2685
    invoke-virtual {v3, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2680
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2689
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1296
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1297
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1299
    :cond_0
    move-object v0, p3

    check-cast v0, Landroid/support/v4/view/ViewPager$ˋ;

    move-object v2, v0

    .line 1300
    iget-boolean v0, v2, Landroid/support/v4/view/ViewPager$ˋ;->ﭝ:Z

    instance-of v1, p1, Landroid/support/v4/view/ViewPager$if;

    or-int/2addr v0, v1

    iput-boolean v0, v2, Landroid/support/v4/view/ViewPager$ˋ;->ﭝ:Z

    .line 1301
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    if-eqz v0, :cond_2

    .line 1302
    if-eqz v2, :cond_1

    iget-boolean v0, v2, Landroid/support/v4/view/ViewPager$ˋ;->ﭝ:Z

    if-eqz v0, :cond_1

    .line 1303
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add pager decor view during layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1305
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, v2, Landroid/support/v4/view/ViewPager$ˋ;->ﭥ:Z

    .line 1306
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_0

    .line 1308
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1318
    :goto_0
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 8

    .line 2521
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v3

    .line 2522
    if-ne v3, p0, :cond_0

    .line 2523
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 2524
    :cond_0
    if-eqz v3, :cond_4

    .line 2525
    const/4 v4, 0x0

    .line 2526
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    :goto_0
    instance-of v0, v5, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 2528
    if-ne v5, p0, :cond_1

    .line 2529
    const/4 v4, 0x1

    .line 2530
    goto :goto_1

    .line 2527
    :cond_1
    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    goto :goto_0

    .line 2533
    :cond_2
    :goto_1
    if-nez v4, :cond_4

    .line 2535
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2536
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2537
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    :goto_2
    instance-of v0, v6, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 2539
    const-string v0, " => "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2538
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_2

    .line 2541
    :cond_3
    const-string v0, "ViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    const/4 v3, 0x0

    .line 2547
    :cond_4
    :goto_3
    const/4 v4, 0x0

    .line 2549
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 2551
    if-eqz v5, :cond_8

    if-eq v5, v3, :cond_8

    .line 2552
    const/16 v0, 0x11

    if-ne p1, v0, :cond_6

    .line 2555
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﹽ:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v5}, Landroid/support/v4/view/ViewPager;->ˊ(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 2556
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﹽ:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v3}, Landroid/support/v4/view/ViewPager;->ˊ(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 2557
    if-eqz v3, :cond_5

    if-lt v6, v7, :cond_5

    .line 2558
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->ﾟ()Z

    move-result v4

    goto :goto_4

    .line 2560
    :cond_5
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    move-result v4

    .line 2562
    :goto_4
    goto :goto_6

    :cond_6
    const/16 v0, 0x42

    if-ne p1, v0, :cond_c

    .line 2565
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﹽ:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v5}, Landroid/support/v4/view/ViewPager;->ˊ(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 2566
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﹽ:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v3}, Landroid/support/v4/view/ViewPager;->ˊ(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 2567
    if-eqz v3, :cond_7

    if-gt v6, v7, :cond_7

    .line 2568
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->ı()Z

    move-result v4

    goto :goto_5

    .line 2570
    :cond_7
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    move-result v4

    .line 2572
    :goto_5
    goto :goto_6

    .line 2573
    :cond_8
    const/16 v0, 0x11

    if-eq p1, v0, :cond_9

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    .line 2575
    :cond_9
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->ﾟ()Z

    move-result v4

    goto :goto_6

    .line 2576
    :cond_a
    const/16 v0, 0x42

    if-eq p1, v0, :cond_b

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 2578
    :cond_b
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->ı()Z

    move-result v4

    .line 2580
    :cond_c
    :goto_6
    if-eqz v4, :cond_d

    .line 2581
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->playSoundEffect(I)V

    .line 2583
    :cond_d
    return v4
.end method

.method public canScrollHorizontally(I)Z
    .locals 4

    .line 2431
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    if-nez v0, :cond_0

    .line 2432
    const/4 v0, 0x0

    return v0

    .line 2435
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->ᔈ()I

    move-result v2

    .line 2436
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    .line 2437
    if-gez p1, :cond_2

    .line 2438
    int-to-float v0, v2

    iget v1, p0, Landroid/support/v4/view/ViewPager;->ˠ:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-le v3, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2439
    :cond_2
    if-lez p1, :cond_4

    .line 2440
    int-to-float v0, v2

    iget v1, p0, Landroid/support/v4/view/ViewPager;->Ί:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-ge v3, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 2442
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 2759
    instance-of v0, p1, Landroid/support/v4/view/ViewPager$ˋ;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public computeScroll()V
    .locals 5

    .line 1611
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ǀ:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ǀ:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1612
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    .line 1613
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v2

    .line 1614
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ǀ:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 1615
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ǀ:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 1617
    if-ne v1, v3, :cond_0

    if-eq v2, v4, :cond_1

    .line 1618
    :cond_0
    invoke-virtual {p0, v3, v4}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1619
    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->ﹳ(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1620
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ǀ:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1621
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v4}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1626
    :cond_1
    invoke-static {p0}, Lo/ﺑ;->ʿ(Landroid/view/View;)V

    .line 1627
    return-void

    .line 1631
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->ʻ(Z)V

    .line 1632
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 2483
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .line 2727
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 2728
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0

    .line 2732
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    .line 2733
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 2734
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2735
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2736
    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->ᴵ(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ˊ;

    move-result-object v5

    .line 2737
    if-eqz v5, :cond_1

    iget v0, v5, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    if-ne v0, v1, :cond_1

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2739
    const/4 v0, 0x1

    return v0

    .line 2733
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2744
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 2178
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2179
    const/4 v3, 0x0

    .line 2181
    invoke-static {p0}, Lo/ﺑ;->ͺ(Landroid/view/View;)I

    move-result v4

    .line 2182
    if-eqz v4, :cond_0

    const/4 v0, 0x1

    if-ne v4, v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    invoke-virtual {v0}, Lo/ﹲ;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 2185
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᕻ:Lo/ܝ;

    invoke-virtual {v0}, Lo/ܝ;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2186
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 2187
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v1

    sub-int v6, v0, v1

    .line 2188
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v7

    .line 2190
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2191
    neg-int v0, v6

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->ˠ:F

    int-to-float v2, v7

    mul-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2192
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᕻ:Lo/ܝ;

    invoke-virtual {v0, v6, v7}, Lo/ܝ;->setSize(II)V

    .line 2193
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᕻ:Lo/ܝ;

    invoke-virtual {v0, p1}, Lo/ܝ;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    or-int/lit8 v3, v0, 0x0

    .line 2194
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2196
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᴄ:Lo/ܝ;

    invoke-virtual {v0}, Lo/ܝ;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2197
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 2198
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v6

    .line 2199
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v1

    sub-int v7, v0, v1

    .line 2201
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2202
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->Ί:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    neg-float v1, v1

    int-to-float v2, v6

    mul-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2203
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᴄ:Lo/ܝ;

    invoke-virtual {v0, v7, v6}, Lo/ܝ;->setSize(II)V

    .line 2204
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᴄ:Lo/ܝ;

    invoke-virtual {v0, p1}, Lo/ܝ;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    or-int/2addr v3, v0

    .line 2205
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2206
    goto :goto_0

    .line 2208
    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᕻ:Lo/ܝ;

    invoke-virtual {v0}, Lo/ܝ;->finish()V

    .line 2209
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᴄ:Lo/ܝ;

    invoke-virtual {v0}, Lo/ܝ;->finish()V

    .line 2212
    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    .line 2214
    invoke-static {p0}, Lo/ﺑ;->ʿ(Landroid/view/View;)V

    .line 2216
    :cond_4
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 758
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 759
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->ɺ:Landroid/graphics/drawable/Drawable;

    .line 760
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 763
    :cond_0
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 2495
    const/4 v2, 0x0

    .line 2496
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 2497
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 2499
    :sswitch_0
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v2

    .line 2500
    goto :goto_0

    .line 2502
    :sswitch_1
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v2

    .line 2503
    goto :goto_0

    .line 2505
    :sswitch_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 2508
    invoke-static {p1}, Lo/ᒻ;->ˊ(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2509
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v2

    goto :goto_0

    .line 2510
    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/ᒻ;->ˊ(Landroid/view/KeyEvent;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2511
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v2

    .line 2517
    :cond_1
    :goto_0
    return v2

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2749
    new-instance v0, Landroid/support/v4/view/ViewPager$ˋ;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ˋ;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2764
    new-instance v0, Landroid/support/v4/view/ViewPager$ˋ;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/view/ViewPager$ˋ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2754
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 4

    .line 646
    iget v0, p0, Landroid/support/v4/view/ViewPager;->Ῐ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, -0x1

    sub-int v2, v0, p2

    goto :goto_0

    :cond_0
    move v2, p2

    .line 647
    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Ῑ:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˋ;

    iget v3, v0, Landroid/support/v4/view/ViewPager$ˋ;->ﮆ:I

    .line 648
    return v3
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1362
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1363
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ᴐ:Z

    .line 1364
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 387
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Ί:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 388
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 389
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    .line 2220
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super {v0, v1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2223
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->ɟ:I

    if-lez v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ɺ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    if-eqz v0, :cond_4

    .line 2224
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v5

    .line 2225
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v6

    .line 2227
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->ɟ:I

    int-to-float v0, v0

    int-to-float v1, v6

    div-float v7, v0, v1

    .line 2228
    const/4 v8, 0x0

    .line 2229
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˊ;

    move-object v9, v0

    .line 2230
    iget v10, v9, Landroid/support/v4/view/ViewPager$ˊ;->דּ:F

    .line 2231
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 2232
    iget v12, v9, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    .line 2233
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    add-int/lit8 v1, v11, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˊ;

    iget v13, v0, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    .line 2234
    move v14, v12

    :goto_0
    if-ge v14, v13, :cond_4

    .line 2235
    :goto_1
    iget v0, v9, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    if-le v14, v0, :cond_0

    if-ge v8, v11, :cond_0

    .line 2236
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˊ;

    move-object v9, v0

    goto :goto_1

    .line 2240
    :cond_0
    iget v0, v9, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    if-ne v14, v0, :cond_1

    .line 2241
    iget v0, v9, Landroid/support/v4/view/ViewPager$ˊ;->דּ:F

    iget v1, v9, Landroid/support/v4/view/ViewPager$ˊ;->ﬧ:F

    add-float/2addr v0, v1

    int-to-float v1, v6

    mul-float v15, v0, v1

    .line 2242
    iget v0, v9, Landroid/support/v4/view/ViewPager$ˊ;->דּ:F

    iget v1, v9, Landroid/support/v4/view/ViewPager$ˊ;->ﬧ:F

    add-float/2addr v0, v1

    add-float v10, v0, v7

    goto :goto_2

    .line 2244
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    invoke-virtual {v0, v14}, Lo/ﹲ;->ˑ(I)F

    move-result v16

    .line 2245
    add-float v0, v10, v16

    int-to-float v1, v6

    mul-float v15, v0, v1

    .line 2246
    add-float v0, v16, v7

    add-float/2addr v10, v0

    .line 2249
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->ɟ:I

    int-to-float v0, v0

    add-float/2addr v0, v15

    int-to-float v1, v5

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 2250
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ɺ:Landroid/graphics/drawable/Drawable;

    float-to-int v1, v15

    move-object/from16 v2, p0

    iget v2, v2, Landroid/support/v4/view/ViewPager;->ɼ:I

    move-object/from16 v3, p0

    iget v3, v3, Landroid/support/v4/view/ViewPager;->ɟ:I

    int-to-float v3, v3

    add-float/2addr v3, v15

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v4, p0

    iget v4, v4, Landroid/support/v4/view/ViewPager;->ʱ:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2252
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ɺ:Landroid/graphics/drawable/Drawable;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2255
    :cond_2
    add-int v0, v5, v6

    int-to-float v0, v0

    cmpl-float v0, v15, v0

    if-lez v0, :cond_3

    .line 2256
    goto :goto_3

    .line 2234
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 2260
    :cond_4
    :goto_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 1794
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    .line 1797
    const/4 v0, 0x3

    if-eq v6, v0, :cond_0

    const/4 v0, 0x1

    if-ne v6, v0, :cond_2

    .line 1800
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->х:Z

    .line 1801
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ј:Z

    .line 1802
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ઽ:I

    .line 1803
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᓴ:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 1804
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᓴ:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1805
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ᓴ:Landroid/view/VelocityTracker;

    .line 1807
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1812
    :cond_2
    if-eqz v6, :cond_4

    .line 1813
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->х:Z

    if-eqz v0, :cond_3

    .line 1815
    const/4 v0, 0x1

    return v0

    .line 1817
    :cond_3
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ј:Z

    if-eqz v0, :cond_4

    .line 1819
    const/4 v0, 0x0

    return v0

    .line 1823
    :cond_4
    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_2

    .line 1834
    :sswitch_0
    iget v7, p0, Landroid/support/v4/view/ViewPager;->ઽ:I

    .line 1835
    const/4 v0, -0x1

    if-ne v7, v0, :cond_5

    .line 1837
    goto/16 :goto_2

    .line 1840
    :cond_5
    invoke-static {p1, v7}, Lo/ᵧ;->ˊ(Landroid/view/MotionEvent;I)I

    move-result v8

    .line 1841
    invoke-static {p1, v8}, Lo/ᵧ;->ˎ(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 1842
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ء:F

    sub-float v10, v9, v0

    .line 1843
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1844
    invoke-static {p1, v8}, Lo/ᵧ;->ˏ(Landroid/view/MotionEvent;I)F

    move-result v12

    .line 1845
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ڏ:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 1848
    const/4 v0, 0x0

    cmpl-float v0, v10, v0

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/support/v4/view/ViewPager;->ء:F

    invoke-direct {p0, v0, v10}, Landroid/support/v4/view/ViewPager;->ˊ(FF)Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, p0

    move-object v1, p0

    float-to-int v3, v10

    float-to-int v4, v9

    float-to-int v5, v12

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->ˊ(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1851
    iput v9, p0, Landroid/support/v4/view/ViewPager;->ء:F

    .line 1852
    iput v12, p0, Landroid/support/v4/view/ViewPager;->ر:F

    .line 1853
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ј:Z

    .line 1854
    const/4 v0, 0x0

    return v0

    .line 1856
    :cond_6
    iget v0, p0, Landroid/support/v4/view/ViewPager;->כ:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_8

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v11

    cmpl-float v0, v0, v13

    if-lez v0, :cond_8

    .line 1858
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->х:Z

    .line 1859
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->ʽ(Z)V

    .line 1860
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->ـ(I)V

    .line 1861
    const/4 v0, 0x0

    cmpl-float v0, v10, v0

    if-lez v0, :cond_7

    iget v0, p0, Landroid/support/v4/view/ViewPager;->ڎ:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->כ:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_0

    :cond_7
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ڎ:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->כ:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_0
    iput v0, p0, Landroid/support/v4/view/ViewPager;->ء:F

    .line 1863
    iput v12, p0, Landroid/support/v4/view/ViewPager;->ر:F

    .line 1864
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_1

    .line 1865
    :cond_8
    iget v0, p0, Landroid/support/v4/view/ViewPager;->כ:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_9

    .line 1871
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ј:Z

    .line 1873
    :cond_9
    :goto_1
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->х:Z

    if-eqz v0, :cond_b

    .line 1875
    invoke-direct {p0, v9}, Landroid/support/v4/view/ViewPager;->ˋ(F)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1876
    invoke-static {p0}, Lo/ﺑ;->ʿ(Landroid/view/View;)V

    goto/16 :goto_2

    .line 1887
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ڎ:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ء:F

    .line 1888
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ڏ:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ر:F

    .line 1889
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ઽ:I

    .line 1890
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ј:Z

    .line 1892
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ǀ:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1893
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ℴ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ǀ:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->ǀ:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->ᓵ:I

    if-le v0, v1, :cond_a

    .line 1896
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ǀ:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1897
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->с:Z

    .line 1898
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->ᴸ()V

    .line 1899
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->х:Z

    .line 1900
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->ʽ(Z)V

    .line 1901
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->ـ(I)V

    goto :goto_2

    .line 1903
    :cond_a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->ʻ(Z)V

    .line 1904
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->х:Z

    .line 1910
    goto :goto_2

    .line 1914
    :sswitch_2
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->ˏ(Landroid/view/MotionEvent;)V

    .line 1918
    :cond_b
    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᓴ:Landroid/view/VelocityTracker;

    if-nez v0, :cond_c

    .line 1919
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ᓴ:Landroid/view/VelocityTracker;

    .line 1921
    :cond_c
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᓴ:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1927
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->х:Z

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 24

    .line 1502
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v5

    .line 1503
    sub-int v6, p4, p2

    .line 1504
    sub-int v7, p5, p3

    .line 1505
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v8

    .line 1506
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v9

    .line 1507
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v10

    .line 1508
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v11

    .line 1509
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v12

    .line 1511
    const/4 v13, 0x0

    .line 1515
    const/4 v14, 0x0

    :goto_0
    if-ge v14, v5, :cond_1

    .line 1516
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1517
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1518
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˋ;

    move-object/from16 v16, v0

    .line 1519
    const/16 v17, 0x0

    .line 1520
    const/16 v18, 0x0

    .line 1521
    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$ˋ;->ﭝ:Z

    if-eqz v0, :cond_0

    .line 1522
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/view/ViewPager$ˋ;->gravity:I

    and-int/lit8 v19, v0, 0x7

    .line 1523
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/view/ViewPager$ˋ;->gravity:I

    and-int/lit8 v20, v0, 0x70

    .line 1524
    packed-switch v19, :pswitch_data_0

    nop

    .line 1526
    :pswitch_0
    move/from16 v17, v8

    .line 1527
    goto :goto_1

    .line 1529
    :pswitch_1
    move/from16 v17, v8

    .line 1530
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v8, v0

    .line 1531
    goto :goto_1

    .line 1533
    :pswitch_2
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v6, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1535
    goto :goto_1

    .line 1537
    :pswitch_3
    sub-int v0, v6, v10

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v17, v0, v1

    .line 1538
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v10, v0

    .line 1541
    :goto_1
    sparse-switch v20, :sswitch_data_0

    nop

    .line 1543
    move/from16 v18, v9

    .line 1544
    goto :goto_2

    .line 1546
    :sswitch_0
    move/from16 v18, v9

    .line 1547
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v9, v0

    .line 1548
    goto :goto_2

    .line 1550
    :sswitch_1
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, v7, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 1552
    goto :goto_2

    .line 1554
    :sswitch_2
    sub-int v0, v7, v11

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v18, v0, v1

    .line 1555
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v11, v0

    .line 1558
    :goto_2
    add-int v17, v17, v12

    .line 1559
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v0, v0, v17

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int v1, v1, v18

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v15, v2, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1562
    add-int/lit8 v13, v13, 0x1

    .line 1515
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 1567
    :cond_1
    sub-int v0, v6, v8

    sub-int v14, v0, v10

    .line 1569
    const/4 v15, 0x0

    :goto_3
    if-ge v15, v5, :cond_4

    .line 1570
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1571
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 1572
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˋ;

    move-object/from16 v17, v0

    .line 1574
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$ˋ;->ﭝ:Z

    if-nez v0, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->ᴵ(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ˊ;

    move-result-object v18

    if-eqz v18, :cond_3

    .line 1575
    int-to-float v0, v14

    move-object/from16 v1, v18

    iget v1, v1, Landroid/support/v4/view/ViewPager$ˊ;->דּ:F

    mul-float/2addr v0, v1

    float-to-int v1, v0

    move/from16 v19, v1

    .line 1576
    add-int v20, v8, v19

    .line 1577
    move/from16 v21, v9

    .line 1578
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$ˋ;->ﭥ:Z

    if-eqz v0, :cond_2

    .line 1581
    const/4 v0, 0x0

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager$ˋ;->ﭥ:Z

    .line 1582
    int-to-float v0, v14

    move-object/from16 v1, v17

    iget v1, v1, Landroid/support/v4/view/ViewPager$ˋ;->ﬧ:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    .line 1585
    sub-int v0, v7, v9

    sub-int/2addr v0, v11

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    .line 1588
    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1593
    :cond_2
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v0, v0, v20

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int v1, v1, v21

    move-object/from16 v2, v16

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1569
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 1599
    :cond_4
    move-object/from16 v0, p0

    iput v9, v0, Landroid/support/v4/view/ViewPager;->ɼ:I

    .line 1600
    sub-int v0, v7, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->ʱ:I

    .line 1601
    move-object/from16 v0, p0

    iput v13, v0, Landroid/support/v4/view/ViewPager;->ᵈ:I

    .line 1603
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->ᴐ:Z

    if-eqz v0, :cond_5

    .line 1604
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/support/v4/view/ViewPager;->ˊ(IZIZ)V

    .line 1606
    :cond_5
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->ᴐ:Z

    .line 1607
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 21

    .line 1373
    const/4 v0, 0x0

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v0

    const/4 v1, 0x0

    move/from16 v2, p2

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v1

    move-object/from16 v2, p0

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/view/ViewPager;->setMeasuredDimension(II)V

    .line 1376
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v3

    .line 1377
    div-int/lit8 v4, v3, 0xa

    .line 1378
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->ґ:I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->ך:I

    .line 1381
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, v3, v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int v5, v0, v1

    .line 1382
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v1

    sub-int v6, v0, v1

    .line 1389
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v7

    .line 1390
    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_a

    .line 1391
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1392
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_9

    .line 1393
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˋ;

    move-object v10, v0

    .line 1394
    if-eqz v10, :cond_9

    iget-boolean v0, v10, Landroid/support/v4/view/ViewPager$ˋ;->ﭝ:Z

    if-eqz v0, :cond_9

    .line 1395
    iget v0, v10, Landroid/support/v4/view/ViewPager$ˋ;->gravity:I

    and-int/lit8 v11, v0, 0x7

    .line 1396
    iget v0, v10, Landroid/support/v4/view/ViewPager$ˋ;->gravity:I

    and-int/lit8 v12, v0, 0x70

    .line 1397
    const/high16 v13, -0x80000000

    .line 1398
    const/high16 v14, -0x80000000

    .line 1399
    const/16 v0, 0x30

    if-eq v12, v0, :cond_0

    const/16 v0, 0x50

    if-ne v12, v0, :cond_1

    :cond_0
    const/4 v15, 0x1

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    .line 1400
    :goto_1
    const/4 v0, 0x3

    if-eq v11, v0, :cond_2

    const/4 v0, 0x5

    if-ne v11, v0, :cond_3

    :cond_2
    const/16 v16, 0x1

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    .line 1402
    :goto_2
    if-eqz v15, :cond_4

    .line 1403
    const/high16 v13, 0x40000000    # 2.0f

    goto :goto_3

    .line 1404
    :cond_4
    if-eqz v16, :cond_5

    .line 1405
    const/high16 v14, 0x40000000    # 2.0f

    .line 1408
    :cond_5
    :goto_3
    move/from16 v17, v5

    .line 1409
    move/from16 v18, v6

    .line 1410
    iget v0, v10, Landroid/support/v4/view/ViewPager$ˋ;->width:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_6

    .line 1411
    const/high16 v13, 0x40000000    # 2.0f

    .line 1412
    iget v0, v10, Landroid/support/v4/view/ViewPager$ˋ;->width:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 1413
    iget v0, v10, Landroid/support/v4/view/ViewPager$ˋ;->width:I

    move/from16 v17, v0

    .line 1416
    :cond_6
    iget v0, v10, Landroid/support/v4/view/ViewPager$ˋ;->height:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_7

    .line 1417
    const/high16 v14, 0x40000000    # 2.0f

    .line 1418
    iget v0, v10, Landroid/support/v4/view/ViewPager$ˋ;->height:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 1419
    iget v0, v10, Landroid/support/v4/view/ViewPager$ˋ;->height:I

    move/from16 v18, v0

    .line 1422
    :cond_7
    move/from16 v0, v17

    invoke-static {v0, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    .line 1423
    move/from16 v0, v18

    invoke-static {v0, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1424
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1426
    if-eqz v15, :cond_8

    .line 1427
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v6, v0

    goto :goto_4

    .line 1428
    :cond_8
    if-eqz v16, :cond_9

    .line 1429
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v5, v0

    .line 1390
    :cond_9
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1435
    :cond_a
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->ϲ:I

    .line 1436
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->ϳ:I

    .line 1439
    const/4 v0, 0x1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    .line 1440
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->ᴸ()V

    .line 1441
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    .line 1444
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v7

    .line 1445
    const/4 v8, 0x0

    :goto_5
    if-ge v8, v7, :cond_d

    .line 1446
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1447
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_c

    .line 1451
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˋ;

    move-object v10, v0

    .line 1452
    if-eqz v10, :cond_b

    iget-boolean v0, v10, Landroid/support/v4/view/ViewPager$ˋ;->ﭝ:Z

    if-nez v0, :cond_c

    .line 1453
    :cond_b
    int-to-float v0, v5

    iget v1, v10, Landroid/support/v4/view/ViewPager$ˋ;->ﬧ:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1455
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->ϳ:I

    invoke-virtual {v9, v11, v0}, Landroid/view/View;->measure(II)V

    .line 1445
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1459
    :cond_d
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9

    .line 2700
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v5

    .line 2701
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 2702
    const/4 v2, 0x0

    .line 2703
    const/4 v3, 0x1

    .line 2704
    move v4, v5

    goto :goto_0

    .line 2706
    :cond_0
    add-int/lit8 v2, v5, -0x1

    .line 2707
    const/4 v3, -0x1

    .line 2708
    const/4 v4, -0x1

    .line 2710
    :goto_0
    move v6, v2

    :goto_1
    if-eq v6, v4, :cond_2

    .line 2711
    invoke-virtual {p0, v6}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2712
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2713
    invoke-virtual {p0, v7}, Landroid/support/v4/view/ViewPager;->ᴵ(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ˊ;

    move-result-object v8

    .line 2714
    if-eqz v8, :cond_1

    iget v0, v8, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    if-ne v0, v1, :cond_1

    .line 2715
    invoke-virtual {v7, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2716
    const/4 v0, 0x1

    return v0

    .line 2710
    :cond_1
    add-int/2addr v6, v3

    goto :goto_1

    .line 2721
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .line 1276
    instance-of v0, p1, Landroid/support/v4/view/ViewPager$SavedState;

    if-nez v0, :cond_0

    .line 1277
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1278
    return-void

    .line 1281
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/ViewPager$SavedState;

    move-object v3, v0

    .line 1282
    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1284
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    if-eqz v0, :cond_1

    .line 1285
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    iget-object v1, v3, Landroid/support/v4/view/ViewPager$SavedState;->ﹱ:Landroid/os/Parcelable;

    iget-object v2, v3, Landroid/support/v4/view/ViewPager$SavedState;->ﺀ:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Lo/ﹲ;->ˊ(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1286
    iget v0, v3, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/view/ViewPager;->ˊ(IZZ)V

    goto :goto_0

    .line 1288
    :cond_1
    iget v0, v3, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ﻟ:I

    .line 1289
    iget-object v0, v3, Landroid/support/v4/view/ViewPager$SavedState;->ﹱ:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ﾉ:Landroid/os/Parcelable;

    .line 1290
    iget-object v0, v3, Landroid/support/v4/view/ViewPager$SavedState;->ﺀ:Ljava/lang/ClassLoader;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ľ:Ljava/lang/ClassLoader;

    .line 1292
    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1265
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1266
    new-instance v2, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-direct {v2, v1}, Landroid/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1267
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    iput v0, v2, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    .line 1268
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    if-eqz v0, :cond_0

    .line 1269
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    invoke-virtual {v0}, Lo/ﹲ;->ᐡ()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v2, Landroid/support/v4/view/ViewPager$SavedState;->ﹱ:Landroid/os/Parcelable;

    .line 1271
    :cond_0
    return-object v2
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 1463
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1466
    if-eq p1, p3, :cond_0

    .line 1467
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ɟ:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->ɟ:I

    invoke-direct {p0, p1, p3, v0, v1}, Landroid/support/v4/view/ViewPager;->ˊ(IIII)V

    .line 1469
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    .line 1932
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->ᔿ:Z

    if-eqz v0, :cond_0

    .line 1936
    const/4 v0, 0x1

    return v0

    .line 1939
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1942
    const/4 v0, 0x0

    return v0

    .line 1945
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    if-eqz v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    invoke-virtual {v0}, Lo/ﹲ;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 1947
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 1950
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ᓴ:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    .line 1951
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v4/view/ViewPager;->ᓴ:Landroid/view/VelocityTracker;

    .line 1953
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ᓴ:Landroid/view/VelocityTracker;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1955
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 1956
    const/4 v6, 0x0

    .line 1958
    and-int/lit16 v0, v5, 0xff

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 1960
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ǀ:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1961
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->с:Z

    .line 1962
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->ᴸ()V

    .line 1965
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->ڎ:F

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->ء:F

    .line 1966
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->ڏ:F

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->ر:F

    .line 1967
    move-object/from16 v0, p1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;I)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->ઽ:I

    .line 1968
    goto/16 :goto_1

    .line 1971
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->х:Z

    if-nez v0, :cond_6

    .line 1972
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->ઽ:I

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lo/ᵧ;->ˊ(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 1973
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lo/ᵧ;->ˎ(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 1974
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->ء:F

    sub-float v0, v8, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 1975
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lo/ᵧ;->ˏ(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 1976
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->ر:F

    sub-float v0, v10, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1978
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->כ:I

    int-to-float v0, v0

    cmpl-float v0, v9, v0

    if-lez v0, :cond_6

    cmpl-float v0, v9, v11

    if-lez v0, :cond_6

    .line 1980
    const/4 v0, 0x1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->х:Z

    .line 1981
    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->ʽ(Z)V

    .line 1982
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->ڎ:F

    sub-float v0, v8, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->ڎ:F

    move-object/from16 v1, p0

    iget v1, v1, Landroid/support/v4/view/ViewPager;->כ:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->ڎ:F

    move-object/from16 v1, p0

    iget v1, v1, Landroid/support/v4/view/ViewPager;->כ:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_0
    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->ء:F

    .line 1984
    move-object/from16 v0, p0

    iput v10, v0, Landroid/support/v4/view/ViewPager;->ر:F

    .line 1985
    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->ـ(I)V

    .line 1986
    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1989
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    .line 1990
    if-eqz v12, :cond_6

    .line 1991
    const/4 v0, 0x1

    invoke-interface {v12, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1996
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->х:Z

    if-eqz v0, :cond_7

    .line 1998
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->ઽ:I

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lo/ᵧ;->ˊ(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 2000
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lo/ᵧ;->ˎ(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 2001
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/support/v4/view/ViewPager;->ˋ(F)Z

    move-result v0

    or-int/lit8 v6, v0, 0x0

    .line 2002
    goto/16 :goto_1

    .line 2005
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->х:Z

    if-eqz v0, :cond_7

    .line 2006
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v4/view/ViewPager;->ᓴ:Landroid/view/VelocityTracker;

    .line 2007
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->ᓰ:I

    int-to-float v0, v0

    const/16 v1, 0x3e8

    invoke-virtual {v7, v1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2008
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->ઽ:I

    invoke-static {v7, v0}, Lo/ﹻ;->ˊ(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v8, v0

    .line 2010
    const/4 v0, 0x1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/ViewPager;->с:Z

    .line 2011
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->ᔈ()I

    move-result v9

    .line 2012
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v10

    .line 2013
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->ᵋ()Landroid/support/v4/view/ViewPager$ˊ;

    move-result-object v11

    .line 2014
    iget v12, v11, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    .line 2015
    int-to-float v0, v10

    int-to-float v1, v9

    div-float/2addr v0, v1

    iget v1, v11, Landroid/support/v4/view/ViewPager$ˊ;->דּ:F

    sub-float/2addr v0, v1

    iget v1, v11, Landroid/support/v4/view/ViewPager$ˊ;->ﬧ:F

    div-float v13, v0, v1

    .line 2016
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->ઽ:I

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lo/ᵧ;->ˊ(Landroid/view/MotionEvent;I)I

    move-result v14

    .line 2018
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lo/ᵧ;->ˎ(Landroid/view/MotionEvent;I)F

    move-result v15

    .line 2019
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->ڎ:F

    sub-float v0, v15, v0

    float-to-int v1, v0

    move/from16 v16, v1

    .line 2020
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v12, v13, v8, v1}, Landroid/support/v4/view/ViewPager;->ˊ(IFII)I

    move-result v17

    .line 2022
    move-object/from16 v0, p0

    move/from16 v1, v17

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/support/v4/view/ViewPager;->ˊ(IZZI)V

    .line 2024
    const/4 v0, -0x1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->ઽ:I

    .line 2025
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->ᵗ()V

    .line 2026
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ᕻ:Lo/ܝ;

    invoke-virtual {v0}, Lo/ܝ;->ﯨ()Z

    move-result v0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v4/view/ViewPager;->ᴄ:Lo/ܝ;

    invoke-virtual {v1}, Lo/ܝ;->ﯨ()Z

    move-result v1

    or-int v6, v0, v1

    .line 2027
    goto :goto_1

    .line 2030
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->х:Z

    if-eqz v0, :cond_7

    .line 2031
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    move-object/from16 v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/support/v4/view/ViewPager;->ˊ(IZIZ)V

    .line 2032
    const/4 v0, -0x1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->ઽ:I

    .line 2033
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->ᵗ()V

    .line 2034
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ᕻ:Lo/ܝ;

    invoke-virtual {v0}, Lo/ܝ;->ﯨ()Z

    move-result v0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v4/view/ViewPager;->ᴄ:Lo/ܝ;

    invoke-virtual {v1}, Lo/ܝ;->ﯨ()Z

    move-result v1

    or-int v6, v0, v1

    goto :goto_1

    .line 2038
    :pswitch_4
    invoke-static/range {p1 .. p1}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;)I

    move-result v7

    .line 2039
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lo/ᵧ;->ˎ(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 2040
    move-object/from16 v0, p0

    iput v8, v0, Landroid/support/v4/view/ViewPager;->ء:F

    .line 2041
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;I)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->ઽ:I

    .line 2042
    goto :goto_1

    .line 2045
    :pswitch_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->ˏ(Landroid/view/MotionEvent;)V

    .line 2046
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->ઽ:I

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lo/ᵧ;->ˊ(Landroid/view/MotionEvent;I)I

    move-result v0

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lo/ᵧ;->ˎ(Landroid/view/MotionEvent;I)F

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->ء:F

    .line 2050
    :cond_7
    :goto_1
    :pswitch_6
    if-eqz v6, :cond_8

    .line 2051
    invoke-static/range {p0 .. p0}, Lo/ﺑ;->ʿ(Landroid/view/View;)V

    .line 2053
    :cond_8
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 1322
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 1323
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    .line 1325
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1327
    :goto_0
    return-void
.end method

.method public setAdapter(Lo/ﹲ;)V
    .locals 5

    .line 412
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->ɔ:Landroid/support/v4/view/ViewPager$ʻ;

    invoke-virtual {v0, v1}, Lo/ﹲ;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 414
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    invoke-virtual {v0, p0}, Lo/ﹲ;->ˊ(Landroid/view/ViewGroup;)V

    .line 415
    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 416
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˊ;

    move-object v4, v0

    .line 417
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    iget v1, v4, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    iget-object v2, v4, Landroid/support/v4/view/ViewPager$ˊ;->ⅽ:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2}, Lo/ﹲ;->ˊ(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 415
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 419
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    invoke-virtual {v0, p0}, Lo/ﹲ;->ˋ(Landroid/view/ViewGroup;)V

    .line 420
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 421
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->ᔇ()V

    .line 422
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    .line 423
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 426
    :cond_1
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    .line 427
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    .line 428
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->氵:I

    .line 430
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    if-eqz v0, :cond_5

    .line 431
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ɔ:Landroid/support/v4/view/ViewPager$ʻ;

    if-nez v0, :cond_2

    .line 432
    new-instance v0, Landroid/support/v4/view/ViewPager$ʻ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v4/view/ViewPager$ʻ;-><init>(Landroid/support/v4/view/ViewPager;Lo/ᔾ;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ɔ:Landroid/support/v4/view/ViewPager$ʻ;

    .line 434
    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->ɔ:Landroid/support/v4/view/ViewPager$ʻ;

    invoke-virtual {v0, v1}, Lo/ﹲ;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 435
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->с:Z

    .line 436
    iget-boolean v4, p0, Landroid/support/v4/view/ViewPager;->ᴐ:Z

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ᴐ:Z

    .line 438
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    invoke-virtual {v0}, Lo/ﹲ;->getCount()I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->氵:I

    .line 439
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ﻟ:I

    if-ltz v0, :cond_3

    .line 440
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->ﾉ:Landroid/os/Parcelable;

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->ľ:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Lo/ﹲ;->ˊ(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 441
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ﻟ:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/view/ViewPager;->ˊ(IZZ)V

    .line 442
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ﻟ:I

    .line 443
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ﾉ:Landroid/os/Parcelable;

    .line 444
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ľ:Ljava/lang/ClassLoader;

    goto :goto_1

    .line 445
    :cond_3
    if-nez v4, :cond_4

    .line 446
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->ᴸ()V

    goto :goto_1

    .line 448
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 452
    :cond_5
    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Ḯ:Landroid/support/v4/view/ViewPager$ˏ;

    if-eqz v0, :cond_6

    if-eq v3, p1, :cond_6

    .line 453
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Ḯ:Landroid/support/v4/view/ViewPager$ˏ;

    invoke-interface {v0, v3, p1}, Landroid/support/v4/view/ViewPager$ˏ;->ˊ(Lo/ﹲ;Lo/ﹲ;)V

    .line 455
    :cond_6
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->с:Z

    .line 494
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ᴐ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/view/ViewPager;->ˊ(IZZ)V

    .line 495
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    .line 504
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->с:Z

    .line 505
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->ˊ(IZZ)V

    .line 506
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 3

    .line 692
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 693
    const-string v0, "ViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small; defaulting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/4 p1, 0x1

    .line 697
    :cond_0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->т:I

    if-eq p1, v0, :cond_1

    .line 698
    iput p1, p0, Landroid/support/v4/view/ViewPager;->т:I

    .line 699
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->ᴸ()V

    .line 701
    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$aux;)V
    .locals 0

    .line 596
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->ᵑ:Landroid/support/v4/view/ViewPager$aux;

    .line 597
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .line 712
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ɟ:I

    .line 713
    iput p1, p0, Landroid/support/v4/view/ViewPager;->ɟ:I

    .line 715
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    .line 716
    invoke-direct {p0, v1, v1, p1, v0}, Landroid/support/v4/view/ViewPager;->ˊ(IIII)V

    .line 718
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 719
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    .line 748
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 749
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 736
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->ɺ:Landroid/graphics/drawable/Drawable;

    .line 737
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->refreshDrawableState()V

    .line 738
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 739
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    .line 740
    return-void
.end method

.method public setPageTransformer(ZLandroid/support/v4/view/ViewPager$ᐝ;)V
    .locals 4

    .line 612
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    .line 613
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 614
    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Ἰ:Landroid/support/v4/view/ViewPager$ᐝ;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eq v2, v0, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 615
    :goto_2
    iput-object p2, p0, Landroid/support/v4/view/ViewPager;->Ἰ:Landroid/support/v4/view/ViewPager$ᐝ;

    .line 616
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->ᐝ(Z)V

    .line 617
    if-eqz v2, :cond_4

    .line 618
    if-eqz p1, :cond_3

    const/4 v0, 0x2

    goto :goto_3

    :cond_3
    const/4 v0, 0x1

    :goto_3
    iput v0, p0, Landroid/support/v4/view/ViewPager;->Ῐ:I

    goto :goto_4

    .line 620
    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->Ῐ:I

    .line 622
    :goto_4
    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->ᴸ()V

    .line 624
    :cond_5
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 753
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ɺ:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method ı()Z
    .locals 3

    .line 2621
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    invoke-virtual {v1}, Lo/ﹲ;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 2622
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 2623
    const/4 v0, 0x1

    return v0

    .line 2625
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method ˊ(F)F
    .locals 4

    .line 770
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 771
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 772
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected ˊ(IFI)V
    .locals 15

    .line 1676
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ᵈ:I

    if-lez v0, :cond_2

    .line 1677
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v4

    .line 1678
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v5

    .line 1679
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v6

    .line 1680
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v7

    .line 1681
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v8

    .line 1682
    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_2

    .line 1683
    invoke-virtual {p0, v9}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1684
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˋ;

    move-object v11, v0

    .line 1685
    iget-boolean v0, v11, Landroid/support/v4/view/ViewPager$ˋ;->ﭝ:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1687
    :cond_0
    iget v0, v11, Landroid/support/v4/view/ViewPager$ˋ;->gravity:I

    and-int/lit8 v12, v0, 0x7

    .line 1688
    const/4 v13, 0x0

    .line 1689
    packed-switch v12, :pswitch_data_0

    nop

    .line 1691
    :pswitch_0
    move v13, v5

    .line 1692
    goto :goto_1

    .line 1694
    :pswitch_1
    move v13, v5

    .line 1695
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v5, v0

    .line 1696
    goto :goto_1

    .line 1698
    :pswitch_2
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v7, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1700
    goto :goto_1

    .line 1702
    :pswitch_3
    sub-int v0, v7, v6

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v13, v0, v1

    .line 1703
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v6, v0

    .line 1706
    :goto_1
    add-int/2addr v13, v4

    .line 1708
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v14, v13, v0

    .line 1709
    if-eqz v14, :cond_1

    .line 1710
    invoke-virtual {v10, v14}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1682
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 1715
    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᵑ:Landroid/support/v4/view/ViewPager$aux;

    if-eqz v0, :cond_3

    .line 1716
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᵑ:Landroid/support/v4/view/ViewPager$aux;

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Landroid/support/v4/view/ViewPager$aux;->ˊ(IFI)V

    .line 1718
    :cond_3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᵨ:Landroid/support/v4/view/ViewPager$aux;

    if-eqz v0, :cond_4

    .line 1719
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᵨ:Landroid/support/v4/view/ViewPager$aux;

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Landroid/support/v4/view/ViewPager$aux;->ˊ(IFI)V

    .line 1722
    :cond_4
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Ἰ:Landroid/support/v4/view/ViewPager$ᐝ;

    if-eqz v0, :cond_6

    .line 1723
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v4

    .line 1724
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v5

    .line 1725
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_6

    .line 1726
    invoke-virtual {p0, v6}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1727
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˋ;

    move-object v8, v0

    .line 1729
    iget-boolean v0, v8, Landroid/support/v4/view/ViewPager$ˋ;->ﭝ:Z

    if-eqz v0, :cond_5

    goto :goto_4

    .line 1731
    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, v4

    int-to-float v0, v0

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->ᔈ()I

    move-result v1

    int-to-float v1, v1

    div-float v9, v0, v1

    .line 1732
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Ἰ:Landroid/support/v4/view/ViewPager$ᐝ;

    invoke-interface {v0, v7, v9}, Landroid/support/v4/view/ViewPager$ᐝ;->ʼ(Landroid/view/View;F)V

    .line 1725
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1736
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ᴺ:Z

    .line 1737
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method ˊ(III)V
    .locals 17

    .line 793
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 795
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 796
    return-void

    .line 798
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v6

    .line 799
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v7

    .line 800
    sub-int v8, p1, v6

    .line 801
    sub-int v9, p2, v7

    .line 802
    if-nez v8, :cond_1

    if-nez v9, :cond_1

    .line 803
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->ʻ(Z)V

    .line 804
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->ᴸ()V

    .line 805
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->ـ(I)V

    .line 806
    return-void

    .line 809
    :cond_1
    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 810
    move-object/from16 v0, p0

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->ـ(I)V

    .line 812
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->ᔈ()I

    move-result v10

    .line 813
    div-int/lit8 v11, v10, 0x2

    .line 814
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    int-to-float v1, v10

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 815
    int-to-float v0, v11

    int-to-float v1, v11

    move-object/from16 v2, p0

    invoke-virtual {v2, v12}, Landroid/support/v4/view/ViewPager;->ˊ(F)F

    move-result v2

    mul-float/2addr v1, v2

    add-float v13, v0, v1

    .line 818
    const/4 v14, 0x0

    .line 819
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 820
    if-lez p3, :cond_2

    .line 821
    move/from16 v0, p3

    int-to-float v0, v0

    div-float v0, v13, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v14, v0, 0x4

    goto :goto_0

    .line 823
    :cond_2
    int-to-float v0, v10

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    move-object/from16 v2, p0

    iget v2, v2, Landroid/support/v4/view/ViewPager;->ﺜ:I

    invoke-virtual {v1, v2}, Lo/ﹲ;->ˑ(I)F

    move-result v1

    mul-float v15, v0, v1

    .line 824
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    move-object/from16 v1, p0

    iget v1, v1, Landroid/support/v4/view/ViewPager;->ɟ:I

    int-to-float v1, v1

    add-float/2addr v1, v15

    div-float v16, v0, v1

    .line 825
    const/high16 v0, 0x3f800000    # 1.0f

    add-float v0, v0, v16

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v14, v0

    .line 827
    :goto_0
    const/16 v0, 0x258

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ǀ:Landroid/widget/Scroller;

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 830
    invoke-static/range {p0 .. p0}, Lo/ﺑ;->ʿ(Landroid/view/View;)V

    .line 831
    return-void
.end method

.method ˊ(IZZ)V
    .locals 1

    .line 513
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/view/ViewPager;->ˊ(IZZI)V

    .line 514
    return-void
.end method

.method ˊ(IZZI)V
    .locals 4

    .line 517
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    invoke-virtual {v0}, Lo/ﹲ;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 518
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 519
    return-void

    .line 521
    :cond_1
    if-nez p3, :cond_2

    iget v0, p0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 522
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 523
    return-void

    .line 526
    :cond_2
    if-gez p1, :cond_3

    .line 527
    const/4 p1, 0x0

    goto :goto_0

    .line 528
    :cond_3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    invoke-virtual {v0}, Lo/ﹲ;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_4

    .line 529
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    invoke-virtual {v0}, Lo/ﹲ;->getCount()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    .line 531
    :cond_4
    :goto_0
    iget v2, p0, Landroid/support/v4/view/ViewPager;->т:I

    .line 532
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    add-int/2addr v0, v2

    if-gt p1, v0, :cond_5

    iget v0, p0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    sub-int/2addr v0, v2

    if-ge p1, v0, :cond_6

    .line 536
    :cond_5
    const/4 v3, 0x0

    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 537
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˊ;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager$ˊ;->ײַ:Z

    .line 536
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 540
    :cond_6
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    if-eq v0, p1, :cond_7

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    .line 542
    :goto_2
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ᴐ:Z

    if-eqz v0, :cond_a

    .line 545
    iput p1, p0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    .line 546
    if-eqz v3, :cond_8

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᵑ:Landroid/support/v4/view/ViewPager$aux;

    if-eqz v0, :cond_8

    .line 547
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᵑ:Landroid/support/v4/view/ViewPager$aux;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$aux;->ﾞ(I)V

    .line 549
    :cond_8
    if-eqz v3, :cond_9

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᵨ:Landroid/support/v4/view/ViewPager$aux;

    if-eqz v0, :cond_9

    .line 550
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ᵨ:Landroid/support/v4/view/ViewPager$aux;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$aux;->ﾞ(I)V

    .line 552
    :cond_9
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    goto :goto_3

    .line 554
    :cond_a
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->ᐧ(I)V

    .line 555
    invoke-direct {p0, p1, p2, p4, v3}, Landroid/support/v4/view/ViewPager;->ˊ(IZIZ)V

    .line 557
    :goto_3
    return-void
.end method

.method protected ˊ(Landroid/view/View;ZIII)Z
    .locals 12

    .line 2458
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 2459
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v6, v0

    .line 2460
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v7

    .line 2461
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v8

    .line 2462
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    .line 2464
    add-int/lit8 v10, v9, -0x1

    :goto_0
    if-ltz v10, :cond_1

    .line 2467
    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 2468
    add-int v0, p4, v7

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt v0, v1, :cond_0

    add-int v0, p4, v7

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int v0, p5, v8

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt v0, v1, :cond_0

    add-int v0, p5, v8

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge v0, v1, :cond_0

    move-object v0, p0

    move-object v1, v11

    move v3, p3

    add-int v2, p4, v7

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v4, v2, v4

    add-int v2, p5, v8

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v5, v2, v5

    const/4 v2, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->ˊ(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2472
    const/4 v0, 0x1

    return v0

    .line 2464
    :cond_0
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 2477
    :cond_1
    if-eqz p2, :cond_2

    neg-int v0, p3

    invoke-static {p1, v0}, Lo/ﺑ;->ˋ(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method ᐝ(II)Landroid/support/v4/view/ViewPager$ˊ;
    .locals 2

    .line 834
    new-instance v1, Landroid/support/v4/view/ViewPager$ˊ;

    invoke-direct {v1}, Landroid/support/v4/view/ViewPager$ˊ;-><init>()V

    .line 835
    iput p1, v1, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    .line 836
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    invoke-virtual {v0, p0, p1}, Lo/ﹲ;->ˊ(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Landroid/support/v4/view/ViewPager$ˊ;->ⅽ:Ljava/lang/Object;

    .line 837
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    invoke-virtual {v0, p1}, Lo/ﹲ;->ˑ(I)F

    move-result v0

    iput v0, v1, Landroid/support/v4/view/ViewPager$ˊ;->ﬧ:F

    .line 838
    if-ltz p2, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 839
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 841
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 843
    :goto_0
    return-object v1
.end method

.method ᐝ(Z)V
    .locals 6

    .line 627
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    .line 628
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Ἱ:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 630
    :try_start_0
    const-class v0, Landroid/view/ViewGroup;

    const-string v1, "setChildrenDrawingOrderEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->Ἱ:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    goto :goto_0

    .line 632
    :catch_0
    move-exception v5

    .line 633
    const-string v0, "ViewPager"

    const-string v1, "Can\'t find setChildrenDrawingOrderEnabled"

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 637
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Ἱ:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 640
    goto :goto_1

    .line 638
    :catch_1
    move-exception v5

    .line 639
    const-string v0, "ViewPager"

    const-string v1, "Error changing children drawing order"

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 642
    :cond_1
    :goto_1
    return-void
.end method

.method ᐧ(I)V
    .locals 20

    .line 922
    const/4 v4, 0x0

    .line 923
    const/4 v5, 0x2

    .line 924
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    move/from16 v1, p1

    if-eq v0, v1, :cond_1

    .line 925
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    move/from16 v1, p1

    if-ge v0, v1, :cond_0

    const/16 v5, 0x42

    goto :goto_0

    :cond_0
    const/16 v5, 0x11

    .line 926
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->ᐨ(I)Landroid/support/v4/view/ViewPager$ˊ;

    move-result-object v4

    .line 927
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->ﺜ:I

    .line 930
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    if-nez v0, :cond_2

    .line 931
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->ᵀ()V

    .line 932
    return-void

    .line 939
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager;->с:Z

    if-eqz v0, :cond_3

    .line 941
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->ᵀ()V

    .line 942
    return-void

    .line 948
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_4

    .line 949
    return-void

    .line 952
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lo/ﹲ;->ˊ(Landroid/view/ViewGroup;)V

    .line 954
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/view/ViewPager;->т:I

    .line 955
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    sub-int/2addr v0, v6

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    invoke-virtual {v0}, Lo/ﹲ;->getCount()I

    move-result v8

    .line 957
    add-int/lit8 v0, v8, -0x1

    move-object/from16 v1, p0

    iget v1, v1, Landroid/support/v4/view/ViewPager;->ﺜ:I

    add-int/2addr v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 959
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->氵:I

    if-eq v8, v0, :cond_5

    .line 962
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 965
    goto :goto_1

    .line 963
    :catch_0
    move-exception v11

    .line 964
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    .line 966
    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p0

    iget v2, v2, Landroid/support/v4/view/ViewPager;->氵:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Pager id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Pager class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Problematic adapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p0

    iget-object v2, v2, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 975
    :cond_5
    const/4 v10, -0x1

    .line 976
    const/4 v11, 0x0

    .line 977
    const/4 v10, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_7

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˊ;

    move-object v12, v0

    .line 979
    iget v0, v12, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    move-object/from16 v1, p0

    iget v1, v1, Landroid/support/v4/view/ViewPager;->ﺜ:I

    if-lt v0, v1, :cond_6

    .line 980
    iget v0, v12, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    move-object/from16 v1, p0

    iget v1, v1, Landroid/support/v4/view/ViewPager;->ﺜ:I

    if-ne v0, v1, :cond_7

    move-object v11, v12

    goto :goto_3

    .line 977
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 985
    :cond_7
    :goto_3
    if-nez v11, :cond_8

    if-lez v8, :cond_8

    .line 986
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    move-object/from16 v1, p0

    invoke-virtual {v1, v0, v10}, Landroid/support/v4/view/ViewPager;->ᐝ(II)Landroid/support/v4/view/ViewPager$ˊ;

    move-result-object v11

    .line 992
    :cond_8
    if-eqz v11, :cond_1d

    .line 993
    const/4 v12, 0x0

    .line 994
    add-int/lit8 v13, v10, -0x1

    .line 995
    if-ltz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˊ;

    move-object v14, v0

    goto :goto_4

    :cond_9
    const/4 v14, 0x0

    .line 996
    :goto_4
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->ᔈ()I

    move-result v15

    .line 997
    if-gtz v15, :cond_a

    const/16 v16, 0x0

    goto :goto_5

    :cond_a
    iget v0, v11, Landroid/support/v4/view/ViewPager$ˊ;->ﬧ:F

    const/high16 v1, 0x40000000    # 2.0f

    sub-float v0, v1, v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v15

    div-float/2addr v1, v2

    add-float v16, v0, v1

    .line 999
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    add-int/lit8 v17, v0, -0x1

    :goto_6
    if-ltz v17, :cond_12

    .line 1000
    cmpl-float v0, v12, v16

    if-ltz v0, :cond_d

    move/from16 v0, v17

    if-ge v0, v7, :cond_d

    .line 1001
    if-nez v14, :cond_b

    .line 1002
    goto/16 :goto_a

    .line 1004
    :cond_b
    iget v0, v14, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    move/from16 v1, v17

    if-ne v1, v0, :cond_11

    iget-boolean v0, v14, Landroid/support/v4/view/ViewPager$ˊ;->ײַ:Z

    if-nez v0, :cond_11

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    iget-object v1, v14, Landroid/support/v4/view/ViewPager$ˊ;->ⅽ:Ljava/lang/Object;

    move-object/from16 v2, p0

    move/from16 v3, v17

    invoke-virtual {v0, v2, v3, v1}, Lo/ﹲ;->ˊ(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1011
    add-int/lit8 v13, v13, -0x1

    .line 1012
    add-int/lit8 v10, v10, -0x1

    .line 1013
    if-ltz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˊ;

    move-object v14, v0

    goto :goto_7

    :cond_c
    const/4 v14, 0x0

    :goto_7
    goto :goto_9

    .line 1015
    :cond_d
    if-eqz v14, :cond_f

    iget v0, v14, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    move/from16 v1, v17

    if-ne v1, v0, :cond_f

    .line 1016
    iget v0, v14, Landroid/support/v4/view/ViewPager$ˊ;->ﬧ:F

    add-float/2addr v12, v0

    .line 1017
    add-int/lit8 v13, v13, -0x1

    .line 1018
    if-ltz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˊ;

    move-object v14, v0

    goto :goto_8

    :cond_e
    const/4 v14, 0x0

    :goto_8
    goto :goto_9

    .line 1020
    :cond_f
    add-int/lit8 v0, v13, 0x1

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/view/ViewPager;->ᐝ(II)Landroid/support/v4/view/ViewPager$ˊ;

    move-result-object v14

    .line 1021
    iget v0, v14, Landroid/support/v4/view/ViewPager$ˊ;->ﬧ:F

    add-float/2addr v12, v0

    .line 1022
    add-int/lit8 v10, v10, 0x1

    .line 1023
    if-ltz v13, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˊ;

    move-object v14, v0

    goto :goto_9

    :cond_10
    const/4 v14, 0x0

    .line 999
    :cond_11
    :goto_9
    add-int/lit8 v17, v17, -0x1

    goto/16 :goto_6

    .line 1027
    :cond_12
    :goto_a
    iget v0, v11, Landroid/support/v4/view/ViewPager$ˊ;->ﬧ:F

    move/from16 v17, v0

    .line 1028
    add-int/lit8 v13, v10, 0x1

    .line 1029
    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float v0, v17, v0

    if-gez v0, :cond_1c

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˊ;

    move-object v14, v0

    goto :goto_b

    :cond_13
    const/4 v14, 0x0

    .line 1031
    :goto_b
    if-gtz v15, :cond_14

    const/16 v18, 0x0

    goto :goto_c

    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v15

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    add-float v18, v0, v1

    .line 1033
    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    add-int/lit8 v19, v0, 0x1

    :goto_d
    move/from16 v0, v19

    if-ge v0, v8, :cond_1c

    .line 1034
    cmpl-float v0, v17, v18

    if-ltz v0, :cond_17

    move/from16 v0, v19

    if-le v0, v9, :cond_17

    .line 1035
    if-nez v14, :cond_15

    .line 1036
    goto/16 :goto_11

    .line 1038
    :cond_15
    iget v0, v14, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    move/from16 v1, v19

    if-ne v1, v0, :cond_1b

    iget-boolean v0, v14, Landroid/support/v4/view/ViewPager$ˊ;->ײַ:Z

    if-nez v0, :cond_1b

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    iget-object v1, v14, Landroid/support/v4/view/ViewPager$ˊ;->ⅽ:Ljava/lang/Object;

    move-object/from16 v2, p0

    move/from16 v3, v19

    invoke-virtual {v0, v2, v3, v1}, Lo/ﹲ;->ˊ(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˊ;

    move-object v14, v0

    goto :goto_e

    :cond_16
    const/4 v14, 0x0

    :goto_e
    goto :goto_10

    .line 1047
    :cond_17
    if-eqz v14, :cond_19

    iget v0, v14, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    move/from16 v1, v19

    if-ne v1, v0, :cond_19

    .line 1048
    iget v0, v14, Landroid/support/v4/view/ViewPager$ˊ;->ﬧ:F

    add-float v17, v17, v0

    .line 1049
    add-int/lit8 v13, v13, 0x1

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˊ;

    move-object v14, v0

    goto :goto_f

    :cond_18
    const/4 v14, 0x0

    :goto_f
    goto :goto_10

    .line 1052
    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Landroid/support/v4/view/ViewPager;->ᐝ(II)Landroid/support/v4/view/ViewPager$ˊ;

    move-result-object v14

    .line 1053
    add-int/lit8 v13, v13, 0x1

    .line 1054
    iget v0, v14, Landroid/support/v4/view/ViewPager$ˊ;->ﬧ:F

    add-float v17, v17, v0

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˊ;

    move-object v14, v0

    goto :goto_10

    :cond_1a
    const/4 v14, 0x0

    .line 1033
    :cond_1b
    :goto_10
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_d

    .line 1060
    :cond_1c
    :goto_11
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10, v4}, Landroid/support/v4/view/ViewPager;->ˊ(Landroid/support/v4/view/ViewPager$ˊ;ILandroid/support/v4/view/ViewPager$ˊ;)V

    .line 1070
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    move-object/from16 v1, p0

    iget v1, v1, Landroid/support/v4/view/ViewPager;->ﺜ:I

    if-eqz v11, :cond_1e

    iget-object v2, v11, Landroid/support/v4/view/ViewPager$ˊ;->ⅽ:Ljava/lang/Object;

    goto :goto_12

    :cond_1e
    const/4 v2, 0x0

    :goto_12
    move-object/from16 v3, p0

    invoke-virtual {v0, v3, v1, v2}, Lo/ﹲ;->ˋ(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lo/ﹲ;->ˋ(Landroid/view/ViewGroup;)V

    .line 1076
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v12

    .line 1077
    const/4 v13, 0x0

    :goto_13
    if-ge v13, v12, :cond_20

    .line 1078
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1079
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˋ;

    move-object v15, v0

    .line 1080
    iput v13, v15, Landroid/support/v4/view/ViewPager$ˋ;->ﮆ:I

    .line 1081
    iget-boolean v0, v15, Landroid/support/v4/view/ViewPager$ˋ;->ﭝ:Z

    if-nez v0, :cond_1f

    iget v0, v15, Landroid/support/v4/view/ViewPager$ˋ;->ﬧ:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1f

    .line 1083
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v4/view/ViewPager;->ᴵ(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ˊ;

    move-result-object v16

    .line 1084
    if-eqz v16, :cond_1f

    .line 1085
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/view/ViewPager$ˊ;->ﬧ:F

    iput v0, v15, Landroid/support/v4/view/ViewPager$ˋ;->ﬧ:F

    .line 1086
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    iput v0, v15, Landroid/support/v4/view/ViewPager$ˋ;->position:I

    .line 1077
    :cond_1f
    add-int/lit8 v13, v13, 0x1

    goto :goto_13

    .line 1090
    :cond_20
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->ᵀ()V

    .line 1092
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1093
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v13

    .line 1094
    if-eqz v13, :cond_21

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/support/v4/view/ViewPager;->ᵎ(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ˊ;

    move-result-object v14

    goto :goto_14

    :cond_21
    const/4 v14, 0x0

    .line 1095
    :goto_14
    if-eqz v14, :cond_22

    iget v0, v14, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    move-object/from16 v1, p0

    iget v1, v1, Landroid/support/v4/view/ViewPager;->ﺜ:I

    if-eq v0, v1, :cond_24

    .line 1096
    :cond_22
    const/4 v15, 0x0

    :goto_15
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-ge v15, v0, :cond_24

    .line 1097
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1098
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->ᴵ(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ˊ;

    move-result-object v14

    .line 1099
    if-eqz v14, :cond_23

    iget v0, v14, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    move-object/from16 v1, p0

    iget v1, v1, Landroid/support/v4/view/ViewPager;->ﺜ:I

    if-ne v0, v1, :cond_23

    .line 1100
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1101
    goto :goto_16

    .line 1096
    :cond_23
    add-int/lit8 v15, v15, 0x1

    goto :goto_15

    .line 1107
    :cond_24
    :goto_16
    return-void
.end method

.method ᐨ(I)Landroid/support/v4/view/ViewPager$ˊ;
    .locals 3

    .line 1351
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1352
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˊ;

    move-object v2, v0

    .line 1353
    iget v0, v2, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    if-ne v0, p1, :cond_0

    .line 1354
    return-object v2

    .line 1351
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1357
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method ᒽ()V
    .locals 5

    .line 358
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 359
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setDescendantFocusability(I)V

    .line 360
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setFocusable(Z)V

    .line 361
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 362
    new-instance v0, Landroid/widget/Scroller;

    sget-object v1, Landroid/support/v4/view/ViewPager;->ﭙ:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v2, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ǀ:Landroid/widget/Scroller;

    .line 363
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 364
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    .line 366
    invoke-static {v3}, Lo/ᒾ;->ˊ(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->כ:I

    .line 367
    const/high16 v0, 0x43c80000    # 400.0f

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ເ:I

    .line 368
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ᓰ:I

    .line 369
    new-instance v0, Lo/ܝ;

    invoke-direct {v0, v2}, Lo/ܝ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ᕻ:Lo/ܝ;

    .line 370
    new-instance v0, Lo/ܝ;

    invoke-direct {v0, v2}, Lo/ܝ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ᴄ:Lo/ܝ;

    .line 372
    const/high16 v0, 0x41c80000    # 25.0f

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ᓲ:I

    .line 373
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ᓵ:I

    .line 374
    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ґ:I

    .line 376
    new-instance v0, Landroid/support/v4/view/ViewPager$ˎ;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager$ˎ;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-static {p0, v0}, Lo/ﺑ;->ˊ(Landroid/view/View;Lo/ﹾ;)V

    .line 378
    invoke-static {p0}, Lo/ﺑ;->ˈ(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 380
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lo/ﺑ;->ˏ(Landroid/view/View;I)V

    .line 383
    :cond_0
    return-void
.end method

.method public ᗮ()I
    .locals 1

    .line 509
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    return v0
.end method

.method ᴵ(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ˊ;
    .locals 4

    .line 1330
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 1331
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˊ;

    move-object v3, v0

    .line 1332
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    iget-object v1, v3, Landroid/support/v4/view/ViewPager$ˊ;->ⅽ:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lo/ﹲ;->ˋ(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1333
    return-object v3

    .line 1330
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1336
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method ᴶ()V
    .locals 11

    .line 849
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    invoke-virtual {v0}, Lo/ﹲ;->getCount()I

    move-result v3

    .line 850
    iput v3, p0, Landroid/support/v4/view/ViewPager;->氵:I

    .line 851
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->т:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 853
    :goto_0
    iget v5, p0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    .line 855
    const/4 v6, 0x0

    .line 856
    const/4 v7, 0x0

    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_6

    .line 857
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˊ;

    move-object v8, v0

    .line 858
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    iget-object v1, v8, Landroid/support/v4/view/ViewPager$ˊ;->ⅽ:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lo/ﹲ;->ʻ(Ljava/lang/Object;)I

    move-result v9

    .line 860
    const/4 v0, -0x1

    if-ne v9, v0, :cond_1

    .line 861
    goto :goto_2

    .line 864
    :cond_1
    const/4 v0, -0x2

    if-ne v9, v0, :cond_3

    .line 865
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 866
    add-int/lit8 v7, v7, -0x1

    .line 868
    if-nez v6, :cond_2

    .line 869
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    invoke-virtual {v0, p0}, Lo/ﹲ;->ˊ(Landroid/view/ViewGroup;)V

    .line 870
    const/4 v6, 0x1

    .line 873
    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    iget v1, v8, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    iget-object v2, v8, Landroid/support/v4/view/ViewPager$ˊ;->ⅽ:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2}, Lo/ﹲ;->ˊ(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 874
    const/4 v4, 0x1

    .line 876
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    iget v1, v8, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    if-ne v0, v1, :cond_5

    .line 878
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    add-int/lit8 v1, v3, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 879
    const/4 v4, 0x1

    goto :goto_2

    .line 884
    :cond_3
    iget v0, v8, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    if-eq v0, v9, :cond_5

    .line 885
    iget v0, v8, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    if-ne v0, v1, :cond_4

    .line 887
    move v5, v9

    .line 890
    :cond_4
    iput v9, v8, Landroid/support/v4/view/ViewPager$ˊ;->position:I

    .line 891
    const/4 v4, 0x1

    .line 856
    :cond_5
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 895
    :cond_6
    if-eqz v6, :cond_7

    .line 896
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﺋ:Lo/ﹲ;

    invoke-virtual {v0, p0}, Lo/ﹲ;->ˋ(Landroid/view/ViewGroup;)V

    .line 899
    :cond_7
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ﮂ:Ljava/util/ArrayList;

    sget-object v1, Landroid/support/v4/view/ViewPager;->灬:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 901
    if-eqz v4, :cond_a

    .line 903
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v7

    .line 904
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_9

    .line 905
    invoke-virtual {p0, v8}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 906
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$ˋ;

    move-object v10, v0

    .line 907
    iget-boolean v0, v10, Landroid/support/v4/view/ViewPager$ˋ;->ﭝ:Z

    if-nez v0, :cond_8

    .line 908
    const/4 v0, 0x0

    iput v0, v10, Landroid/support/v4/view/ViewPager$ˋ;->ﬧ:F

    .line 904
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 912
    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v5, v0, v1}, Landroid/support/v4/view/ViewPager;->ˊ(IZZ)V

    .line 913
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 915
    :cond_a
    return-void
.end method

.method public ᴸ()V
    .locals 1

    .line 918
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->ᐧ(I)V

    .line 919
    return-void
.end method

.method ᵎ(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ˊ;
    .locals 2

    .line 1341
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p0, :cond_2

    .line 1342
    if-eqz v1, :cond_0

    instance-of v0, v1, Landroid/view/View;

    if-nez v0, :cond_1

    .line 1343
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 1345
    :cond_1
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    .line 1347
    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->ᴵ(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ˊ;

    move-result-object v0

    return-object v0
.end method

.method ﾟ()Z
    .locals 2

    .line 2613
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    if-lez v0, :cond_0

    .line 2614
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ﺜ:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 2615
    const/4 v0, 0x1

    return v0

    .line 2617
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
