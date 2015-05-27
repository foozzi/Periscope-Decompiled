.class public Lo/aln;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/support/v4/view/ViewPager$aux;


# instance fields
.field bMc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Landroid/support/v4/view/ViewPager$aux;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/aln;->bMc:Ljava/util/List;

    .line 17
    return-void
.end method


# virtual methods
.method public ʹ(I)V
    .locals 3

    .line 39
    iget-object v0, p0, Lo/aln;->bMc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$aux;

    move-object v2, v0

    .line 40
    invoke-interface {v2, p1}, Landroid/support/v4/view/ViewPager$aux;->ʹ(I)V

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method

.method public ˊ(IFI)V
    .locals 3

    .line 25
    iget-object v0, p0, Lo/aln;->bMc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$aux;

    move-object v2, v0

    .line 26
    invoke-interface {v2, p1, p2, p3}, Landroid/support/v4/view/ViewPager$aux;->ˊ(IFI)V

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method public ˊ(Landroid/support/v4/view/ViewPager$aux;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lo/aln;->bMc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method

.method public ﾞ(I)V
    .locals 3

    .line 32
    iget-object v0, p0, Lo/aln;->bMc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$aux;

    move-object v2, v0

    .line 33
    invoke-interface {v2, p1}, Landroid/support/v4/view/ViewPager$aux;->ﾞ(I)V

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method
