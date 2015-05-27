.class public Lo/ajt;
.super Lo/ajs;
.source ""

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ajt$1;,
        Lo/ajt$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/ajs<Lo/akc;Lo/akb;>;Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private final bHJ:Lo/akd;

.field private final bHK:Lo/akb;

.field private bHN:Lo/ajt$if;

.field private bHO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Ltv/periscope/android/api/PsUser;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/aaf;Lo/akd;Lo/akb;)V
    .locals 2

    .line 30
    new-instance v0, Lo/ajh;

    invoke-direct {v0}, Lo/ajh;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lo/ajs;-><init>(Landroid/content/Context;Lo/zo;Lo/amw;Lo/ajh;)V

    .line 31
    iput-object p3, p0, Lo/ajt;->bHJ:Lo/akd;

    .line 32
    iput-object p4, p0, Lo/ajt;->bHK:Lo/akb;

    .line 33
    return-void
.end method

.method private Aq()I
    .locals 1

    .line 65
    invoke-super {p0}, Lo/ajs;->getItemCount()I

    move-result v0

    return v0
.end method

.method static synthetic ˊ(Lo/ajt;)I
    .locals 1

    .line 19
    invoke-direct {p0}, Lo/ajt;->Aq()I

    move-result v0

    return v0
.end method

.method static synthetic ˊ(Lo/ajt;I)Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-direct {p0, p1}, Lo/ajt;->ژ(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic ˊ(Lo/ajt;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 19
    iput-object p1, p0, Lo/ajt;->bHO:Ljava/util/List;

    return-object p1
.end method

.method private ژ(I)Ljava/lang/Object;
    .locals 1

    .line 78
    invoke-super {p0, p1}, Lo/ajs;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected synthetic Ao()Lo/amx;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lo/ajt;->Ap()Lo/akb;

    move-result-object v0

    return-object v0
.end method

.method protected Ap()Lo/akb;
    .locals 1

    .line 44
    iget-object v0, p0, Lo/ajt;->bHK:Lo/akb;

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .line 49
    iget-object v0, p0, Lo/ajt;->bHN:Lo/ajt$if;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lo/ajt$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/ajt$if;-><init>(Lo/ajt;Lo/ajt$1;)V

    iput-object v0, p0, Lo/ajt;->bHN:Lo/ajt$if;

    .line 52
    :cond_0
    iget-object v0, p0, Lo/ajt;->bHN:Lo/ajt$if;

    return-object v0
.end method

.method protected getItem(I)Ljava/lang/Object;
    .locals 1

    .line 70
    iget-object v0, p0, Lo/ajt;->bHO:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lo/ajt;->bHO:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    invoke-direct {p0, p1}, Lo/ajt;->ژ(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 57
    iget-object v0, p0, Lo/ajt;->bHO:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lo/ajt;->bHO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 60
    :cond_0
    invoke-direct {p0}, Lo/ajt;->Aq()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItemViewType(I)I
    .locals 1

    .line 19
    invoke-super {p0, p1}, Lo/ajs;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public synthetic ʻ(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ˑ;
    .locals 1

    .line 19
    invoke-virtual {p0, p1}, Lo/ajt;->ʼ(Landroid/view/ViewGroup;)Lo/akc;

    move-result-object v0

    return-object v0
.end method

.method public ʼ(Landroid/view/ViewGroup;)Lo/akc;
    .locals 4

    .line 37
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030055

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 39
    new-instance v0, Lo/akc;

    iget-object v1, p0, Lo/ajt;->bHJ:Lo/akd;

    const v2, 0x7f0b010f

    invoke-direct {v0, v3, v1, v2}, Lo/akc;-><init>(Landroid/view/View;Lo/akd;I)V

    return-object v0
.end method

.method public bridge synthetic ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;I)V
    .locals 0

    .line 19
    invoke-super {p0, p1, p2}, Lo/ajs;->ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;I)V

    return-void
.end method

.method public bridge synthetic ˎ(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ˑ;
    .locals 1

    .line 19
    invoke-super {p0, p1, p2}, Lo/ajs;->ˎ(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v0

    return-object v0
.end method
