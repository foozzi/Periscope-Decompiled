.class public Landroid/support/v7/widget/Toolbar$ˊ;
.super Lo/ذ$if;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u02ca"
.end annotation


# instance fields
.field dO:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1829
    invoke-direct {p0, p1, p2}, Lo/ذ$if;-><init>(II)V

    .line 1822
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/Toolbar$ˊ;->dO:I

    .line 1830
    const v0, 0x800013

    iput v0, p0, Landroid/support/v7/widget/Toolbar$ˊ;->gravity:I

    .line 1831
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1825
    invoke-direct {p0, p1, p2}, Lo/ذ$if;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1822
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/Toolbar$ˊ;->dO:I

    .line 1826
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/Toolbar$ˊ;)V
    .locals 1

    .line 1843
    invoke-direct {p0, p1}, Lo/ذ$if;-><init>(Lo/ذ$if;)V

    .line 1822
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/Toolbar$ˊ;->dO:I

    .line 1845
    iget v0, p1, Landroid/support/v7/widget/Toolbar$ˊ;->dO:I

    iput v0, p0, Landroid/support/v7/widget/Toolbar$ˊ;->dO:I

    .line 1846
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1860
    invoke-direct {p0, p1}, Lo/ذ$if;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1822
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/Toolbar$ˊ;->dO:I

    .line 1861
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 1853
    invoke-direct {p0, p1}, Lo/ذ$if;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1822
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/Toolbar$ˊ;->dO:I

    .line 1856
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar$ˊ;->ˎ(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1857
    return-void
.end method

.method public constructor <init>(Lo/ذ$if;)V
    .locals 1

    .line 1849
    invoke-direct {p0, p1}, Lo/ذ$if;-><init>(Lo/ذ$if;)V

    .line 1822
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/Toolbar$ˊ;->dO:I

    .line 1850
    return-void
.end method


# virtual methods
.method ˎ(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 1864
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Landroid/support/v7/widget/Toolbar$ˊ;->leftMargin:I

    .line 1865
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Landroid/support/v7/widget/Toolbar$ˊ;->topMargin:I

    .line 1866
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Landroid/support/v7/widget/Toolbar$ˊ;->rightMargin:I

    .line 1867
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Landroid/support/v7/widget/Toolbar$ˊ;->bottomMargin:I

    .line 1868
    return-void
.end method
