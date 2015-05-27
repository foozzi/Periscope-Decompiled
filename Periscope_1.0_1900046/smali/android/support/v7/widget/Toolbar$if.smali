.class Landroid/support/v7/widget/Toolbar$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᵉ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "if"
.end annotation


# instance fields
.field final synthetic dM:Landroid/support/v7/widget/Toolbar;

.field dN:Lo/ᵃ;

.field ｼ:Lo/ᵁ;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    .line 1906
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar$if;->dM:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/Toolbar;Lo/כ;)V
    .locals 0

    .line 1906
    invoke-direct {p0, p1}, Landroid/support/v7/widget/Toolbar$if;-><init>(Landroid/support/v7/widget/Toolbar;)V

    return-void
.end method


# virtual methods
.method public ˈ(Z)V
    .locals 6

    .line 1927
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$if;->dN:Lo/ᵃ;

    if-eqz v0, :cond_2

    .line 1928
    const/4 v2, 0x0

    .line 1930
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$if;->ｼ:Lo/ᵁ;

    if-eqz v0, :cond_1

    .line 1931
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$if;->ｼ:Lo/ᵁ;

    invoke-virtual {v0}, Lo/ᵁ;->size()I

    move-result v3

    .line 1932
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 1933
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$if;->ｼ:Lo/ᵁ;

    invoke-virtual {v0, v4}, Lo/ᵁ;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1934
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$if;->dN:Lo/ᵃ;

    if-ne v5, v0, :cond_0

    .line 1935
    const/4 v2, 0x1

    .line 1936
    goto :goto_1

    .line 1932
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1941
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 1943
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$if;->ｼ:Lo/ᵁ;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$if;->dN:Lo/ᵃ;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/Toolbar$if;->ˋ(Lo/ᵁ;Lo/ᵃ;)Z

    .line 1946
    :cond_2
    return-void
.end method

.method public ˊ(Landroid/content/Context;Lo/ᵁ;)V
    .locals 2

    .line 1913
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$if;->ｼ:Lo/ᵁ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$if;->dN:Lo/ᵃ;

    if-eqz v0, :cond_0

    .line 1914
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$if;->ｼ:Lo/ᵁ;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$if;->dN:Lo/ᵃ;

    invoke-virtual {v0, v1}, Lo/ᵁ;->ᐝ(Lo/ᵃ;)Z

    .line 1916
    :cond_0
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar$if;->ｼ:Lo/ᵁ;

    .line 1917
    return-void
.end method

.method public ˊ(Lo/ᵁ;Z)V
    .locals 0

    .line 1959
    return-void
.end method

.method public ˊ(Lo/ᵁ;Lo/ᵃ;)Z
    .locals 3

    .line 1968
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$if;->dM:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->ˊ(Landroid/support/v7/widget/Toolbar;)V

    .line 1969
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$if;->dM:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->ˋ(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$if;->dM:Landroid/support/v7/widget/Toolbar;

    if-eq v0, v1, :cond_0

    .line 1970
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$if;->dM:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$if;->dM:Landroid/support/v7/widget/Toolbar;

    invoke-static {v1}, Landroid/support/v7/widget/Toolbar;->ˋ(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 1972
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$if;->dM:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p2}, Lo/ᵃ;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/Toolbar;->dl:Landroid/view/View;

    .line 1973
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar$if;->dN:Lo/ᵃ;

    .line 1974
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$if;->dM:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dl:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$if;->dM:Landroid/support/v7/widget/Toolbar;

    if-eq v0, v1, :cond_1

    .line 1975
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$if;->dM:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->ΐ()Landroid/support/v7/widget/Toolbar$ˊ;

    move-result-object v2

    .line 1976
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$if;->dM:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->ˎ(Landroid/support/v7/widget/Toolbar;)I

    move-result v0

    and-int/lit8 v0, v0, 0x70

    const v1, 0x800003

    or-int/2addr v0, v1

    iput v0, v2, Landroid/support/v7/widget/Toolbar$ˊ;->gravity:I

    .line 1977
    const/4 v0, 0x2

    iput v0, v2, Landroid/support/v7/widget/Toolbar$ˊ;->dO:I

    .line 1978
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$if;->dM:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dl:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1979
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$if;->dM:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$if;->dM:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->dl:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 1982
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$if;->dM:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/widget/Toolbar;->ˊ(Landroid/support/v7/widget/Toolbar;Z)V

    .line 1983
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$if;->dM:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 1984
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lo/ᵃ;->ﾞ(Z)V

    .line 1986
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$if;->dM:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dl:Landroid/view/View;

    instance-of v0, v0, Lo/ᓱ;

    if-eqz v0, :cond_2

    .line 1987
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$if;->dM:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dl:Landroid/view/View;

    check-cast v0, Lo/ᓱ;

    invoke-interface {v0}, Lo/ᓱ;->onActionViewExpanded()V

    .line 1990
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public ˊ(Lo/ᵡ;)Z
    .locals 1

    .line 1954
    const/4 v0, 0x0

    return v0
.end method

.method public ˋ(Lo/ᵁ;Lo/ᵃ;)Z
    .locals 2

    .line 1997
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$if;->dM:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dl:Landroid/view/View;

    instance-of v0, v0, Lo/ᓱ;

    if-eqz v0, :cond_0

    .line 1998
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$if;->dM:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dl:Landroid/view/View;

    check-cast v0, Lo/ᓱ;

    invoke-interface {v0}, Lo/ᓱ;->onActionViewCollapsed()V

    .line 2001
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$if;->dM:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$if;->dM:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->dl:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2002
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$if;->dM:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$if;->dM:Landroid/support/v7/widget/Toolbar;

    invoke-static {v1}, Landroid/support/v7/widget/Toolbar;->ˋ(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2003
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$if;->dM:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/Toolbar;->dl:Landroid/view/View;

    .line 2005
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$if;->dM:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/Toolbar;->ˊ(Landroid/support/v7/widget/Toolbar;Z)V

    .line 2006
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar$if;->dN:Lo/ᵃ;

    .line 2007
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$if;->dM:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 2008
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lo/ᵃ;->ﾞ(Z)V

    .line 2010
    const/4 v0, 0x1

    return v0
.end method

.method public ᑦ()Z
    .locals 1

    .line 1963
    const/4 v0, 0x0

    return v0
.end method
