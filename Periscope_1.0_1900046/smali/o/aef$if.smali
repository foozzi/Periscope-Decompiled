.class public Lo/aef$if;
.super Lo/aef;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/aef<Lo/aeh$if;>;Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final bzE:Lo/alh;

.field private final bzF:Landroid/view/View;

.field private bzG:Lo/adv;

.field private bzH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/adv;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/ady;)V
    .locals 1

    .line 204
    invoke-direct {p0, p1, p2}, Lo/aef;-><init>(Landroid/view/View;Lo/ady;)V

    .line 205
    const v0, 0x7f0b005b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/alh;

    iput-object v0, p0, Lo/aef$if;->bzE:Lo/alh;

    .line 206
    iget-object v0, p0, Lo/aef$if;->bzE:Lo/alh;

    invoke-virtual {v0, p0}, Lo/alh;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    const v0, 0x7f0b005a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/aef$if;->bzF:Landroid/view/View;

    .line 208
    iget-object v0, p0, Lo/aef$if;->bzF:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    return-void
.end method

.method private xw()V
    .locals 3

    .line 228
    iget-object v0, p0, Lo/aef$if;->bzE:Lo/alh;

    iget-object v1, p0, Lo/aef$if;->bzG:Lo/adv;

    iget-object v2, p0, Lo/aef$if;->bB:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/adv;->ʲ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/aef$if;->bzG:Lo/adv;

    invoke-virtual {v2}, Lo/adv;->xj()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lo/alh;->setLabel(Ljava/lang/CharSequence;I)V

    .line 230
    return-void
.end method

.method public static ˊ(Landroid/content/Context;Landroid/view/ViewGroup;Lo/ady;)Lo/aef$if;
    .locals 4

    .line 193
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 195
    new-instance v0, Lo/aef$if;

    invoke-direct {v0, v3, p2}, Lo/aef$if;-><init>(Landroid/view/View;Lo/ady;)V

    return-object v0
.end method

.method private ˊ(Lo/adv;)V
    .locals 1

    .line 250
    invoke-virtual {p1}, Lo/adv;->execute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0}, Lo/aef$if;->xw()V

    .line 253
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 236
    :sswitch_0
    iget-object v0, p0, Lo/aef$if;->bzc:Lo/ady;

    iget-object v1, p0, Lo/aef$if;->bzH:Ljava/util/List;

    invoke-interface {v0, v1}, Lo/ady;->י(Ljava/util/List;)V

    .line 237
    goto :goto_0

    .line 240
    :sswitch_1
    iget-object v0, p0, Lo/aef$if;->bzG:Lo/adv;

    invoke-direct {p0, v0}, Lo/aef$if;->ˊ(Lo/adv;)V

    .line 241
    .line 247
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0b005a -> :sswitch_0
        0x7f0b005b -> :sswitch_1
    .end sparse-switch
.end method

.method public ˊ(Lo/aeh$if;)V
    .locals 3

    .line 213
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lo/aeh$if;->xz()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 214
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/adv;

    iput-object v0, p0, Lo/aef$if;->bzG:Lo/adv;

    .line 215
    iput-object v2, p0, Lo/aef$if;->bzH:Ljava/util/List;

    .line 216
    invoke-direct {p0}, Lo/aef$if;->xw()V

    .line 219
    iget-object v0, p0, Lo/aef$if;->bzH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lo/aef$if;->bzF:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lo/aef$if;->bzF:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 224
    :goto_0
    return-void
.end method

.method public bridge synthetic ˊ(Lo/aeh;)V
    .locals 1

    .line 189
    move-object v0, p1

    check-cast v0, Lo/aeh$if;

    invoke-virtual {p0, v0}, Lo/aef$if;->ˊ(Lo/aeh$if;)V

    return-void
.end method
