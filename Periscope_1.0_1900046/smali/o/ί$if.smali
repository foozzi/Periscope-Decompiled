.class public Lo/ί$if;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ί;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field public gravity:I

.field public weight:F


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1791
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1771
    const/4 v0, -0x1

    iput v0, p0, Lo/ί$if;->gravity:I

    .line 1792
    const/4 v0, 0x0

    iput v0, p0, Lo/ί$if;->weight:F

    .line 1793
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1777
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1771
    const/4 v0, -0x1

    iput v0, p0, Lo/ί$if;->gravity:I

    .line 1778
    sget-object v0, Lo/ڊ$ʽ;->LinearLayoutCompat_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1781
    sget v0, Lo/ڊ$ʽ;->LinearLayoutCompat_Layout_android_layout_weight:I

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lo/ί$if;->weight:F

    .line 1782
    sget v0, Lo/ڊ$ʽ;->LinearLayoutCompat_Layout_android_layout_gravity:I

    const/4 v1, -0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lo/ί$if;->gravity:I

    .line 1784
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1785
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1814
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1771
    const/4 v0, -0x1

    iput v0, p0, Lo/ί$if;->gravity:I

    .line 1815
    return-void
.end method
