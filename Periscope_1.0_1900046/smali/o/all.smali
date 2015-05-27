.class public Lo/all;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Landroid/support/v4/view/ViewPager$aux;


# instance fields
.field private bLO:I

.field private bLP:Landroid/support/v4/view/ViewPager$aux;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lo/all;->bLO:I

    .line 20
    invoke-direct {p0, p1, p2}, Lo/all;->ˏ(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lo/all;->bLO:I

    .line 25
    invoke-direct {p0, p1, p2}, Lo/all;->ˏ(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method private ˏ(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lo/vh$if;->DotsPageIndicator:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 32
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    .line 33
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    .line 34
    if-le v6, v5, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Selected position is out of bounds!"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 38
    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_1

    .line 39
    const v0, 0x7f030037

    invoke-virtual {v7, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lo/all;->ᔄ(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    goto :goto_1

    .line 43
    :catchall_0
    move-exception v9

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    throw v9

    .line 45
    :goto_1
    return-void
.end method

.method private ᔄ(I)V
    .locals 4

    .line 48
    iget v0, p0, Lo/all;->bLO:I

    if-eq v0, p1, :cond_1

    .line 49
    iput p1, p0, Lo/all;->bLO:I

    .line 51
    invoke-virtual {p0}, Lo/all;->getChildCount()I

    move-result v1

    .line 52
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 53
    invoke-virtual {p0, v2}, Lo/all;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    move-object v3, v0

    .line 54
    iget v0, p0, Lo/all;->bLO:I

    if-ne v2, v0, :cond_0

    .line 55
    const v0, 0x7f020088

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 57
    :cond_0
    const v0, 0x7f020089

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_1
    return-void
.end method


# virtual methods
.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$aux;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lo/all;->bLP:Landroid/support/v4/view/ViewPager$aux;

    .line 65
    return-void
.end method

.method public ʹ(I)V
    .locals 1

    .line 84
    iget-object v0, p0, Lo/all;->bLP:Landroid/support/v4/view/ViewPager$aux;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lo/all;->bLP:Landroid/support/v4/view/ViewPager$aux;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$aux;->ʹ(I)V

    .line 87
    :cond_0
    return-void
.end method

.method public ˊ(IFI)V
    .locals 1

    .line 69
    iget-object v0, p0, Lo/all;->bLP:Landroid/support/v4/view/ViewPager$aux;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lo/all;->bLP:Landroid/support/v4/view/ViewPager$aux;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$aux;->ˊ(IFI)V

    .line 72
    :cond_0
    return-void
.end method

.method public ﾞ(I)V
    .locals 1

    .line 76
    invoke-direct {p0, p1}, Lo/all;->ᔄ(I)V

    .line 77
    iget-object v0, p0, Lo/all;->bLP:Landroid/support/v4/view/ViewPager$aux;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lo/all;->bLP:Landroid/support/v4/view/ViewPager$aux;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$aux;->ﾞ(I)V

    .line 80
    :cond_0
    return-void
.end method
