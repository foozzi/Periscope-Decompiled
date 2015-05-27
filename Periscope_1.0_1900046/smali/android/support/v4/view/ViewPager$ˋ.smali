.class public Landroid/support/v4/view/ViewPager$ˋ;
.super Landroid/view/ViewGroup$LayoutParams;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u02cb"
.end annotation


# instance fields
.field public gravity:I

.field position:I

.field ﬧ:F

.field public ﭝ:Z

.field ﭥ:Z

.field ﮆ:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2874
    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2855
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/ViewPager$ˋ;->ﬧ:F

    .line 2875
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 2878
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2855
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/ViewPager$ˋ;->ﬧ:F

    .line 2880
    invoke-static {}, Landroid/support/v4/view/ViewPager;->ǃ()[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 2881
    const/4 v0, 0x0

    const/16 v1, 0x30

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager$ˋ;->gravity:I

    .line 2882
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2883
    return-void
.end method
