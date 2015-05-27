.class Lo/alt;
.super Lo/ﹲ;
.source ""


# instance fields
.field private final bMA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Landroid/support/v7/widget/RecyclerView;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Landroid/support/v7/widget/RecyclerView;>;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lo/ﹲ;-><init>()V

    .line 15
    iput-object p1, p0, Lo/alt;->bMA:Ljava/util/List;

    .line 16
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 20
    iget-object v0, p0, Lo/alt;->bMA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public ˊ(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 30
    iget-object v0, p0, Lo/alt;->bMA:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 31
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 32
    return-object v1
.end method

.method public ˊ(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 37
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 38
    return-void
.end method

.method public ˋ(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
