.class abstract Lo/ajs;
.super Landroid/support/v7/widget/RecyclerView$if;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Holder:Landroid/support/v7/widget/RecyclerView$\u02d1;Binder::Lo/amx;>Landroid/support/v7/widget/RecyclerView$if;"
    }
.end annotation


# instance fields
.field protected final bHA:Lo/zo;

.field private final bHM:Lo/ajh;

.field protected final byZ:Lo/amw;

.field protected final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/zo;Lo/amw;Lo/ajh;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$if;-><init>()V

    .line 33
    iput-object p1, p0, Lo/ajs;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lo/ajs;->bHA:Lo/zo;

    .line 35
    iput-object p3, p0, Lo/ajs;->byZ:Lo/amw;

    .line 36
    iput-object p4, p0, Lo/ajs;->bHM:Lo/ajh;

    .line 37
    return-void
.end method


# virtual methods
.method protected abstract Ao()Lo/amx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBinder;"
        }
    .end annotation
.end method

.method protected getItem(I)Ljava/lang/Object;
    .locals 1

    .line 87
    iget-object v0, p0, Lo/ajs;->bHA:Lo/zo;

    invoke-virtual {v0, p1}, Lo/zo;->ﾅ(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 82
    iget-object v0, p0, Lo/ajs;->bHA:Lo/zo;

    invoke-virtual {v0}, Lo/zo;->vc()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 92
    invoke-virtual {p0, p1}, Lo/ajs;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 93
    instance-of v0, v1, Lo/aad$if;

    if-eqz v0, :cond_1

    .line 94
    if-nez p1, :cond_0

    .line 95
    const/4 v0, 0x3

    return v0

    .line 97
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 99
    :cond_1
    const/4 v0, 0x2

    return v0
.end method

.method protected abstract ʻ(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ˑ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/view/ViewGroup;)THolder;"
        }
    .end annotation
.end method

.method public ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;I)V
    .locals 3

    .line 64
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ˑ;->getItemViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 67
    :pswitch_0
    invoke-virtual {p0, p2}, Lo/ajs;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aad$if;

    move-object v2, v0

    .line 68
    iget-object v0, p0, Lo/ajs;->bHM:Lo/ajh;

    move-object v1, p1

    check-cast v1, Lo/aji;

    invoke-virtual {v0, v1, v2, p2}, Lo/ajh;->ˊ(Lo/aji;Lo/aad$if;I)V

    .line 69
    goto :goto_0

    .line 72
    :pswitch_1
    invoke-virtual {p0, p2}, Lo/ajs;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/api/PsUser;

    move-object v2, v0

    .line 73
    invoke-virtual {p0}, Lo/ajs;->Ao()Lo/amx;

    move-result-object v0

    invoke-interface {v0, p1, v2, p2}, Lo/amx;->ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;Ljava/lang/Object;I)V

    .line 74
    .line 77
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ˎ(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ˑ;
    .locals 4

    .line 45
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 47
    :pswitch_0
    iget-object v0, p0, Lo/ajs;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 49
    new-instance v0, Lo/aji;

    invoke-direct {v0, v3}, Lo/aji;-><init>(Landroid/view/View;)V

    return-object v0

    .line 52
    :pswitch_1
    iget-object v0, p0, Lo/ajs;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 53
    new-instance v0, Lo/aji;

    invoke-direct {v0, v3}, Lo/aji;-><init>(Landroid/view/View;)V

    return-object v0

    .line 57
    :goto_0
    :pswitch_2
    invoke-virtual {p0, p1}, Lo/ajs;->ʻ(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
