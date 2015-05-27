.class public Lo/ajb;
.super Lo/ajn;
.source ""


# instance fields
.field private final bGY:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<Ljava/lang/String;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/zo;Lo/amw;)V
    .locals 1

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lo/ajn;-><init>(Landroid/content/Context;Lo/zo;Lo/amw;)V

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/ajb;->bGY:Ljava/util/HashSet;

    .line 25
    new-instance v0, Lo/ajc;

    invoke-direct {v0, p0, p2}, Lo/ajc;-><init>(Lo/ajb;Lo/zo;)V

    iput-object v0, p0, Lo/ajb;->bHz:Lo/ajo;

    .line 31
    return-void
.end method

.method static synthetic ˊ(Lo/ajb;)Ljava/util/HashSet;
    .locals 1

    .line 18
    iget-object v0, p0, Lo/ajb;->bGY:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public Aa()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/HashSet<Ljava/lang/String;>;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lo/ajb;->bGY:Ljava/util/HashSet;

    return-object v0
.end method

.method public selectAll()V
    .locals 4

    .line 49
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lo/ajb;->getItemCount()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 50
    invoke-virtual {p0, v2}, Lo/ajb;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 51
    invoke-virtual {p0, v2}, Lo/ajb;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/api/PsUser;

    move-object v3, v0

    .line 52
    iget-object v0, p0, Lo/ajb;->bGY:Ljava/util/HashSet;

    iget-object v1, v3, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_1
    return-void
.end method

.method public zY()V
    .locals 1

    .line 58
    iget-object v0, p0, Lo/ajb;->bGY:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 59
    return-void
.end method

.method public zZ()Z
    .locals 4

    .line 62
    const/4 v2, 0x0

    .line 63
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lo/ajb;->getItemCount()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 64
    invoke-virtual {p0, v3}, Lo/ajb;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 65
    iget-object v0, p0, Lo/ajb;->bGY:Ljava/util/HashSet;

    invoke-virtual {p0, v3}, Lo/ajb;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/periscope/android/api/PsUser;

    iget-object v1, v1, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const/4 v2, 0x1

    .line 67
    goto :goto_1

    .line 63
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method protected synthetic ʻ(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ˑ;
    .locals 1

    .line 18
    invoke-virtual {p0, p1}, Lo/ajb;->ᐝ(Landroid/view/ViewGroup;)Lo/ajp;

    move-result-object v0

    return-object v0
.end method

.method protected ᐝ(Landroid/view/ViewGroup;)Lo/ajp;
    .locals 4

    .line 35
    iget-object v0, p0, Lo/ajb;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 37
    new-instance v0, Lo/ajp;

    iget-object v1, p0, Lo/ajb;->byZ:Lo/amw;

    invoke-direct {v0, v3, v1}, Lo/ajp;-><init>(Landroid/view/View;Lo/amw;)V

    return-object v0
.end method

.method public ᓭ(Ljava/lang/String;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lo/ajb;->bGY:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lo/ajb;->bGY:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lo/ajb;->bGY:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    :goto_0
    return-void
.end method
