.class public Landroid/support/v7/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$ᐝ;,
        Landroid/support/v7/widget/RecyclerView$ˎ;,
        Landroid/support/v7/widget/RecyclerView$ˏ;,
        Landroid/support/v7/widget/RecyclerView$ˉ;,
        Landroid/support/v7/widget/RecyclerView$SavedState;,
        Landroid/support/v7/widget/RecyclerView$ˊ;,
        Landroid/support/v7/widget/RecyclerView$ˈ;,
        Landroid/support/v7/widget/RecyclerView$ˋ;,
        Landroid/support/v7/widget/RecyclerView$ʼ;,
        Landroid/support/v7/widget/RecyclerView$ˑ;,
        Landroid/support/v7/widget/RecyclerView$ʿ;,
        Landroid/support/v7/widget/RecyclerView$ͺ;,
        Landroid/support/v7/widget/RecyclerView$ʽ;,
        Landroid/support/v7/widget/RecyclerView$aux;,
        Landroid/support/v7/widget/RecyclerView$ʻ;,
        Landroid/support/v7/widget/RecyclerView$if;,
        Landroid/support/v7/widget/RecyclerView$ˌ;,
        Landroid/support/v7/widget/RecyclerView$ʾ;,
        Landroid/support/v7/widget/RecyclerView$ι;,
        Landroid/support/v7/widget/RecyclerView$con;,
        Landroid/support/v7/widget/RecyclerView$ˍ;
    }
.end annotation


# static fields
.field private static final F:Z

.field private static final aA:Landroid/view/animation/Interpolator;


# instance fields
.field private final G:Landroid/support/v7/widget/RecyclerView$con;

.field final H:Landroid/support/v7/widget/RecyclerView$ʾ;

.field private I:Landroid/support/v7/widget/RecyclerView$SavedState;

.field public J:Lo/ᴗ;

.field K:Lo/ᵇ;

.field final L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Landroid/view/View;>;"
        }
    .end annotation
.end field

.field private M:Z

.field private final N:Ljava/lang/Runnable;

.field private O:Landroid/support/v7/widget/RecyclerView$if;

.field private P:Landroid/support/v7/widget/RecyclerView$ʻ;

.field private Q:Landroid/support/v7/widget/RecyclerView$ʿ;

.field private final R:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$aux;>;"
        }
    .end annotation
.end field

.field private final S:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$\u02bd;>;"
        }
    .end annotation
.end field

.field private T:Landroid/support/v7/widget/RecyclerView$ʽ;

.field private U:Z

.field private V:Z

.field private W:Z

.field private a_:Z

.field private final aa:Z

.field private final ab:Landroid/view/accessibility/AccessibilityManager;

.field private ac:Z

.field private ad:Z

.field private ae:Lo/ܝ;

.field private af:Lo/ܝ;

.field private ag:Lo/ܝ;

.field private ah:Lo/ܝ;

.field public ai:Landroid/support/v7/widget/RecyclerView$ˎ;

.field private aj:I

.field private ak:I

.field private al:I

.field private am:I

.field private an:I

.field private final ao:I

.field private final ap:I

.field private final aq:Landroid/support/v7/widget/RecyclerView$ˍ;

.field public final ar:Landroid/support/v7/widget/RecyclerView$ˉ;

.field private as:Landroid/support/v7/widget/RecyclerView$ͺ;

.field public at:Z

.field public au:Z

.field private av:Landroid/support/v7/widget/RecyclerView$ˎ$ˊ;

.field private aw:Z

.field private ax:Lo/ﾉ;

