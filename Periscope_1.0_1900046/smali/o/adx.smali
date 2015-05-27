.class public Lo/adx;
.super Landroid/support/v7/widget/RecyclerView$if;
.source ""

# interfaces
.implements Lo/zz$if;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/adx$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$if<Lo/aef;>;Lo/zz$if;"
    }
.end annotation


# instance fields
.field private final bzc:Lo/ady;

.field private final bzu:Lo/aej;

.field private final bzv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/bq;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/aej;Lo/ady;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$if;-><init>()V

    .line 23
    iput-object p1, p0, Lo/adx;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lo/adx;->bzu:Lo/aej;

    .line 25
    iget-object v0, p0, Lo/adx;->bzu:Lo/aej;

    invoke-virtual {v0, p0}, Lo/aej;->ˊ(Lo/zz$if;)V

    .line 26
    iput-object p3, p0, Lo/adx;->bzc:Lo/ady;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo/adx;->bzv:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 81
    iget-object v0, p0, Lo/adx;->bzu:Lo/aej;

    invoke-virtual {v0}, Lo/aej;->vc()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 88
    invoke-virtual {p0, p1}, Lo/adx;->ř(I)Lo/aeh;

    move-result-object v1

    .line 89
    invoke-interface {v1}, Lo/aeh;->xy()Lo/aeh$ʻ;

    move-result-object v0

    invoke-virtual {v0}, Lo/aeh$ʻ;->ordinal()I

    move-result v0

    return v0
.end method

.method public onDataSetChanged()V
    .locals 0

    .line 94
    return-void
.end method

.method public xq()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/List<Lo/bq;>;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lo/adx;->bzv:Ljava/util/List;

    return-object v0
.end method

.method public ř(I)Lo/aeh;
    .locals 1

    .line 76
    iget-object v0, p0, Lo/adx;->bzu:Lo/aej;

    invoke-virtual {v0, p1}, Lo/aej;->ǰ(I)Lo/aeh;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;I)V
    .locals 1

    .line 14
    move-object v0, p1

    check-cast v0, Lo/aef;

    invoke-virtual {p0, v0, p2}, Lo/adx;->ˊ(Lo/aef;I)V

    return-void
.end method

.method public ˊ(Lo/aef;I)V
    .locals 1

    .line 72
    invoke-virtual {p0, p2}, Lo/adx;->ř(I)Lo/aeh;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/aef;->ˊ(Lo/aeh;)V

    .line 73
    return-void
.end method

.method public synthetic ˎ(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ˑ;
    .locals 1

    .line 14
    invoke-virtual {p0, p1, p2}, Lo/adx;->ᐝ(Landroid/view/ViewGroup;I)Lo/aef;

    move-result-object v0

    return-object v0
.end method

.method public ᐝ(Landroid/view/ViewGroup;I)Lo/aef;
    .locals 4

    .line 36
    invoke-static {}, Lo/aeh$ʻ;->values()[Lo/aeh$ʻ;

    move-result-object v0

    aget-object v2, v0, p2

    .line 39
    sget-object v0, Lo/adx$1;->bzw:[I

    invoke-virtual {v2}, Lo/aeh$ʻ;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 41
    :pswitch_0
    iget-object v0, p0, Lo/adx;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lo/adx;->bzc:Lo/ady;

    invoke-static {v0, p1, v1}, Lo/aef$ˊ;->ˋ(Landroid/content/Context;Landroid/view/ViewGroup;Lo/ady;)Lo/aef$ˊ;

    move-result-object v0

    return-object v0

    .line 44
    :pswitch_1
    iget-object v0, p0, Lo/adx;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lo/adx;->bzc:Lo/ady;

    invoke-static {v0, p1, v1}, Lo/aef$ˎ;->ˏ(Landroid/content/Context;Landroid/view/ViewGroup;Lo/ady;)Lo/aef$ˎ;

    move-result-object v3

    .line 46
    iget-object v0, p0, Lo/adx;->bzv:Ljava/util/List;

    iget-object v1, v3, Lo/aef$ˎ;->bzN:Lo/bq;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    return-object v3

    .line 50
    :pswitch_2
    iget-object v0, p0, Lo/adx;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lo/adx;->bzc:Lo/ady;

    invoke-static {v0, p1, v1}, Lo/aef$if;->ˊ(Landroid/content/Context;Landroid/view/ViewGroup;Lo/ady;)Lo/aef$if;

    move-result-object v0

    return-object v0

    .line 53
    :pswitch_3
    iget-object v0, p0, Lo/adx;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lo/adx;->bzc:Lo/ady;

    invoke-static {v0, p1, v1}, Lo/aef$ˋ;->ˎ(Landroid/content/Context;Landroid/view/ViewGroup;Lo/ady;)Lo/aef$ˋ;

    move-result-object v0

    return-object v0

    .line 56
    :pswitch_4
    iget-object v0, p0, Lo/adx;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lo/adx;->bzc:Lo/ady;

    invoke-static {v0, p1, v1}, Lo/aef$ᐝ;->ʼ(Landroid/content/Context;Landroid/view/ViewGroup;Lo/ady;)Lo/aef$ᐝ;

    move-result-object v0

    return-object v0

    .line 59
    :pswitch_5
    iget-object v0, p0, Lo/adx;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lo/adx;->bzc:Lo/ady;

    invoke-static {v0, p1, v1}, Lo/aef$aux;->ʻ(Landroid/content/Context;Landroid/view/ViewGroup;Lo/ady;)Lo/aef$aux;

    move-result-object v0

    return-object v0

    .line 62
    :pswitch_6
    iget-object v0, p0, Lo/adx;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lo/adx;->bzc:Lo/ady;

    invoke-static {v0, p1, v1}, Lo/aef$ˏ;->ᐝ(Landroid/content/Context;Landroid/view/ViewGroup;Lo/ady;)Lo/aef$ˏ;

    move-result-object v0

    return-object v0

    .line 65
    :goto_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported view type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public ᐟ(II)V
    .locals 0

    .line 107
    return-void
.end method

.method public יּ(II)V
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lo/adx;->ˢ(I)V

    .line 103
    return-void
.end method
