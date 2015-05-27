.class public Lo/aig;
.super Lo/ﹲ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aig$if;
    }
.end annotation


# instance fields
.field private final bFA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/aif;>;"
        }
    .end annotation
.end field

.field private final bGj:Lo/aln;


# direct methods
.method public constructor <init>(Ljava/util/List;Lo/aln;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lo/aif;>;Lo/aln;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lo/ﹲ;-><init>()V

    .line 31
    iput-object p1, p0, Lo/aig;->bFA:Ljava/util/List;

    .line 32
    iput-object p2, p0, Lo/aig;->bGj:Lo/aln;

    .line 33
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 37
    iget-object v0, p0, Lo/aig;->bFA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 3

    .line 91
    iget-object v0, p0, Lo/aig;->bFA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aif;

    move-object v2, v0

    .line 92
    invoke-virtual {v2}, Lo/aif;->zH()Lo/aif$if;

    move-result-object v0

    invoke-interface {v0}, Lo/aif$if;->pause()V

    .line 93
    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 97
    iget-object v0, p0, Lo/aig;->bFA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aif;

    move-object v2, v0

    .line 98
    invoke-virtual {v2}, Lo/aif;->zH()Lo/aif$if;

    move-result-object v0

    invoke-interface {v0}, Lo/aif$if;->resume()V

    .line 99
    goto :goto_0

    .line 100
    :cond_0
    return-void
.end method

.method public ˊ(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 10

    .line 47
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 48
    iget-object v0, p0, Lo/aig;->bFA:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aif;

    move-object v4, v0

    .line 50
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/aij;

    move-object v5, v0

    .line 52
    invoke-virtual {v5, p2}, Lo/aij;->setId(I)V

    .line 53
    new-instance v0, Lo/aig$if;

    invoke-direct {v0, v4, v5}, Lo/aig$if;-><init>(Lo/aif;Lo/aij;)V

    invoke-virtual {v5, v0}, Lo/aij;->setOnRefreshListener(Lo/ﺩ$if;)V

    .line 54
    sget-object v0, Lo/akl;->bIq:[I

    invoke-virtual {v5, v0}, Lo/aij;->setColorSchemeResources([I)V

    .line 56
    const v0, 0x7f0b005f

    invoke-virtual {v5, v0}, Lo/aij;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    move-object v6, v0

    .line 57
    invoke-virtual {v4}, Lo/aif;->zG()Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$if;)V

    .line 58
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$ʻ;)V

    .line 59
    iget v0, v4, Lo/aif;->bGi:I

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->setBackgroundResource(I)V

    .line 60
    invoke-virtual {v4}, Lo/aif;->zI()Landroid/support/v7/widget/RecyclerView$aux;

    move-result-object v7

    .line 61
    if-eqz v7, :cond_0

    .line 62
    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->ˊ(Landroid/support/v7/widget/RecyclerView$aux;)V

    .line 65
    :cond_0
    const v0, 0x7f0b00ce

    invoke-virtual {v5, v0}, Lo/aij;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    move-object v8, v0

    .line 67
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lo/aig;->bGj:Lo/aln;

    new-instance v1, Lo/ail;

    invoke-direct {v1, v5}, Lo/ail;-><init>(Lo/aik;)V

    invoke-virtual {v0, v1}, Lo/aln;->ˊ(Landroid/support/v4/view/ViewPager$aux;)V

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p1, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 74
    invoke-virtual {v4}, Lo/aif;->zH()Lo/aif$if;

    move-result-object v9

    .line 75
    invoke-interface {v9}, Lo/aif$if;->init()V

    .line 76
    new-instance v0, Lo/aih;

    invoke-direct {v0, p0, v8}, Lo/aih;-><init>(Lo/aig;Landroid/widget/ProgressBar;)V

    invoke-interface {v9, v0}, Lo/aif$if;->ˊ(Lo/aif$if$if;)V

    .line 87
    return-object v4
.end method

.method public ˊ(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    .line 104
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 105
    iget-object v0, p0, Lo/aig;->bFA:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aif;

    move-object v1, v0

    .line 106
    invoke-virtual {v1}, Lo/aif;->zH()Lo/aif$if;

    move-result-object v0

    invoke-interface {v0}, Lo/aif$if;->destroy()V

    .line 107
    return-void
.end method

.method public ˋ(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 2

    .line 42
    iget-object v0, p0, Lo/aig;->bFA:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aif;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