.field private final ay:[I

.field private az:Ljava/lang/Runnable;

.field private b_:Z

.field private c_:Z

.field private כ:I

.field private ᓴ:Landroid/view/VelocityTracker;

.field private ℴ:I

.field private final ﹽ:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 139
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/RecyclerView;->F:Z

    .line 311
    new-instance v0, Lo/ﹽ;

    invoke-direct {v0}, Lo/ﹽ;-><init>()V

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->aA:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 319
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 320
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 323
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 324
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 327
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 166
    new-instance v0, Landroid/support/v7/widget/RecyclerView$con;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$con;-><init>(Landroid/support/v7/widget/RecyclerView;Lo/ﮂ;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$con;

    .line 168
    new-instance v0, Landroid/support/v7/widget/RecyclerView$ʾ;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$ʾ;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Ljava/util/List;

    .line 191
    new-instance v0, Lo/ﮂ;

    invoke-direct {v0, p0}, Lo/ﮂ;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->N:Ljava/lang/Runnable;

    .line 212
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ﹽ:Landroid/graphics/Rect;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->R:Ljava/util/ArrayList;

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->S:Ljava/util/ArrayList;

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->ac:Z

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:Z

    .line 247
    new-instance v0, Lo/ᵖ;

    invoke-direct {v0}, Lo/ᵖ;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:Landroid/support/v7/widget/RecyclerView$ˎ;

    .line 272
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ℴ:I

    .line 273
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:I

    .line 283
    new-instance v0, Landroid/support/v7/widget/RecyclerView$ˍ;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$ˍ;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aq:Landroid/support/v7/widget/RecyclerView$ˍ;

    .line 285
    new-instance v0, Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$ˉ;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->at:Z

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->au:Z

    .line 292
    new-instance v0, Landroid/support/v7/widget/RecyclerView$ˏ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$ˏ;-><init>(Landroid/support/v7/widget/RecyclerView;Lo/ﮂ;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->av:Landroid/support/v7/widget/RecyclerView$ˎ$ˊ;

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->aw:Z

    .line 299
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ay:[I

    .line 301
    new-instance v0, Lo/ﮄ;

    invoke-direct {v0, p0}, Lo/ﮄ;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->az:Ljava/lang/Runnable;

    .line 329
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 330
    const/16 v0, 0x10

    if-lt v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:Z

    .line 332
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 333
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->כ:I

    .line 334
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ao:I

    .line 335
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ap:I

    .line 336
    invoke-static {p0}, Lo/ﺑ;->ͺ(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 338
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:Landroid/support/v7/widget/RecyclerView$ˎ;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->av:Landroid/support/v7/widget/RecyclerView$ˎ$ˊ;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ˎ;->ˊ(Landroid/support/v7/widget/RecyclerView$ˎ$ˊ;)V

    .line 339
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ᴿ()V

    .line 340
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->ᴴ()V

    .line 342
    invoke-static {p0}, Lo/ﺑ;->ˈ(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_2

    .line 344
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lo/ﺑ;->ˏ(Landroid/view/View;I)V

    .line 347
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ab:Landroid/view/accessibility/AccessibilityManager;

    .line 349
    new-instance v0, Lo/ﾉ;

    invoke-direct {v0, p0}, Lo/ﾉ;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setAccessibilityDelegateCompat(Lo/ﾉ;)V

    .line 350
    return-void
.end method

.method private ı(Landroid/view/View;)V
    .locals 2

    .line 4770
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->O:Landroid/support/v7/widget/RecyclerView$if;

    if-eqz v0, :cond_0

    .line 4771
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->O:Landroid/support/v7/widget/RecyclerView$if;

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$if;->ʾ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 4773
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->ᵀ(Landroid/view/View;)V

    .line 4774
    return-void
.end method

.method private ǃ(Landroid/view/View;)V
    .locals 1

    .line 6798
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6799
    return-void
.end method

.method private ʲ(Landroid/view/View;)V
    .locals 1

    .line 6802
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6803
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6805
    :cond_0
    return-void
.end method

.method static synthetic ʻ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$if;
    .locals 1

    .line 127
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->O:Landroid/support/v7/widget/RecyclerView$if;

    return-object v0
.end method

.method private ʻ(Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 6

    .line 754
    iget-object v4, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    .line 755
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 756
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/RecyclerView;->ᵣ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ʾ;->ⁱ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 757
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ῐ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 759
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v4, v2, v1, v3}, Lo/ᵇ;->ˊ(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto :goto_1

    .line 760
    :cond_1
    if-nez v5, :cond_2

    .line 761
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lo/ᵇ;->ˏ(Landroid/view/View;Z)V

    goto :goto_1

    .line 763
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0, v4}, Lo/ᵇ;->ᕀ(Landroid/view/View;)V

    .line 765
    :goto_1
    return-void
.end method

.method static synthetic ʼ(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .line 127
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->‿()Z

    move-result v0

    return v0
.end method

.method private ʽ(Landroid/support/v7/widget/RecyclerView$ˑ;)I
    .locals 2

    .line 7385
    const/16 v0, 0x208

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᘁ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7387
    const/4 v0, -0x1

    return v0

    .line 7389
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Lo/ᴗ;

    iget v1, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->Ύ:I

    invoke-virtual {v0, v1}, Lo/ᴗ;->ᒡ(I)I

    move-result v0

    return v0
.end method

.method static synthetic ʽ(Landroid/support/v7/widget/RecyclerView;)Ljava/util/ArrayList;
    .locals 1

    .line 127
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->R:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic ʾ(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:Z

    return v0
.end method

.method private ʾ(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1599
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1600
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Landroid/support/v7/widget/RecyclerView$ʽ;

    if-eqz v0, :cond_3

    .line 1601
    if-nez v1, :cond_0

    .line 1603
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Landroid/support/v7/widget/RecyclerView$ʽ;

    goto :goto_0

    .line 1605
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Landroid/support/v7/widget/RecyclerView$ʽ;

    invoke-interface {v0, p0, p1}, Landroid/support/v7/widget/RecyclerView$ʽ;->ˋ(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V

    .line 1606
    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 1608
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Landroid/support/v7/widget/RecyclerView$ʽ;

    .line 1610
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 1616
    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    .line 1617
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->S:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1618
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    .line 1619
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->S:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʽ;

    move-object v4, v0

    .line 1620
    invoke-interface {v4, p0, p1}, Landroid/support/v7/widget/RecyclerView$ʽ;->ˊ(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1621
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->T:Landroid/support/v7/widget/RecyclerView$ʽ;

    .line 1622
    const/4 v0, 0x1

    return v0

    .line 1618
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1626
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private ʿ(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1811
    invoke-static {p1}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;)I

    move-result v2

    .line 1812
    invoke-static {p1, v2}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;I)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->aj:I

    if-ne v0, v1, :cond_1

    .line 1814
    if-nez v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1815
    :goto_0
    invoke-static {p1, v3}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:I

    .line 1816
    invoke-static {p1, v3}, Lo/ᵧ;->ˎ(Landroid/view/MotionEvent;I)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->am:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ak:I

    .line 1817
    invoke-static {p1, v3}, Lo/ᵧ;->ˏ(Landroid/view/MotionEvent;I)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->an:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->al:I

    .line 1819
    :cond_1
    return-void
.end method

.method static synthetic ʿ(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->V:Z

    return v0
.end method

.method static synthetic ˈ(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->U:Z

    return v0
.end method

.method static synthetic ˉ(Landroid/support/v7/widget/RecyclerView;)Ljava/lang/Runnable;
    .locals 1

    .line 127
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->N:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic ˊ(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ˑ;)I
    .locals 1

    .line 127
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->ʽ(Landroid/support/v7/widget/RecyclerView$ˑ;)I

    move-result v0

    return v0
.end method

.method private ˊ(Landroid/support/v7/widget/RecyclerView$if;ZZ)V
    .locals 3

    .line 623
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->O:Landroid/support/v7/widget/RecyclerView$if;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->O:Landroid/support/v7/widget/RecyclerView$if;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$con;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$if;->ˋ(Landroid/support/v7/widget/RecyclerView$ˋ;)V

    .line 625
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->O:Landroid/support/v7/widget/RecyclerView$if;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$if;->ﹳ(Landroid/support/v7/widget/RecyclerView;)V

    .line 627
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_4

    .line 629
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:Landroid/support/v7/widget/RecyclerView$ˎ;

    if-eqz v0, :cond_2

    .line 630
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:Landroid/support/v7/widget/RecyclerView$ˎ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ˎ;->ļ()V

    .line 636
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    if-eqz v0, :cond_3

    .line 637
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˏ(Landroid/support/v7/widget/RecyclerView$ʾ;)V

    .line 638
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˎ(Landroid/support/v7/widget/RecyclerView$ʾ;)V

    .line 641
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʾ;->clear()V

    .line 643
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Lo/ᴗ;

    invoke-virtual {v0}, Lo/ᴗ;->reset()V

    .line 644
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->O:Landroid/support/v7/widget/RecyclerView$if;

    .line 645
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->O:Landroid/support/v7/widget/RecyclerView$if;

    .line 646
    if-eqz p1, :cond_5

    .line 647
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$con;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$if;->ˊ(Landroid/support/v7/widget/RecyclerView$ˋ;)V

    .line 648
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView$if;->ᐨ(Landroid/support/v7/widget/RecyclerView;)V

    .line 650
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    if-eqz v0, :cond_6

    .line 651
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->O:Landroid/support/v7/widget/RecyclerView$if;

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˊ(Landroid/support/v7/widget/RecyclerView$if;Landroid/support/v7/widget/RecyclerView$if;)V

    .line 653
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->O:Landroid/support/v7/widget/RecyclerView$if;

    invoke-virtual {v0, v2, v1, p2}, Landroid/support/v7/widget/RecyclerView$ʾ;->ˊ(Landroid/support/v7/widget/RecyclerView$if;Landroid/support/v7/widget/RecyclerView$if;Z)V

    .line 654
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˊ(Landroid/support/v7/widget/RecyclerView$ˉ;Z)Z

    .line 655
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ﺋ()V

    .line 656
    return-void
.end method

.method private ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;Landroid/graphics/Rect;II)V
    .locals 7

    .line 2330
    iget-object v6, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    .line 2331
    if-eqz p2, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-ne v0, p3, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-eq v0, p4, :cond_1

    .line 2334
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->setIsRecyclable(Z)V

    .line 2338
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:Landroid/support/v7/widget/RecyclerView$ˎ;

    move-object v1, p1

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$ˎ;->ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2341
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->⁀()V

    goto :goto_0

    .line 2347
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->setIsRecyclable(Z)V

    .line 2348
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:Landroid/support/v7/widget/RecyclerView$ˎ;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$ˎ;->ˎ(Landroid/support/v7/widget/RecyclerView$ˑ;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2349
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->⁀()V

    .line 2352
    :cond_2
    :goto_0
    return-void
.end method

.method private ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;Landroid/support/v7/widget/RecyclerView$ˑ;)V
    .locals 11

    .line 2387
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->setIsRecyclable(Z)V

    .line 2388
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->ʻ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 2389
    iput-object p2, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bG:Landroid/support/v7/widget/RecyclerView$ˑ;

    .line 2390
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$ʾ;->ⁱ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 2394
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 2395
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    .line 2397
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴐ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2398
    :cond_0
    move v9, v7

    .line 2399
    move v10, v8

    goto :goto_0

    .line 2401
    :cond_1
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 2402
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v10

    .line 2403
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->setIsRecyclable(Z)V

    .line 2404
    iput-object p1, p2, Landroid/support/v7/widget/RecyclerView$ˑ;->bH:Landroid/support/v7/widget/RecyclerView$ˑ;

    .line 2406
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:Landroid/support/v7/widget/RecyclerView$ˎ;

    move-object v1, p1

    move-object v2, p2

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v10

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/RecyclerView$ˎ;->ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;Landroid/support/v7/widget/RecyclerView$ˑ;IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2408
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->⁀()V

    .line 2410
    :cond_2
    return-void
.end method

.method private ˊ(Landroid/support/v7/widget/RecyclerView$ᐝ;)V
    .locals 11

    .line 2355
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ᐝ;->ᓮ:Landroid/support/v7/widget/RecyclerView$ˑ;

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    .line 2356
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ᐝ;->ᓮ:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->ʻ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 2357
    iget v7, p1, Landroid/support/v7/widget/RecyclerView$ᐝ;->left:I

    .line 2358
    iget v8, p1, Landroid/support/v7/widget/RecyclerView$ᐝ;->top:I

    .line 2359
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 2360
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v10

    .line 2361
    if-ne v7, v9, :cond_0

    if-eq v8, v10, :cond_1

    .line 2362
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ᐝ;->ᓮ:Landroid/support/v7/widget/RecyclerView$ˑ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ˑ;->setIsRecyclable(Z)V

    .line 2363
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v9

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v10

    invoke-virtual {v6, v9, v10, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 2370
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:Landroid/support/v7/widget/RecyclerView$ˎ;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ᐝ;->ᓮ:Landroid/support/v7/widget/RecyclerView$ˑ;

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$ˎ;->ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2372
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->⁀()V

    goto :goto_0

    .line 2379
    :cond_1
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ᐝ;->ᓮ:Landroid/support/v7/widget/RecyclerView$ˑ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ˑ;->setIsRecyclable(Z)V

    .line 2380
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:Landroid/support/v7/widget/RecyclerView$ˎ;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ᐝ;->ᓮ:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ˎ;->ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2381
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->⁀()V

    .line 2384
    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic ˊ(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 127
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic ˊ(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 127
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->ˮ(II)V

    return-void
.end method

.method public static synthetic ˊ(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->ı(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic ˊ(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 127
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private ˊ(Lo/ᒢ;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u14a2<Landroid/view/View;Landroid/graphics/Rect;>;)V"
        }
    .end annotation

    .line 2305
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 2306
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_3

    .line 2307
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v8, v0

    .line 2308
    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v9

    .line 2309
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bn:Lo/ᒢ;

    invoke-virtual {v0, v9}, Lo/ᒢ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ᐝ;

    move-object v10, v0

    .line 2310
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ˉ;->ڏ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2311
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bo:Lo/ᒢ;

    invoke-virtual {v0, v9}, Lo/ᒢ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2313
    :cond_0
    invoke-virtual {p1, v8}, Lo/ᒢ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2314
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    invoke-virtual {v0, v8, v1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˊ(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ʾ;)V

    .line 2315
    goto :goto_1

    .line 2317
    :cond_1
    if-eqz v10, :cond_2

    .line 2318
    invoke-direct {p0, v10}, Landroid/support/v7/widget/RecyclerView;->ˊ(Landroid/support/v7/widget/RecyclerView$ᐝ;)V

    goto :goto_1

    .line 2321
    :cond_2
    new-instance v0, Landroid/support/v7/widget/RecyclerView$ᐝ;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v5

    move-object v1, v9

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$ᐝ;-><init>(Landroid/support/v7/widget/RecyclerView$ˑ;IIII)V

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->ˊ(Landroid/support/v7/widget/RecyclerView$ᐝ;)V

    .line 2306
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 2325
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2326
    return-void
.end method

.method public static synthetic ˊ(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Z

    return v0
.end method

.method public static synthetic ˊ(Landroid/support/v7/widget/RecyclerView;Z)Z
    .locals 0

    .line 127
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->aw:Z

    return p1
.end method

.method static synthetic ˋ(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->ـ(I)V

    return-void
.end method

.method static synthetic ˋ(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 127
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->ᵕ(II)V

    return-void
.end method

.method public static synthetic ˋ(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->ﾟ(Landroid/view/View;)V

    return-void
.end method

.method private ˋ([I)V
    .locals 8

    .line 2234
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0}, Lo/ᵇ;->getChildCount()I

    move-result v2

    .line 2235
    if-nez v2, :cond_0

    .line 2236
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 2237
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 2238
    return-void

    .line 2240
    :cond_0
    const v3, 0x7fffffff

    .line 2241
    const/high16 v4, -0x80000000

    .line 2242
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_4

    .line 2243
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0, v5}, Lo/ᵇ;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v6

    .line 2244
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴐ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2245
    goto :goto_1

    .line 2247
    :cond_1
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ˑ;->getLayoutPosition()I

    move-result v7

    .line 2248
    if-ge v7, v3, :cond_2

    .line 2249
    move v3, v7

    .line 2251
    :cond_2
    if-le v7, v4, :cond_3

    .line 2252
    move v4, v7

    .line 2242
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2255
    :cond_4
    const/4 v0, 0x0

    aput v3, p1, v0

    .line 2256
    const/4 v0, 0x1

    aput v4, p1, v0

    .line 2257
    return-void
.end method

.method public static synthetic ˋ(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->ac:Z

    return v0
.end method

.method static synthetic ˋ(Landroid/support/v7/widget/RecyclerView;Z)Z
    .locals 0

    .line 127
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->ad:Z

    return p1
.end method

.method static synthetic ˌ(Landroid/support/v7/widget/RecyclerView;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    .line 127
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ab:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic ˍ(Landroid/support/v7/widget/RecyclerView;)Lo/ﾉ;
    .locals 1

    .line 127
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ax:Lo/ﾉ;

    return-object v0
.end method

.method static synthetic ˎ(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 127
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->ᐠ(II)V

    return-void
.end method

.method static synthetic ˎ(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->ʲ(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic ˎ(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->b_:Z

    return v0
.end method

.method static synthetic ˎ(Landroid/support/v7/widget/RecyclerView;Z)Z
    .locals 0

    .line 127
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->c_:Z

    return p1
.end method

.method public static synthetic ˏ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$ʻ;
    .locals 1

    .line 127
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    return-object v0
.end method

.method static synthetic ˏ(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->ǃ(Landroid/view/View;)V

    return-void
.end method

.method static synthetic ˑ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$ʿ;
    .locals 1

    .line 127
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->Q:Landroid/support/v7/widget/RecyclerView$ʿ;

    return-object v0
.end method

.method private ˡ(II)V
    .locals 3

    .line 1320
    if-gez p1, :cond_0

    .line 1321
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ἰ()V

    .line 1322
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ae:Lo/ܝ;

    neg-int v1, p1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lo/ܝ;->ͺ(F)Z

    goto :goto_0

    .line 1323
    :cond_0
    if-lez p1, :cond_1

    .line 1324
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ἱ()V

    .line 1325
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ag:Lo/ܝ;

    int-to-float v1, p1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lo/ܝ;->ͺ(F)Z

    .line 1328
    :cond_1
    :goto_0
    if-gez p2, :cond_2

    .line 1329
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ὶ()V

    .line 1330
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->af:Lo/ܝ;

    neg-int v1, p2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lo/ܝ;->ͺ(F)Z

    goto :goto_1

    .line 1331
    :cond_2
    if-lez p2, :cond_3

    .line 1332
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ί()V

    .line 1333
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ah:Lo/ܝ;

    int-to-float v1, p2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lo/ܝ;->ͺ(F)Z

    .line 1336
    :cond_3
    :goto_1
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    .line 1337
    :cond_4
    invoke-static {p0}, Lo/ﺑ;->ʿ(Landroid/view/View;)V

    .line 1339
    :cond_5
    return-void
.end method

.method private ˮ(II)V
    .locals 2

    .line 1353
    const/4 v1, 0x0

    .line 1354
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ae:Lo/ܝ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ae:Lo/ܝ;

    invoke-virtual {v0}, Lo/ܝ;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    .line 1355
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ae:Lo/ܝ;

    invoke-virtual {v0}, Lo/ܝ;->ﯨ()Z

    move-result v1

    .line 1357
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ag:Lo/ܝ;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ag:Lo/ܝ;

    invoke-virtual {v0}, Lo/ܝ;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    if-gez p1, :cond_1

    .line 1358
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ag:Lo/ܝ;

    invoke-virtual {v0}, Lo/ܝ;->ﯨ()Z

    move-result v0

    or-int/2addr v1, v0

    .line 1360
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->af:Lo/ܝ;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->af:Lo/ܝ;

    invoke-virtual {v0}, Lo/ܝ;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    if-lez p2, :cond_2

    .line 1361
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->af:Lo/ܝ;

    invoke-virtual {v0}, Lo/ܝ;->ﯨ()Z

    move-result v0

    or-int/2addr v1, v0

    .line 1363
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ah:Lo/ܝ;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ah:Lo/ܝ;

    invoke-virtual {v0}, Lo/ܝ;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    if-gez p2, :cond_3

    .line 1364
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ah:Lo/ܝ;

    invoke-virtual {v0}, Lo/ܝ;->ﯨ()Z

    move-result v0

    or-int/2addr v1, v0

    .line 1366
    :cond_3
    if-eqz v1, :cond_4

    .line 1367
    invoke-static {p0}, Lo/ﺑ;->ʿ(Landroid/view/View;)V

    .line 1369
    :cond_4
    return-void
.end method

.method static synthetic ͺ(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .line 127
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method private ـ(I)V
    .locals 1

    .line 859
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->ℴ:I

    if-ne p1, v0, :cond_0

    .line 860
    return-void

    .line 865
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->ℴ:I

    .line 866
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 867
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->ṛ()V

    .line 869
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->as:Landroid/support/v7/widget/RecyclerView$ͺ;

    if-eqz v0, :cond_2

    .line 870
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->as:Landroid/support/v7/widget/RecyclerView$ͺ;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/RecyclerView$ͺ;->ˎ(Landroid/support/v7/widget/RecyclerView;I)V

    .line 872
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    if-eqz v0, :cond_3

    .line 873
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$ʻ;->৲(I)V

    .line 875
    :cond_3
    return-void
.end method

.method static synthetic ـ(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:Z

    return v0
.end method

.method static synthetic ᐝ(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->ᵟ()V

    return-void
.end method

.method static synthetic ᐝ(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z
    .locals 1

    .line 127
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->ᔈ(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private ᐠ(II)V
    .locals 7

    .line 1860
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1861
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1862
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 1863
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1865
    const/4 v5, 0x0

    .line 1866
    const/4 v6, 0x0

    .line 1868
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 1871
    :sswitch_0
    move v5, v3

    .line 1872
    goto :goto_1

    .line 1875
    :goto_0
    :sswitch_1
    invoke-static {p0}, Lo/ﺑ;->ᐧ(Landroid/view/View;)I

    move-result v5

    .line 1879
    :goto_1
    sparse-switch v2, :sswitch_data_1

    goto :goto_2

    .line 1882
    :sswitch_2
    move v6, v4

    .line 1883
    goto :goto_3

    .line 1886
    :goto_2
    :sswitch_3
    invoke-static {p0}, Lo/ﺑ;->ᐨ(Landroid/view/View;)I

    move-result v6

    .line 1890
    :goto_3
    invoke-virtual {p0, v5, v6}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    .line 1891
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_3
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private ᐣ(II)Z
    .locals 5

    .line 2260
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0}, Lo/ᵇ;->getChildCount()I

    move-result v1

    .line 2261
    if-nez v1, :cond_2

    .line 2262
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2264
    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_6

    .line 2265
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0, v2}, Lo/ᵇ;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v3

    .line 2266
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴐ()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2267
    goto :goto_2

    .line 2269
    :cond_3
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ˑ;->getLayoutPosition()I

    move-result v4

    .line 2270
    if-lt v4, p1, :cond_4

    if-le v4, p2, :cond_5

    .line 2271
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 2264
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2274
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic ᐧ(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$ˍ;
    .locals 1

    .line 127
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aq:Landroid/support/v7/widget/RecyclerView$ˍ;

    return-object v0
.end method

.method private ᔈ(Landroid/view/View;)Z
    .locals 3

    .line 774
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ḷ()V

    .line 775
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0, p1}, Lo/ᵇ;->ᵕ(Landroid/view/View;)Z

    move-result v1

    .line 776
    if-eqz v1, :cond_0

    .line 777
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v2

    .line 778
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView$ʾ;->ⁱ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 779
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView$ʾ;->ᵔ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 784
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->ⁱ(Z)V

    .line 785
    return v1
.end method

.method public static ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;
    .locals 1

    .line 2769
    if-nez p0, :cond_0

    .line 2770
    const/4 v0, 0x0

    return-object v0

    .line 2772
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ʼ;->aO:Landroid/support/v7/widget/RecyclerView$ˑ;

    return-object v0
.end method

.method private ᴴ()V
    .locals 2

    .line 371
    new-instance v0, Lo/ᵇ;

    new-instance v1, Lo/ﺋ;

    invoke-direct {v1, p0}, Lo/ﺋ;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Lo/ᵇ;-><init>(Lo/ᵇ$ˊ;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    .line 452
    return-void
.end method

.method private ᵕ(II)V
    .locals 4

    .line 3246
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->onScrollChanged(IIII)V

    .line 3247
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->as:Landroid/support/v7/widget/RecyclerView$ͺ;

    if-eqz v0, :cond_0

    .line 3248
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->as:Landroid/support/v7/widget/RecyclerView$ͺ;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ͺ;->ʼ(Landroid/support/v7/widget/RecyclerView;II)V

    .line 3250
    :cond_0
    return-void
.end method

.method private ᵟ()V
    .locals 1

    .line 1027
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->N:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1028
    return-void
.end method

.method private ṛ()V
    .locals 1

    .line 1310
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aq:Landroid/support/v7/widget/RecyclerView$ˍ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ˍ;->stop()V

    .line 1311
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    if-eqz v0, :cond_0

    .line 1312
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->Ί()V

    .line 1314
    :cond_0
    return-void
.end method

.method private ỉ()V
    .locals 2

    .line 1342
    const/4 v1, 0x0

    .line 1343
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ae:Lo/ܝ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ae:Lo/ܝ;

    invoke-virtual {v0}, Lo/ܝ;->ﯨ()Z

    move-result v1

    .line 1344
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->af:Lo/ܝ;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->af:Lo/ܝ;

    invoke-virtual {v0}, Lo/ܝ;->ﯨ()Z

    move-result v0

    or-int/2addr v1, v0

    .line 1345
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ag:Lo/ܝ;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ag:Lo/ܝ;

    invoke-virtual {v0}, Lo/ܝ;->ﯨ()Z

    move-result v0

    or-int/2addr v1, v0

    .line 1346
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ah:Lo/ܝ;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ah:Lo/ܝ;

    invoke-virtual {v0}, Lo/ܝ;->ﯨ()Z

    move-result v0

    or-int/2addr v1, v0

    .line 1347
    :cond_3
    if-eqz v1, :cond_4

    .line 1348
    invoke-static {p0}, Lo/ﺑ;->ʿ(Landroid/view/View;)V

    .line 1350
    :cond_4
    return-void
.end method

.method static synthetic ι(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->ﹽ()V

    return-void
.end method

.method private ι(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1582
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1583
    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    if-nez v1, :cond_1

    .line 1584
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Landroid/support/v7/widget/RecyclerView$ʽ;

    .line 1587
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->S:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1588
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 1589
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->S:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʽ;

    move-object v4, v0

    .line 1590
    invoke-interface {v4, p0, p1}, Landroid/support/v7/widget/RecyclerView$ʽ;->ˊ(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    if-eq v1, v0, :cond_2

    .line 1591
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->T:Landroid/support/v7/widget/RecyclerView$ʽ;

    .line 1592
    const/4 v0, 0x1

    return v0

    .line 1588
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1595
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private ῑ()V
    .locals 1

    .line 1803
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ᓴ:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1804
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ᓴ:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1806
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->ỉ()V

    .line 1807
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->ـ(I)V

    .line 1808
    return-void
.end method

.method private ‿()Z
    .locals 1

    .line 1937
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:Landroid/support/v7/widget/RecyclerView$ˎ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:Landroid/support/v7/widget/RecyclerView$ˎ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ˎ;->ɺ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ⁀()V
    .locals 1

    .line 1945
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->aw:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->U:Z

    if-eqz v0, :cond_0

    .line 1946
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->az:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lo/ﺑ;->ˊ(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1947
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->aw:Z

    .line 1949
    :cond_0
    return-void
.end method

.method private ⁔()Z
    .locals 1

    .line 1952
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:Landroid/support/v7/widget/RecyclerView$ˎ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ד()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private 丨()V
    .locals 3

    .line 1962
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->ac:Z

    if-eqz v0, :cond_0

    .line 1965
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Lo/ᴗ;

    invoke-virtual {v0}, Lo/ᴗ;->reset()V

    .line 1966
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ﺋ()V

    .line 1967
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->י(Landroid/support/v7/widget/RecyclerView;)V

    .line 1972
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:Landroid/support/v7/widget/RecyclerView$ˎ;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ד()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1973
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Lo/ᴗ;

    invoke-virtual {v0}, Lo/ᴗ;->ﭤ()V

    goto :goto_0

    .line 1975
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Lo/ᴗ;

    invoke-virtual {v0}, Lo/ᴗ;->ﹹ()V

    .line 1977
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->at:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->au:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->at:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->au:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->‿()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    .line 1979
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->W:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->ai:Landroid/support/v7/widget/RecyclerView$ˎ;

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->ac:Z

    if-nez v1, :cond_5

    if-nez v2, :cond_5

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˎ(Landroid/support/v7/widget/RecyclerView$ʻ;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->ac:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->O:Landroid/support/v7/widget/RecyclerView$if;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$if;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˎ(Landroid/support/v7/widget/RecyclerView$ˉ;Z)Z

    .line 1983
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˌ(Landroid/support/v7/widget/RecyclerView$ˉ;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->ac:Z

    if-nez v1, :cond_8

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->⁔()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˏ(Landroid/support/v7/widget/RecyclerView$ˉ;Z)Z

    .line 1986
    return-void
.end method

.method private ﹽ()V
    .locals 4

    .line 2707
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->ac:Z

    if-eqz v0, :cond_0

    .line 2708
    return-void

    .line 2710
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->ac:Z

    .line 2711
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0}, Lo/ᵇ;->ﻴ()I

    move-result v1

    .line 2712
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2713
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0, v2}, Lo/ᵇ;->ᵌ(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v3

    .line 2714
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴐ()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2715
    const/16 v0, 0x200

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->addFlags(I)V

    .line 2712
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2718
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʾ;->ך()V

    .line 2719
    return-void
.end method

.method static synthetic ﺜ()Landroid/view/animation/Interpolator;
    .locals 1

    .line 127
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->aA:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic ﻟ()Z
    .locals 1

    .line 127
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->F:Z

    return v0
.end method

.method private ﾟ(Landroid/view/View;)V
    .locals 2

    .line 4763
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->O:Landroid/support/v7/widget/RecyclerView$if;

    if-eqz v0, :cond_0

    .line 4764
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->O:Landroid/support/v7/widget/RecyclerView$if;

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$if;->ʿ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 4766
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->ᵋ(Landroid/view/View;)V

    .line 4767
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/ArrayList<Landroid/view/View;>;II)V"
        }
    .end annotation

    .line 1486
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˊ(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1487
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1489
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 2

    .line 2511
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$ʼ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    move-object v1, p1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ʼ;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˊ(Landroid/support/v7/widget/RecyclerView$ʼ;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 2

    .line 1133
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ŗ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˏ(Landroid/support/v7/widget/RecyclerView$ˉ;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 2

    .line 1110
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ŗ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˋ(Landroid/support/v7/widget/RecyclerView$ˉ;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    .line 1153
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ŗ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ʻ(Landroid/support/v7/widget/RecyclerView$ˉ;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 2

    .line 1196
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ſ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ᐝ(Landroid/support/v7/widget/RecyclerView$ˉ;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .line 1175
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ſ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˎ(Landroid/support/v7/widget/RecyclerView$ˉ;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .line 1216
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ſ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ʼ(Landroid/support/v7/widget/RecyclerView$ˉ;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 2440
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2442
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2443
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 2444
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->R:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$aux;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-virtual {v0, p1, p0, v1}, Landroid/support/v7/widget/RecyclerView$aux;->ˋ(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ˉ;)V

    .line 2443
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2448
    :cond_0
    const/4 v4, 0x0

    .line 2449
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ae:Lo/ܝ;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ae:Lo/ܝ;

    invoke-virtual {v0}, Lo/ܝ;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2450
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 2451
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 2452
    :goto_1
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2453
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    neg-int v0, v0

    add-int/2addr v0, v6

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2454
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ae:Lo/ܝ;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ae:Lo/ܝ;

    invoke-virtual {v0, p1}, Lo/ܝ;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 2455
    :goto_2
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2457
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->af:Lo/ܝ;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->af:Lo/ܝ;

    invoke-virtual {v0}, Lo/ܝ;->isFinished()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2458
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 2459
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Z

    if-eqz v0, :cond_4

    .line 2460
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2462
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->af:Lo/ܝ;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->af:Lo/ܝ;

    invoke-virtual {v0, p1}, Lo/ܝ;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    or-int/2addr v4, v0

    .line 2463
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2465
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ag:Lo/ܝ;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ag:Lo/ܝ;

    invoke-virtual {v0}, Lo/ܝ;->isFinished()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2466
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 2467
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v6

    .line 2468
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v7

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    .line 2469
    :goto_4
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2470
    neg-int v0, v7

    int-to-float v0, v0

    neg-int v1, v6

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2471
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ag:Lo/ܝ;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ag:Lo/ܝ;

    invoke-virtual {v0, p1}, Lo/ܝ;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    :goto_5
    or-int/2addr v4, v0

    .line 2472
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2474
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ah:Lo/ܝ;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ah:Lo/ܝ;

    invoke-virtual {v0}, Lo/ܝ;->isFinished()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2475
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 2476
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2477
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Z

    if-eqz v0, :cond_a

    .line 2478
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6

    .line 2480
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2482
    :goto_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ah:Lo/ܝ;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ah:Lo/ܝ;

    invoke-virtual {v0, p1}, Lo/ܝ;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_7

    :cond_b
    const/4 v0, 0x0

    :goto_7
    or-int/2addr v4, v0

    .line 2483
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2489
    :cond_c
    if-nez v4, :cond_d

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:Landroid/support/v7/widget/RecyclerView$ˎ;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:Landroid/support/v7/widget/RecyclerView$ˎ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ˎ;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2491
    const/4 v4, 0x1

    .line 2494
    :cond_d
    if-eqz v4, :cond_e

    .line 2495
    invoke-static {p0}, Lo/ﺑ;->ʿ(Landroid/view/View;)V

    .line 2497
    :cond_e
    return-void
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 5

    .line 1454
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˉ(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 1455
    if-eqz v3, :cond_0

    .line 1456
    return-object v3

    .line 1458
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    .line 1459
    invoke-virtual {v4, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 1460
    if-nez v3, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->O:Landroid/support/v7/widget/RecyclerView$if;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    if-eqz v0, :cond_1

    .line 1461
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ḷ()V

    .line 1462
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˊ(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;)Landroid/view/View;

    move-result-object v3

    .line 1463
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->ⁱ(Z)V

    .line 1465
    :cond_1
    if-eqz v3, :cond_2

    move-object v0, v3

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2516
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    if-nez v0, :cond_0

    .line 2517
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2519
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ł()Landroid/support/v7/widget/RecyclerView$ʼ;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2524
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    if-nez v0, :cond_0

    .line 2525
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2527
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˊ(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$ʼ;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2532
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    if-nez v0, :cond_0

    .line 2533
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2535
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˎ(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$ʼ;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1493
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1494
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->U:Z

    .line 1495
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Z

    .line 1496
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    if-eqz v0, :cond_0

    .line 1497
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ʹ(Landroid/support/v7/widget/RecyclerView;)V

    .line 1499
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->aw:Z

    .line 1500
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1504
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1505
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:Landroid/support/v7/widget/RecyclerView$ˎ;

    if-eqz v0, :cond_0

    .line 1506
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:Landroid/support/v7/widget/RecyclerView$ˎ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ˎ;->ļ()V

    .line 1508
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Z

    .line 1510
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ṙ()V

    .line 1511
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->U:Z

    .line 1512
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    if-eqz v0, :cond_1

    .line 1513
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˊ(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ʾ;)V

    .line 1515
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->az:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1516
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 2501
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2503
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2504
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 2505
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->R:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$aux;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-virtual {v0, p1, p0, v1}, Landroid/support/v7/widget/RecyclerView$aux;->ˊ(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ˉ;)V

    .line 2504
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2507
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1631
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->ι(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1632
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->ῑ()V

    .line 1633
    const/4 v0, 0x1

    return v0

    .line 1636
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ŗ()Z

    move-result v3

    .line 1637
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ſ()Z

    move-result v4

    .line 1639
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ᓴ:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 1640
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ᓴ:Landroid/view/VelocityTracker;

    .line 1642
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ᓴ:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1644
    invoke-static {p1}, Lo/ᵧ;->ˊ(Landroid/view/MotionEvent;)I

    move-result v5

    .line 1645
    invoke-static {p1}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;)I

    move-result v6

    .line 1647
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_2

    .line 1649
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:I

    .line 1650
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->am:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ak:I

    .line 1651
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->an:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->al:I

    .line 1653
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->ℴ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 1654
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1655
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->ـ(I)V

    goto/16 :goto_2

    .line 1660
    :pswitch_1
    invoke-static {p1, v6}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:I

    .line 1661
    invoke-static {p1, v6}, Lo/ᵧ;->ˎ(Landroid/view/MotionEvent;I)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->am:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ak:I

    .line 1662
    invoke-static {p1, v6}, Lo/ᵧ;->ˏ(Landroid/view/MotionEvent;I)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->an:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->al:I

    .line 1663
    goto/16 :goto_2

    .line 1666
    :pswitch_2
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:I

    invoke-static {p1, v0}, Lo/ᵧ;->ˊ(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 1667
    if-gez v7, :cond_2

    .line 1668
    const-string v0, "RecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error processing scroll; pointer index for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->aj:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    const/4 v0, 0x0

    return v0

    .line 1673
    :cond_2
    invoke-static {p1, v7}, Lo/ᵧ;->ˎ(Landroid/view/MotionEvent;I)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v8, v0

    .line 1674
    invoke-static {p1, v7}, Lo/ᵧ;->ˏ(Landroid/view/MotionEvent;I)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v9, v0

    .line 1675
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->ℴ:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 1676
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->ak:I

    sub-int v10, v8, v0

    .line 1677
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->al:I

    sub-int v11, v9, v0

    .line 1678
    const/4 v12, 0x0

    .line 1679
    if-eqz v3, :cond_4

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->כ:I

    if-le v0, v1, :cond_4

    .line 1680
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->ak:I

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->כ:I

    if-gez v10, :cond_3

    const/4 v2, -0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    :goto_0
    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->am:I

    .line 1681
    const/4 v12, 0x1

    .line 1683
    :cond_4
    if-eqz v4, :cond_6

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->כ:I

    if-le v0, v1, :cond_6

    .line 1684
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->al:I

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->כ:I

    if-gez v11, :cond_5

    const/4 v2, -0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    :goto_1
    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->an:I

    .line 1685
    const/4 v12, 0x1

    .line 1687
    :cond_6
    if-eqz v12, :cond_7

    .line 1688
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->ـ(I)V

    .line 1691
    :cond_7
    goto :goto_2

    .line 1694
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->ʿ(Landroid/view/MotionEvent;)V

    .line 1695
    goto :goto_2

    .line 1698
    :pswitch_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ᓴ:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1699
    goto :goto_2

    .line 1702
    :pswitch_5
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->ῑ()V

    .line 1705
    :cond_8
    :goto_2
    :pswitch_6
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->ℴ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    :goto_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 2414
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ḷ()V

    .line 2415
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->氵()V

    .line 2416
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->ⁱ(Z)V

    .line 2417
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Z

    .line 2418
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1823
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->c_:Z

    if-eqz v0, :cond_1

    .line 1824
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ḷ()V

    .line 1825
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->丨()V

    .line 1827
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˉ(Landroid/support/v7/widget/RecyclerView$ˉ;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1832
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˋ(Landroid/support/v7/widget/RecyclerView$ˉ;Z)Z

    goto :goto_0

    .line 1835
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Lo/ᴗ;

    invoke-virtual {v0}, Lo/ᴗ;->ﹹ()V

    .line 1836
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˋ(Landroid/support/v7/widget/RecyclerView$ˉ;Z)Z

    .line 1838
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->c_:Z

    .line 1839
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->ⁱ(Z)V

    .line 1842
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->O:Landroid/support/v7/widget/RecyclerView$if;

    if-eqz v0, :cond_2

    .line 1843
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->O:Landroid/support/v7/widget/RecyclerView$if;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$if;->getItemCount()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->ʎ:I

    goto :goto_1

    .line 1845
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->ʎ:I

    .line 1847
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    if-nez v0, :cond_3

    .line 1848
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->ᐠ(II)V

    goto :goto_2

    .line 1850
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˋ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;II)V

    .line 1853
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˋ(Landroid/support/v7/widget/RecyclerView$ˉ;Z)Z

    .line 1854
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 738
    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/RecyclerView$SavedState;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 739
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 740
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->bc:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->I:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$SavedState;->bc:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ʻ;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 743
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 724
    new-instance v1, Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v7/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 725
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:Landroid/support/v7/widget/RecyclerView$SavedState;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->I:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-static {v1, v0}, Landroid/support/v7/widget/RecyclerView$SavedState;->ˊ(Landroid/support/v7/widget/RecyclerView$SavedState;Landroid/support/v7/widget/RecyclerView$SavedState;)V

    goto :goto_0

    .line 727
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Landroid/support/v7/widget/RecyclerView$SavedState;->bc:Landroid/os/Parcelable;

    goto :goto_0

    .line 730
    :cond_1
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/support/v7/widget/RecyclerView$SavedState;->bc:Landroid/os/Parcelable;

    .line 733
    :goto_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1895
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1896
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 1897
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ῐ()V

    .line 1899
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1710
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->ʾ(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1711
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->ῑ()V

    .line 1712
    const/4 v0, 0x1

    return v0

    .line 1715
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ŗ()Z

    move-result v3

    .line 1716
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ſ()Z

    move-result v4

    .line 1718
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ᓴ:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 1719
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ᓴ:Landroid/view/VelocityTracker;

    .line 1721
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ᓴ:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1723
    invoke-static {p1}, Lo/ᵧ;->ˊ(Landroid/view/MotionEvent;)I

    move-result v5

    .line 1724
    invoke-static {p1}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;)I

    move-result v6

    .line 1726
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_6

    .line 1728
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:I

    .line 1729
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->am:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ak:I

    .line 1730
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->an:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->al:I

    .line 1731
    goto/16 :goto_6

    .line 1734
    :pswitch_1
    invoke-static {p1, v6}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:I

    .line 1735
    invoke-static {p1, v6}, Lo/ᵧ;->ˎ(Landroid/view/MotionEvent;I)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->am:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->ak:I

    .line 1736
    invoke-static {p1, v6}, Lo/ᵧ;->ˏ(Landroid/view/MotionEvent;I)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->an:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->al:I

    .line 1737
    goto/16 :goto_6

    .line 1740
    :pswitch_2
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:I

    invoke-static {p1, v0}, Lo/ᵧ;->ˊ(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 1741
    if-gez v7, :cond_2

    .line 1742
    const-string v0, "RecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error processing scroll; pointer index for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->aj:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    const/4 v0, 0x0

    return v0

    .line 1747
    :cond_2
    invoke-static {p1, v7}, Lo/ᵧ;->ˎ(Landroid/view/MotionEvent;I)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v8, v0

    .line 1748
    invoke-static {p1, v7}, Lo/ᵧ;->ˏ(Landroid/view/MotionEvent;I)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v9, v0

    .line 1749
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->ℴ:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 1750
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->ak:I

    sub-int v10, v8, v0

    .line 1751
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->al:I

    sub-int v11, v9, v0

    .line 1752
    const/4 v12, 0x0

    .line 1753
    if-eqz v3, :cond_4

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->כ:I

    if-le v0, v1, :cond_4

    .line 1754
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->ak:I

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->כ:I

    if-gez v10, :cond_3

    const/4 v2, -0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    :goto_0
    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->am:I

    .line 1755
    const/4 v12, 0x1

    .line 1757
    :cond_4
    if-eqz v4, :cond_6

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->כ:I

    if-le v0, v1, :cond_6

    .line 1758
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->al:I

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->כ:I

    if-gez v11, :cond_5

    const/4 v2, -0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    :goto_1
    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->an:I

    .line 1759
    const/4 v12, 0x1

    .line 1761
    :cond_6
    if-eqz v12, :cond_7

    .line 1762
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->ـ(I)V

    .line 1765
    :cond_7
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->ℴ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 1766
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->am:I

    sub-int v10, v8, v0

    .line 1767
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->an:I

    sub-int v11, v9, v0

    .line 1768
    if-eqz v3, :cond_8

    neg-int v0, v10

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    if-eqz v4, :cond_9

    neg-int v1, v11

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->ˆ(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1770
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1773
    :cond_a
    iput v8, p0, Landroid/support/v7/widget/RecyclerView;->am:I

    .line 1774
    iput v9, p0, Landroid/support/v7/widget/RecyclerView;->an:I

    .line 1775
    goto :goto_6

    .line 1778
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->ʿ(Landroid/view/MotionEvent;)V

    .line 1779
    goto :goto_6

    .line 1782
    :pswitch_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ᓴ:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->ap:I

    int-to-float v1, v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1783
    if-eqz v3, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ᓴ:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->aj:I

    invoke-static {v0, v1}, Lo/ﹻ;->ˊ(Landroid/view/VelocityTracker;I)F

    move-result v0

    neg-float v7, v0

    goto :goto_4

    :cond_b
    const/4 v7, 0x0

    .line 1785
    :goto_4
    if-eqz v4, :cond_c

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ᓴ:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->aj:I

    invoke-static {v0, v1}, Lo/ﹻ;->ˋ(Landroid/view/VelocityTracker;I)F

    move-result v0

    neg-float v8, v0

    goto :goto_5

    :cond_c
    const/4 v8, 0x0

    .line 1787
    :goto_5
    const/4 v0, 0x0

    cmpl-float v0, v7, v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_e

    :cond_d
    float-to-int v0, v7

    float-to-int v1, v8

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->ˇ(II)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1788
    :cond_e
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->ـ(I)V

    .line 1790
    :cond_f
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ᓴ:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1791
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->ỉ()V

    .line 1792
    goto :goto_6

    .line 1795
    :pswitch_5
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->ῑ()V

    .line 1799
    :goto_6
    :pswitch_6
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 4

    .line 2279
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v3

    .line 2280
    if-eqz v3, :cond_1

    .line 2281
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ῐ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2282
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᵨ()V

    goto :goto_0

    .line 2283
    :cond_0
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴐ()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2284
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2288
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->ﾟ(Landroid/view/View;)V

    .line 2289
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 2290
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 5

    .line 1470
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-virtual {v0, p0, v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˊ(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ˉ;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 1471
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ﹽ:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1472
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ﹽ:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1473
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ﹽ:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1474
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ﹽ:Landroid/graphics/Rect;

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->W:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 1476
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1477
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    .line 1481
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˊ(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .line 2422
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->a_:Z

    if-nez v0, :cond_0

    .line 2423
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0

    .line 2425
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->b_:Z

    .line 2427
    :goto_0
    return-void
.end method

.method public scrollBy(II)V
    .locals 4

    .line 1006
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    if-nez v0, :cond_0

    .line 1007
    const-string v0, "RecyclerView"

    const-string v1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    return-void

    .line 1011
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ŗ()Z

    move-result v2

    .line 1012
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ſ()Z

    move-result v3

    .line 1013
    if-nez v2, :cond_1

    if-eqz v3, :cond_4

    .line 1014
    :cond_1
    if-eqz v2, :cond_2

    move v0, p1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v3, :cond_3

    move v1, p2

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->ˆ(II)Z

    .line 1016
    :cond_4
    return-void
.end method

.method public scrollTo(II)V
    .locals 2

    .line 1000
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "RecyclerView does not support scrolling to an absolute position."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAccessibilityDelegateCompat(Lo/ﾉ;)V
    .locals 1

    .line 366
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->ax:Lo/ﾉ;

    .line 367
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ax:Lo/ﾉ;

    invoke-static {p0, v0}, Lo/ﺑ;->ˊ(Landroid/view/View;Lo/ﹾ;)V

    .line 368
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$if;)V
    .locals 2

    .line 608
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->ˊ(Landroid/support/v7/widget/RecyclerView$if;ZZ)V

    .line 609
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 610
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1

    .line 543
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Z

    if-eq p1, v0, :cond_0

    .line 544
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ῐ()V

    .line 546
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->M:Z

    .line 547
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 548
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Z

    if-eqz v0, :cond_1

    .line 549
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 551
    :cond_1
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0

    .line 530
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->V:Z

    .line 531
    return-void
.end method

.method public setItemAnimator(Landroid/support/v7/widget/RecyclerView$ˎ;)V
    .locals 2

    .line 1913
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:Landroid/support/v7/widget/RecyclerView$ˎ;

    if-eqz v0, :cond_0

    .line 1914
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:Landroid/support/v7/widget/RecyclerView$ˎ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ˎ;->ļ()V

    .line 1915
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:Landroid/support/v7/widget/RecyclerView$ˎ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ˎ;->ˊ(Landroid/support/v7/widget/RecyclerView$ˎ$ˊ;)V

    .line 1917
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->ai:Landroid/support/v7/widget/RecyclerView$ˎ;

    .line 1918
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:Landroid/support/v7/widget/RecyclerView$ˎ;

    if-eqz v0, :cond_1

    .line 1919
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:Landroid/support/v7/widget/RecyclerView$ˎ;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->av:Landroid/support/v7/widget/RecyclerView$ˎ$ˊ;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ˎ;->ˊ(Landroid/support/v7/widget/RecyclerView$ˎ$ˊ;)V

    .line 1921
    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 1

    .line 845
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$ʾ;->ᔅ(I)V

    .line 846
    return-void
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$ʻ;)V
    .locals 3

    .line 695
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    if-ne p1, v0, :cond_0

    .line 696
    return-void

    .line 700
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    if-eqz v0, :cond_2

    .line 701
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->U:Z

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˊ(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ʾ;)V

    .line 704
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ﾞ(Landroid/support/v7/widget/RecyclerView;)V

    .line 706
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʾ;->clear()V

    .line 707
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0}, Lo/ᵇ;->ﺫ()V

    .line 708
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    .line 709
    if-eqz p1, :cond_4

    .line 710
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3

    .line 711
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already attached to a RecyclerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ʻ;->aL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ﾞ(Landroid/support/v7/widget/RecyclerView;)V

    .line 715
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->U:Z

    if-eqz v0, :cond_4

    .line 716
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ʹ(Landroid/support/v7/widget/RecyclerView;)V

    .line 719
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 720
    return-void
.end method

.method public setOnScrollListener(Landroid/support/v7/widget/RecyclerView$ͺ;)V
    .locals 0

    .line 952
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->as:Landroid/support/v7/widget/RecyclerView$ͺ;

    .line 953
    return-void
.end method

.method public setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$ι;)V
    .locals 1

    .line 819
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$ʾ;->setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$ι;)V

    .line 820
    return-void
.end method

.method public setRecyclerListener(Landroid/support/v7/widget/RecyclerView$ʿ;)V
    .locals 0

    .line 679
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->Q:Landroid/support/v7/widget/RecyclerView$ʿ;

    .line 680
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 4

    .line 563
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 564
    sparse-switch p1, :sswitch_data_0

    nop

    .line 566
    const-string v0, "RecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; using default value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :sswitch_0
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->כ:I

    .line 571
    goto :goto_0

    .line 574
    :sswitch_1
    invoke-static {v3}, Lo/ᒾ;->ˊ(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->כ:I

    .line 577
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
    .end sparse-switch
.end method

.method public setViewCacheExtension(Landroid/support/v7/widget/RecyclerView$ˌ;)V
    .locals 1

    .line 830
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$ʾ;->setViewCacheExtension(Landroid/support/v7/widget/RecyclerView$ˌ;)V

    .line 831
    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 2

    .line 1245
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    if-nez v0, :cond_0

    .line 1246
    const-string v0, "RecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    return-void

    .line 1250
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ŗ()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1251
    const/4 p1, 0x0

    .line 1253
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ſ()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1254
    const/4 p2, 0x0

    .line 1256
    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_4

    .line 1257
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aq:Landroid/support/v7/widget/RecyclerView$ˍ;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ˍ;->smoothScrollBy(II)V

    .line 1259
    :cond_4
    return-void
.end method

.method ʼ(Landroid/support/v7/widget/RecyclerView$ˑ;)J
    .locals 2

    .line 2297
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->O:Landroid/support/v7/widget/RecyclerView$if;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$if;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ˑ;->getItemId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/support/v7/widget/RecyclerView$ˑ;->Ύ:I

    int-to-long v0, v0

    :goto_0
    return-wide v0
.end method

.method public ˀ(I)V
    .locals 3

    .line 2954
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0}, Lo/ᵇ;->getChildCount()I

    move-result v1

    .line 2955
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 2956
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0, v2}, Lo/ᵇ;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2955
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2958
    :cond_0
    return-void
.end method

.method public ˁ(I)V
    .locals 3

    .line 2992
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0}, Lo/ᵇ;->getChildCount()I

    move-result v1

    .line 2993
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 2994
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0, v2}, Lo/ᵇ;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2993
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2996
    :cond_0
    return-void
.end method

.method ˆ(II)Z
    .locals 16

    .line 1036
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1037
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1038
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->ᵟ()V

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->O:Landroid/support/v7/widget/RecyclerView$if;

    if-eqz v0, :cond_6

    .line 1040
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->ḷ()V

    .line 1041
    const/4 v0, 0x1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v7/widget/RecyclerView;->ad:Z

    .line 1042
    if-eqz p1, :cond_0

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    move-object/from16 v2, p0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    move/from16 v3, p1

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˊ(ILandroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;)I

    move-result v6

    .line 1044
    sub-int v4, p1, v6

    .line 1046
    :cond_0
    if-eqz p2, :cond_1

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    move-object/from16 v2, p0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    move/from16 v3, p2

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˋ(ILandroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;)I

    move-result v7

    .line 1048
    sub-int v5, p2, v7

    .line 1050
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->‿()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0}, Lo/ᵇ;->getChildCount()I

    move-result v8

    .line 1053
    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_5

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0, v9}, Lo/ᵇ;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1055
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView;->ᵣ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v11

    .line 1056
    if-eqz v11, :cond_4

    iget-object v0, v11, Landroid/support/v7/widget/RecyclerView$ˑ;->bH:Landroid/support/v7/widget/RecyclerView$ˑ;

    if-eqz v0, :cond_4

    .line 1057
    iget-object v12, v11, Landroid/support/v7/widget/RecyclerView$ˑ;->bH:Landroid/support/v7/widget/RecyclerView$ˑ;

    .line 1058
    if-eqz v12, :cond_2

    iget-object v13, v12, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    .line 1059
    :goto_1
    if-eqz v13, :cond_4

    .line 1060
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v14

    .line 1061
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v15

    .line 1062
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v0

    if-ne v14, v0, :cond_3

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v0

    if-eq v15, v0, :cond_4

    .line 1063
    :cond_3
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v14

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v15

    invoke-virtual {v13, v14, v15, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1053
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 1071
    :cond_5
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v7/widget/RecyclerView;->ad:Z

    .line 1072
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->ⁱ(Z)V

    .line 1074
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1075
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 1077
    :cond_7
    invoke-static/range {p0 .. p0}, Lo/ﺑ;->ͺ(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    .line 1078
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->ˮ(II)V

    .line 1079
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/support/v7/widget/RecyclerView;->ˡ(II)V

    .line 1081
    :cond_8
    if-nez v6, :cond_9

    if-eqz v7, :cond_a

    .line 1082
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Landroid/support/v7/widget/RecyclerView;->ᵕ(II)V

    .line 1084
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1085
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 1087
    :cond_b
    if-nez v6, :cond_c

    if-eqz v7, :cond_d

    :cond_c
    const/4 v0, 0x1

    goto :goto_2

    :cond_d
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public ˇ(II)Z
    .locals 4

    .line 1275
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    if-nez v0, :cond_0

    .line 1276
    const-string v0, "RecyclerView"

    const-string v1, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    const/4 v0, 0x0

    return v0

    .line 1280
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ŗ()Z

    move-result v2

    .line 1281
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʻ;->ſ()Z

    move-result v3

    .line 1282
    if-eqz v2, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->ao:I

    if-ge v0, v1, :cond_2

    .line 1283
    :cond_1
    const/4 p1, 0x0

    .line 1285
    :cond_2
    if-eqz v3, :cond_3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->ao:I

    if-ge v0, v1, :cond_4

    .line 1286
    :cond_3
    const/4 p2, 0x0

    .line 1288
    :cond_4
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->ap:I

    neg-int v0, v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->ap:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1289
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->ap:I

    neg-int v0, v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->ap:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1290
    if-nez p1, :cond_5

    if-eqz p2, :cond_6

    .line 1291
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aq:Landroid/support/v7/widget/RecyclerView$ˍ;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ˍ;->ᒽ(II)V

    .line 1292
    const/4 v0, 0x1

    return v0

    .line 1294
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public ˈ(IZ)Landroid/support/v7/widget/RecyclerView$ˑ;
    .locals 4

    .line 2881
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0}, Lo/ᵇ;->ﻴ()I

    move-result v1

    .line 2882
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2883
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0, v2}, Lo/ᵇ;->ᵌ(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v3

    .line 2884
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ˑ;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2885
    if-eqz p2, :cond_0

    .line 2886
    iget v0, v3, Landroid/support/v7/widget/RecyclerView$ˑ;->Ύ:I

    if-ne v0, p1, :cond_1

    .line 2887
    return-object v3

    .line 2889
    :cond_0
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ˑ;->getLayoutPosition()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 2890
    return-object v3

    .line 2882
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2897
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public ˊ(Landroid/support/v7/widget/RecyclerView$aux;)V
    .locals 1

    .line 921
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->ˊ(Landroid/support/v7/widget/RecyclerView$aux;I)V

    .line 922
    return-void
.end method

.method public ˊ(Landroid/support/v7/widget/RecyclerView$aux;I)V
    .locals 2

    .line 892
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    const-string v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˎ(Ljava/lang/String;)V

    .line 896
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 897
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 899
    :cond_1
    if-gez p2, :cond_2

    .line 900
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->R:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 902
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->R:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 904
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->灬()V

    .line 905
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 906
    return-void
.end method

.method public ˋ(IIZ)V
    .locals 6

    .line 2616
    add-int v2, p1, p2

    .line 2617
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0}, Lo/ᵇ;->ﻴ()I

    move-result v3

    .line 2618
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 2619
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0, v4}, Lo/ᵇ;->ᵌ(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v5

    .line 2620
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴐ()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2621
    iget v0, v5, Landroid/support/v7/widget/RecyclerView$ˑ;->Ύ:I

    if-lt v0, v2, :cond_0

    .line 2627
    neg-int v0, p2

    invoke-virtual {v5, v0, p3}, Landroid/support/v7/widget/RecyclerView$ˑ;->ˌ(IZ)V

    .line 2628
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˊ(Landroid/support/v7/widget/RecyclerView$ˉ;Z)Z

    goto :goto_1

    .line 2629
    :cond_0
    iget v0, v5, Landroid/support/v7/widget/RecyclerView$ˑ;->Ύ:I

    if-lt v0, p1, :cond_1

    .line 2634
    add-int/lit8 v0, p1, -0x1

    neg-int v1, p2

    invoke-virtual {v5, v0, v1, p3}, Landroid/support/v7/widget/RecyclerView$ˑ;->ˏ(IIZ)V

    .line 2636
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˊ(Landroid/support/v7/widget/RecyclerView$ˉ;Z)Z

    .line 2618
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2640
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ʾ;->ˋ(IIZ)V

    .line 2641
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 2642
    return-void
.end method

.method ˎ(Ljava/lang/String;)V
    .locals 2

    .line 1544
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:Z

    if-eqz v0, :cond_1

    .line 1545
    if-nez p1, :cond_0

    .line 1546
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1549
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1551
    :cond_1
    return-void
.end method

.method ۥ(II)V
    .locals 2

    .line 1372
    if-gez p1, :cond_0

    .line 1373
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ἰ()V

    .line 1374
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ae:Lo/ܝ;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Lo/ܝ;->ˇ(I)Z

    goto :goto_0

    .line 1375
    :cond_0
    if-lez p1, :cond_1

    .line 1376
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ἱ()V

    .line 1377
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ag:Lo/ܝ;

    invoke-virtual {v0, p1}, Lo/ܝ;->ˇ(I)Z

    .line 1380
    :cond_1
    :goto_0
    if-gez p2, :cond_2

    .line 1381
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ὶ()V

    .line 1382
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->af:Lo/ܝ;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Lo/ܝ;->ˇ(I)Z

    goto :goto_1

    .line 1383
    :cond_2
    if-lez p2, :cond_3

    .line 1384
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ί()V

    .line 1385
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ah:Lo/ܝ;

    invoke-virtual {v0, p2}, Lo/ܝ;->ˇ(I)Z

    .line 1388
    :cond_3
    :goto_1
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    .line 1389
    :cond_4
    invoke-static {p0}, Lo/ﺑ;->ʿ(Landroid/view/View;)V

    .line 1391
    :cond_5
    return-void
.end method

.method public ᐩ(II)V
    .locals 8

    .line 2564
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0}, Lo/ᵇ;->ﻴ()I

    move-result v2

    .line 2566
    if-ge p1, p2, :cond_0

    .line 2567
    move v3, p1

    .line 2568
    move v4, p2

    .line 2569
    const/4 v5, -0x1

    goto :goto_0

    .line 2571
    :cond_0
    move v3, p2

    .line 2572
    move v4, p1

    .line 2573
    const/4 v5, 0x1

    .line 2576
    :goto_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_4

    .line 2577
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0, v6}, Lo/ᵇ;->ᵌ(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v7

    .line 2578
    if-eqz v7, :cond_3

    iget v0, v7, Landroid/support/v7/widget/RecyclerView$ˑ;->Ύ:I

    if-lt v0, v3, :cond_3

    iget v0, v7, Landroid/support/v7/widget/RecyclerView$ˑ;->Ύ:I

    if-le v0, v4, :cond_1

    .line 2579
    goto :goto_3

    .line 2585
    :cond_1
    iget v0, v7, Landroid/support/v7/widget/RecyclerView$ˑ;->Ύ:I

    if-ne v0, p1, :cond_2

    .line 2586
    sub-int v0, p2, p1

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/support/v7/widget/RecyclerView$ˑ;->ˌ(IZ)V

    goto :goto_2

    .line 2588
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v7, v5, v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->ˌ(IZ)V

    .line 2591
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˊ(Landroid/support/v7/widget/RecyclerView$ˉ;Z)Z

    .line 2576
    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2593
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ʾ;->ᐩ(II)V

    .line 2594
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 2595
    return-void
.end method

.method public ᑊ(II)V
    .locals 5

    .line 2598
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0}, Lo/ᵇ;->ﻴ()I

    move-result v2

    .line 2599
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 2600
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0, v3}, Lo/ᵇ;->ᵌ(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v4

    .line 2601
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴐ()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, v4, Landroid/support/v7/widget/RecyclerView$ˑ;->Ύ:I

    if-lt v0, p1, :cond_0

    .line 2606
    const/4 v0, 0x0

    invoke-virtual {v4, p2, v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->ˌ(IZ)V

    .line 2607
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˊ(Landroid/support/v7/widget/RecyclerView$ˉ;Z)Z

    .line 2599
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2610
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ʾ;->ᑊ(II)V

    .line 2611
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 2612
    return-void
.end method

.method public ᕀ(II)V
    .locals 7

    .line 2651
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0}, Lo/ᵇ;->ﻴ()I

    move-result v2

    .line 2652
    add-int v3, p1, p2

    .line 2654
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    .line 2655
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0, v4}, Lo/ᵇ;->ᵌ(I)Landroid/view/View;

    move-result-object v5

    .line 2656
    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v6

    .line 2657
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴐ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2658
    goto :goto_1

    .line 2660
    :cond_0
    iget v0, v6, Landroid/support/v7/widget/RecyclerView$ˑ;->Ύ:I

    if-lt v0, p1, :cond_2

    iget v0, v6, Landroid/support/v7/widget/RecyclerView$ˑ;->Ύ:I

    if-ge v0, v3, :cond_2

    .line 2663
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->addFlags(I)V

    .line 2664
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->‿()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2665
    const/16 v0, 0x40

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->addFlags(I)V

    .line 2668
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$ʼ;->aQ:Z

    .line 2654
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2671
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ʾ;->ᕀ(II)V

    .line 2672
    return-void
.end method

.method public ᴶ(Landroid/view/View;)I
    .locals 2

    .line 2791
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v1

    .line 2792
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ˑ;->getAdapterPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public ᴸ(Landroid/view/View;)I
    .locals 2

    .line 2806
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v1

    .line 2807
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ˑ;->getLayoutPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method ᴿ()V
    .locals 2

    .line 455
    new-instance v0, Lo/ᴗ;

    new-instance v1, Lo/ﺜ;

    invoke-direct {v1, p0}, Lo/ﺜ;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Lo/ᴗ;-><init>(Lo/ᴗ$if;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->J:Lo/ᴗ;

    .line 520
    return-void
.end method

.method public ᵀ(Landroid/view/View;)V
    .locals 0

    .line 2971
    return-void
.end method

.method public ᵇ()Landroid/support/v7/widget/RecyclerView$if;
    .locals 1

    .line 665
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->O:Landroid/support/v7/widget/RecyclerView$if;

    return-object v0
.end method

.method public ᵋ(Landroid/view/View;)V
    .locals 0

    .line 2983
    return-void
.end method

.method public ᵖ()Landroid/support/v7/widget/RecyclerView$ʻ;
    .locals 1

    .line 795
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    return-object v0
.end method

.method ᵗ(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 9

    .line 2999
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    move-object v5, v0

    .line 3000
    iget-boolean v0, v5, Landroid/support/v7/widget/RecyclerView$ʼ;->aQ:Z

    if-nez v0, :cond_0

    .line 3001
    iget-object v0, v5, Landroid/support/v7/widget/RecyclerView$ʼ;->aP:Landroid/graphics/Rect;

    return-object v0

    .line 3004
    :cond_0
    iget-object v6, v5, Landroid/support/v7/widget/RecyclerView$ʼ;->aP:Landroid/graphics/Rect;

    .line 3005
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 3006
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 3007
    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_1

    .line 3008
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ﹽ:Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3009
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->R:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$aux;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->ﹽ:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-virtual {v0, v1, p1, p0, v2}, Landroid/support/v7/widget/RecyclerView$aux;->ˊ(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ˉ;)V

    .line 3010
    iget v0, v6, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->ﹽ:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3011
    iget v0, v6, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->ﹽ:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 3012
    iget v0, v6, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->ﹽ:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3013
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->ﹽ:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3007
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3015
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, v5, Landroid/support/v7/widget/RecyclerView$ʼ;->aQ:Z

    .line 3016
    return-object v6
.end method

.method public ᵣ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;
    .locals 4

    .line 2760
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 2761
    if-eqz v3, :cond_0

    if-eq v3, p0, :cond_0

    .line 2762
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a direct child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2765
    :cond_0
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v0

    return-object v0
.end method

.method public ḷ()V
    .locals 1

    .line 1221
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->a_:Z

    if-nez v0, :cond_0

    .line 1222
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->a_:Z

    .line 1223
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->b_:Z

    .line 1225
    :cond_0
    return-void
.end method

.method public ṙ()V
    .locals 1

    .line 1302
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->ـ(I)V

    .line 1303
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->ṛ()V

    .line 1304
    return-void
.end method

.method ἰ()V
    .locals 4

    .line 1394
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ae:Lo/ܝ;

    if-eqz v0, :cond_0

    .line 1395
    return-void

    .line 1397
    :cond_0
    new-instance v0, Lo/ܝ;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ܝ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ae:Lo/ܝ;

    .line 1398
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Z

    if-eqz v0, :cond_1

    .line 1399
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ae:Lo/ܝ;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lo/ܝ;->setSize(II)V

    goto :goto_0

    .line 1402
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ae:Lo/ܝ;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lo/ܝ;->setSize(II)V

    .line 1404
    :goto_0
    return-void
.end method

.method ἱ()V
    .locals 4

    .line 1407
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ag:Lo/ܝ;

    if-eqz v0, :cond_0

    .line 1408
    return-void

    .line 1410
    :cond_0
    new-instance v0, Lo/ܝ;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ܝ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ag:Lo/ܝ;

    .line 1411
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Z

    if-eqz v0, :cond_1

    .line 1412
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ag:Lo/ܝ;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lo/ܝ;->setSize(II)V

    goto :goto_0

    .line 1415
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ag:Lo/ܝ;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lo/ܝ;->setSize(II)V

    .line 1417
    :goto_0
    return-void
.end method

.method ὶ()V
    .locals 4

    .line 1420
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->af:Lo/ܝ;

    if-eqz v0, :cond_0

    .line 1421
    return-void

    .line 1423
    :cond_0
    new-instance v0, Lo/ܝ;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ܝ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->af:Lo/ܝ;

    .line 1424
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Z

    if-eqz v0, :cond_1

    .line 1425
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->af:Lo/ܝ;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lo/ܝ;->setSize(II)V

    goto :goto_0

    .line 1428
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->af:Lo/ܝ;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lo/ܝ;->setSize(II)V

    .line 1431
    :goto_0
    return-void
.end method

.method ί()V
    .locals 4

    .line 1434
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ah:Lo/ܝ;

    if-eqz v0, :cond_0

    .line 1435
    return-void

    .line 1437
    :cond_0
    new-instance v0, Lo/ܝ;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ܝ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ah:Lo/ܝ;

    .line 1438
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Z

    if-eqz v0, :cond_1

    .line 1439
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ah:Lo/ܝ;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lo/ܝ;->setSize(II)V

    goto :goto_0

    .line 1442
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ah:Lo/ܝ;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lo/ܝ;->setSize(II)V

    .line 1444
    :goto_0
    return-void
.end method

.method ῐ()V
    .locals 1

    .line 1447
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ah:Lo/ܝ;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->af:Lo/ܝ;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ag:Lo/ܝ;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ae:Lo/ܝ;

    .line 1448
    return-void
.end method

.method public ⁱ(Z)V
    .locals 1

    .line 1228
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->a_:Z

    if-eqz v0, :cond_1

    .line 1229
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->b_:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->O:Landroid/support/v7/widget/RecyclerView$if;

    if-eqz v0, :cond_0

    .line 1231
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->氵()V

    .line 1233
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->a_:Z

    .line 1234
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->b_:Z

    .line 1236
    :cond_1
    return-void
.end method

.method public 氵()V
    .locals 17

    .line 2011
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->O:Landroid/support/v7/widget/RecyclerView$if;

    if-nez v0, :cond_0

    .line 2012
    const-string v0, "RecyclerView"

    const-string v1, "No adapter attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    return-void

    .line 2015
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    if-nez v0, :cond_1

    .line 2016
    const-string v0, "RecyclerView"

    const-string v1, "No layout manager attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    return-void

    .line 2019
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2020
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->ḷ()V

    .line 2021
    const/4 v0, 0x1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v7/widget/RecyclerView;->ad:Z

    .line 2023
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->丨()V

    .line 2025
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˌ(Landroid/support/v7/widget/RecyclerView$ˉ;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v1, p0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView;->au:Z

    if-eqz v1, :cond_2

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->‿()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lo/ᒢ;

    invoke-direct {v1}, Lo/ᒢ;-><init>()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bp:Lo/ᒢ;

    .line 2027
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v7/widget/RecyclerView;->au:Z

    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v7/widget/RecyclerView;->at:Z

    .line 2028
    const/4 v7, 0x0

    .line 2029
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˉ(Landroid/support/v7/widget/RecyclerView$ˉ;)Z

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˋ(Landroid/support/v7/widget/RecyclerView$ˉ;Z)Z

    .line 2030
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->O:Landroid/support/v7/widget/RecyclerView$if;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$if;->getItemCount()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->ʎ:I

    .line 2031
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ay:[I

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Landroid/support/v7/widget/RecyclerView;->ˋ([I)V

    .line 2033
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˌ(Landroid/support/v7/widget/RecyclerView$ˉ;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2035
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bn:Lo/ᒢ;

    invoke-virtual {v0}, Lo/ᒢ;->clear()V

    .line 2036
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bo:Lo/ᒢ;

    invoke-virtual {v0}, Lo/ᒢ;->clear()V

    .line 2037
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0}, Lo/ᵇ;->getChildCount()I

    move-result v8

    .line 2038
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_5

    .line 2039
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0, v9}, Lo/ᵇ;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v10

    .line 2040
    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴐ()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ḯ()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->O:Landroid/support/v7/widget/RecyclerView$if;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$if;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2041
    goto :goto_2

    .line 2043
    :cond_3
    iget-object v11, v10, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    .line 2044
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bn:Lo/ᒢ;

    new-instance v1, Landroid/support/v7/widget/RecyclerView$ᐝ;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v6

    move-object v2, v10

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/widget/RecyclerView$ᐝ;-><init>(Landroid/support/v7/widget/RecyclerView$ˑ;IIII)V

    invoke-virtual {v0, v10, v1}, Lo/ᒢ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2038
    :cond_4
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2048
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˉ(Landroid/support/v7/widget/RecyclerView$ˉ;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2055
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->ﭙ()V

    .line 2057
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bp:Lo/ᒢ;

    if-eqz v0, :cond_7

    .line 2058
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0}, Lo/ᵇ;->getChildCount()I

    move-result v8

    .line 2059
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_7

    .line 2060
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0, v9}, Lo/ᵇ;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v10

    .line 2061
    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ἱ()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$ˑ;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴐ()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2062
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView;->ʼ(Landroid/support/v7/widget/RecyclerView$ˑ;)J

    move-result-wide v11

    .line 2063
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bp:Lo/ᒢ;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Lo/ᒢ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2064
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bn:Lo/ᒢ;

    invoke-virtual {v0, v10}, Lo/ᒢ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2059
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 2069
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˍ(Landroid/support/v7/widget/RecyclerView$ˉ;)Z

    move-result v8

    .line 2070
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˊ(Landroid/support/v7/widget/RecyclerView$ˉ;Z)Z

    .line 2072
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    move-object/from16 v2, p0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;)V

    .line 2073
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-static {v0, v8}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˊ(Landroid/support/v7/widget/RecyclerView$ˉ;Z)Z

    .line 2075
    new-instance v7, Lo/ᒢ;

    invoke-direct {v7}, Lo/ᒢ;-><init>()V

    .line 2076
    const/4 v9, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0}, Lo/ᵇ;->getChildCount()I

    move-result v0

    if-ge v9, v0, :cond_c

    .line 2077
    const/4 v10, 0x0

    .line 2078
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0, v9}, Lo/ᵇ;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 2079
    invoke-static {v11}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴐ()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2080
    goto :goto_7

    .line 2082
    :cond_8
    const/4 v12, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bn:Lo/ᒢ;

    invoke-virtual {v0}, Lo/ᒢ;->size()I

    move-result v0

    if-ge v12, v0, :cond_a

    .line 2083
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bn:Lo/ᒢ;

    invoke-virtual {v0, v12}, Lo/ᒢ;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    move-object v13, v0

    .line 2084
    iget-object v0, v13, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    if-ne v0, v11, :cond_9

    .line 2085
    const/4 v10, 0x1

    .line 2086
    goto :goto_6

    .line 2082
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 2089
    :cond_a
    :goto_6
    if-nez v10, :cond_b

    .line 2090
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, v11, v0}, Lo/ᒢ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2076
    :cond_b
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 2095
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->ﮂ()V

    .line 2096
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->J:Lo/ᴗ;

    invoke-virtual {v0}, Lo/ᴗ;->ﯧ()V

    .line 2097
    goto :goto_9

    .line 2098
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->ﮂ()V

    .line 2100
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->J:Lo/ᴗ;

    invoke-virtual {v0}, Lo/ᴗ;->ﹹ()V

    .line 2101
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bp:Lo/ᒢ;

    if-eqz v0, :cond_f

    .line 2102
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0}, Lo/ᵇ;->getChildCount()I

    move-result v8

    .line 2103
    const/4 v9, 0x0

    :goto_8
    if-ge v9, v8, :cond_f

    .line 2104
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0, v9}, Lo/ᵇ;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v10

    .line 2105
    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ἱ()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$ˑ;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴐ()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2106
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView;->ʼ(Landroid/support/v7/widget/RecyclerView$ˑ;)J

    move-result-wide v11

    .line 2107
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bp:Lo/ᒢ;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Lo/ᒢ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2108
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bn:Lo/ᒢ;

    invoke-virtual {v0, v10}, Lo/ᒢ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2103
    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 2113
    :cond_f
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->O:Landroid/support/v7/widget/RecyclerView$if;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$if;->getItemCount()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->ʎ:I

    .line 2114
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˋ(Landroid/support/v7/widget/RecyclerView$ˉ;I)I

    .line 2117
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˋ(Landroid/support/v7/widget/RecyclerView$ˉ;Z)Z

    .line 2118
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    move-object/from16 v2, p0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˊ(Landroid/support/v7/widget/RecyclerView$ʾ;Landroid/support/v7/widget/RecyclerView$ˉ;)V

    .line 2120
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˊ(Landroid/support/v7/widget/RecyclerView$ˉ;Z)Z

    .line 2121
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/RecyclerView;->I:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 2124
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˌ(Landroid/support/v7/widget/RecyclerView$ˉ;)Z

    move-result v1

    if-eqz v1, :cond_10

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->ai:Landroid/support/v7/widget/RecyclerView$ˎ;

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_a

    :cond_10
    const/4 v1, 0x0

    :goto_a
    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˎ(Landroid/support/v7/widget/RecyclerView$ˉ;Z)Z

    .line 2126
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˌ(Landroid/support/v7/widget/RecyclerView$ˉ;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2128
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bp:Lo/ᒢ;

    if-eqz v0, :cond_11

    new-instance v8, Lo/ᒢ;

    invoke-direct {v8}, Lo/ᒢ;-><init>()V

    goto :goto_b

    :cond_11
    const/4 v8, 0x0

    .line 2130
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0}, Lo/ᵇ;->getChildCount()I

    move-result v9

    .line 2131
    const/4 v10, 0x0

    :goto_c
    if-ge v10, v9, :cond_14

    .line 2132
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0, v10}, Lo/ᵇ;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v11

    .line 2133
    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴐ()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2134
    goto :goto_d

    .line 2136
    :cond_12
    iget-object v12, v11, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    .line 2137
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v7/widget/RecyclerView;->ʼ(Landroid/support/v7/widget/RecyclerView$ˑ;)J

    move-result-wide v13

    .line 2138
    if-eqz v8, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bp:Lo/ᒢ;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ᒢ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2139
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0, v11}, Lo/ᒢ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 2141
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bo:Lo/ᒢ;

    new-instance v1, Landroid/support/v7/widget/RecyclerView$ᐝ;

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v6

    move-object v2, v11

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/widget/RecyclerView$ᐝ;-><init>(Landroid/support/v7/widget/RecyclerView$ˑ;IIII)V

    invoke-virtual {v0, v11, v1}, Lo/ᒢ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2131
    :goto_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 2145
    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/support/v7/widget/RecyclerView;->ˊ(Lo/ᒢ;)V

    .line 2147
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bn:Lo/ᒢ;

    invoke-virtual {v0}, Lo/ᒢ;->size()I

    move-result v10

    .line 2148
    add-int/lit8 v11, v10, -0x1

    :goto_e
    if-ltz v11, :cond_16

    .line 2149
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bn:Lo/ᒢ;

    invoke-virtual {v0, v11}, Lo/ᒢ;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    move-object v12, v0

    .line 2150
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bo:Lo/ᒢ;

    invoke-virtual {v0, v12}, Lo/ᒢ;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 2151
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bn:Lo/ᒢ;

    invoke-virtual {v0, v11}, Lo/ᒢ;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ᐝ;

    move-object v13, v0

    .line 2152
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bn:Lo/ᒢ;

    invoke-virtual {v0, v11}, Lo/ᒢ;->removeAt(I)Ljava/lang/Object;

    .line 2154
    iget-object v0, v13, Landroid/support/v7/widget/RecyclerView$ᐝ;->ᓮ:Landroid/support/v7/widget/RecyclerView$ˑ;

    iget-object v14, v0, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    .line 2155
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    iget-object v1, v13, Landroid/support/v7/widget/RecyclerView$ᐝ;->ᓮ:Landroid/support/v7/widget/RecyclerView$ˑ;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ʾ;->ⁱ(Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 2156
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/support/v7/widget/RecyclerView;->ˊ(Landroid/support/v7/widget/RecyclerView$ᐝ;)V

    .line 2148
    :cond_15
    add-int/lit8 v11, v11, -0x1

    goto :goto_e

    .line 2160
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bo:Lo/ᒢ;

    invoke-virtual {v0}, Lo/ᒢ;->size()I

    move-result v11

    .line 2161
    if-lez v11, :cond_1a

    .line 2162
    add-int/lit8 v12, v11, -0x1

    :goto_f
    if-ltz v12, :cond_1a

    .line 2163
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bo:Lo/ᒢ;

    invoke-virtual {v0, v12}, Lo/ᒢ;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    move-object v13, v0

    .line 2164
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bo:Lo/ᒢ;

    invoke-virtual {v0, v12}, Lo/ᒢ;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ᐝ;

    move-object v14, v0

    .line 2165
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bn:Lo/ᒢ;

    invoke-virtual {v0}, Lo/ᒢ;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bn:Lo/ᒢ;

    invoke-virtual {v0, v13}, Lo/ᒢ;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 2167
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bo:Lo/ᒢ;

    invoke-virtual {v0, v12}, Lo/ᒢ;->removeAt(I)Ljava/lang/Object;

    .line 2168
    if-eqz v7, :cond_18

    iget-object v0, v13, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    invoke-virtual {v7, v0}, Lo/ᒢ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    move-object v15, v0

    goto :goto_10

    :cond_18
    const/4 v15, 0x0

    .line 2170
    :goto_10
    iget v0, v14, Landroid/support/v7/widget/RecyclerView$ᐝ;->left:I

    iget v1, v14, Landroid/support/v7/widget/RecyclerView$ᐝ;->top:I

    move-object/from16 v2, p0

    invoke-direct {v2, v13, v15, v0, v1}, Landroid/support/v7/widget/RecyclerView;->ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;Landroid/graphics/Rect;II)V

    .line 2162
    :cond_19
    add-int/lit8 v12, v12, -0x1

    goto :goto_f

    .line 2176
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bo:Lo/ᒢ;

    invoke-virtual {v0}, Lo/ᒢ;->size()I

    move-result v9

    .line 2177
    const/4 v12, 0x0

    :goto_11
    if-ge v12, v9, :cond_1d

    .line 2178
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bo:Lo/ᒢ;

    invoke-virtual {v0, v12}, Lo/ᒢ;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    move-object v13, v0

    .line 2179
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bo:Lo/ᒢ;

    invoke-virtual {v0, v12}, Lo/ᒢ;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ᐝ;

    move-object v14, v0

    .line 2180
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bn:Lo/ᒢ;

    invoke-virtual {v0, v13}, Lo/ᒢ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ᐝ;

    move-object v15, v0

    .line 2181
    if-eqz v15, :cond_1c

    if-eqz v14, :cond_1c

    .line 2182
    iget v0, v15, Landroid/support/v7/widget/RecyclerView$ᐝ;->left:I

    iget v1, v14, Landroid/support/v7/widget/RecyclerView$ᐝ;->left:I

    if-ne v0, v1, :cond_1b

    iget v0, v15, Landroid/support/v7/widget/RecyclerView$ᐝ;->top:I

    iget v1, v14, Landroid/support/v7/widget/RecyclerView$ᐝ;->top:I

    if-eq v0, v1, :cond_1c

    .line 2183
    :cond_1b
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->setIsRecyclable(Z)V

    .line 2188
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ai:Landroid/support/v7/widget/RecyclerView$ˎ;

    move-object v1, v13

    iget v2, v15, Landroid/support/v7/widget/RecyclerView$ᐝ;->left:I

    iget v3, v15, Landroid/support/v7/widget/RecyclerView$ᐝ;->top:I

    iget v4, v14, Landroid/support/v7/widget/RecyclerView$ᐝ;->left:I

    iget v5, v14, Landroid/support/v7/widget/RecyclerView$ᐝ;->top:I

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$ˎ;->ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;IIII)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2190
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->⁀()V

    .line 2177
    :cond_1c
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_11

    .line 2196
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bp:Lo/ᒢ;

    if-eqz v0, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bp:Lo/ᒢ;

    invoke-virtual {v0}, Lo/ᒢ;->size()I

    move-result v9

    goto :goto_12

    :cond_1e
    const/4 v9, 0x0

    .line 2198
    :goto_12
    add-int/lit8 v12, v9, -0x1

    :goto_13
    if-ltz v12, :cond_21

    .line 2199
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bp:Lo/ᒢ;

    invoke-virtual {v0, v12}, Lo/ᒢ;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 2200
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bp:Lo/ᒢ;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ᒢ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    move-object v15, v0

    .line 2201
    iget-object v0, v15, Landroid/support/v7/widget/RecyclerView$ˑ;->bB:Landroid/view/View;

    move-object/from16 v16, v0

    .line 2202
    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴐ()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2203
    goto :goto_14

    .line 2207
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$ʾ;->ᐝ(Landroid/support/v7/widget/RecyclerView$ʾ;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$ʾ;->ᐝ(Landroid/support/v7/widget/RecyclerView$ʾ;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2209
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Lo/ᒢ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ˑ;

    move-object/from16 v1, p0

    invoke-direct {v1, v15, v0}, Landroid/support/v7/widget/RecyclerView;->ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;Landroid/support/v7/widget/RecyclerView$ˑ;)V

    .line 2198
    :cond_20
    :goto_14
    add-int/lit8 v12, v12, -0x1

    goto :goto_13

    .line 2215
    :cond_21
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->ⁱ(Z)V

    .line 2216
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˎ(Landroid/support/v7/widget/RecyclerView$ʾ;)V

    .line 2217
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ˉ;->ʎ:I

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˎ(Landroid/support/v7/widget/RecyclerView$ˉ;I)I

    .line 2218
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v7/widget/RecyclerView;->ac:Z

    .line 2219
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˎ(Landroid/support/v7/widget/RecyclerView$ˉ;Z)Z

    .line 2220
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$ˉ;->ˏ(Landroid/support/v7/widget/RecyclerView$ˉ;Z)Z

    .line 2221
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v7/widget/RecyclerView;->ad:Z

    .line 2222
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ˊ(Landroid/support/v7/widget/RecyclerView$ʻ;Z)Z

    .line 2223
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$ʾ;->ᐝ(Landroid/support/v7/widget/RecyclerView$ʾ;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 2224
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$ʾ;->ᐝ(Landroid/support/v7/widget/RecyclerView$ʾ;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2226
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ar:Landroid/support/v7/widget/RecyclerView$ˉ;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$ˉ;->bp:Lo/ᒢ;

    .line 2228
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->ay:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->ay:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    move-object/from16 v2, p0

    invoke-direct {v2, v0, v1}, Landroid/support/v7/widget/RecyclerView;->ᐣ(II)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2229
    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->ᵕ(II)V

    .line 2231
    :cond_23
    return-void
.end method

.method 灬()V
    .locals 5

    .line 2430
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0}, Lo/ᵇ;->ﻴ()I

    move-result v2

    .line 2431
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 2432
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0, v3}, Lo/ᵇ;->ᵌ(I)Landroid/view/View;

    move-result-object v4

    .line 2433
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ʼ;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$ʼ;->aQ:Z

    .line 2431
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2435
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʾ;->灬()V

    .line 2436
    return-void
.end method

.method ﭙ()V
    .locals 4

    .line 2539
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0}, Lo/ᵇ;->ﻴ()I

    move-result v1

    .line 2540
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 2541
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0, v2}, Lo/ᵇ;->ᵌ(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v3

    .line 2546
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴐ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2547
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴄ()V

    .line 2540
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2550
    :cond_1
    return-void
.end method

.method ﮂ()V
    .locals 4

    .line 2553
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0}, Lo/ᵇ;->ﻴ()I

    move-result v1

    .line 2554
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 2555
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0, v2}, Lo/ᵇ;->ᵌ(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v3

    .line 2556
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴐ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2557
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᕻ()V

    .line 2554
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2560
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʾ;->ﮂ()V

    .line 2561
    return-void
.end method

.method public ﮄ()V
    .locals 6

    .line 2675
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0}, Lo/ᵇ;->getChildCount()I

    move-result v2

    .line 2676
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_7

    .line 2677
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0, v3}, Lo/ᵇ;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v4

    .line 2679
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴐ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2680
    goto :goto_1

    .line 2682
    :cond_0
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ˑ;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ḯ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2683
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_1

    .line 2684
    :cond_2
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ἰ()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2685
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->O:Landroid/support/v7/widget/RecyclerView$if;

    iget v1, v4, Landroid/support/v7/widget/RecyclerView$ˑ;->Ύ:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$if;->getItemViewType(I)I

    move-result v5

    .line 2686
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ˑ;->getItemViewType()I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 2688
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ˑ;->Ἱ()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->‿()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2689
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->O:Landroid/support/v7/widget/RecyclerView$if;

    iget v1, v4, Landroid/support/v7/widget/RecyclerView$ˑ;->Ύ:I

    invoke-virtual {v0, v4, v1}, Landroid/support/v7/widget/RecyclerView$if;->ˋ(Landroid/support/v7/widget/RecyclerView$ˑ;I)V

    goto :goto_1

    .line 2694
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_1

    .line 2699
    :cond_5
    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->addFlags(I)V

    .line 2700
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 2676
    :cond_6
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 2704
    :cond_7
    return-void
.end method

.method public ﹴ(I)V
    .locals 2

    .line 964
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ṙ()V

    .line 965
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    if-nez v0, :cond_0

    .line 966
    const-string v0, "RecyclerView"

    const-string v1, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    return-void

    .line 970
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Landroid/support/v7/widget/RecyclerView$ʻ;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$ʻ;->ﹴ(I)V

    .line 971
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    .line 972
    return-void
.end method

.method ﺋ()V
    .locals 4

    .line 2726
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0}, Lo/ᵇ;->ﻴ()I

    move-result v1

    .line 2727
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 2728
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Lo/ᵇ;

    invoke-virtual {v0, v2}, Lo/ᵇ;->ᵌ(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->ᗮ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v3

    .line 2729
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ˑ;->ᴐ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2730
    const/4 v0, 0x6

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->addFlags(I)V

    .line 2727
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2733
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->灬()V

    .line 2734
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v7/widget/RecyclerView$ʾ;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ʾ;->ﺋ()V

    .line 2735
    return-void
.end method
