.class public Lo/aim;
.super Lo/aif;
.source ""

# interfaces
.implements Lo/zl;


# instance fields
.field private bFr:Lo/aif$if;

.field private bFu:Lo/aif$if$if;

.field private final bGr:Lo/zn;

.field private final bGs:Lo/ajn;

.field private bGt:Lo/aif$if$ˊ;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lo/ot;Lo/vn;Lo/aad;Lo/amw;Lo/aip;IIIIIIII)V
    .locals 11

    .line 34
    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v7, p11

    move/from16 v8, p12

    move/from16 v9, p13

    move/from16 v10, p14

    invoke-direct/range {v0 .. v10}, Lo/aif;-><init>(Lo/amw;Lo/aip;IIIIIIII)V

    .line 36
    new-instance v0, Lo/zn;

    invoke-direct {v0, p0, p3}, Lo/zn;-><init>(Lo/zl;Lo/vn;)V

    iput-object v0, p0, Lo/aim;->bGr:Lo/zn;

    .line 37
    new-instance v0, Lo/ajn;

    new-instance v1, Lo/aac;

    invoke-direct {v1, p4}, Lo/aac;-><init>(Lo/aad;)V

    move-object/from16 v2, p5

    invoke-direct {v0, p1, v1, v2}, Lo/ajn;-><init>(Landroid/content/Context;Lo/zo;Lo/amw;)V

    iput-object v0, p0, Lo/aim;->bGs:Lo/ajn;

    .line 39
    new-instance v0, Lo/ain;

    invoke-direct {v0, p0, p3, p2}, Lo/ain;-><init>(Lo/aim;Lo/vn;Lo/ot;)V

    iput-object v0, p0, Lo/aim;->bFr:Lo/aif$if;

    .line 74
    return-void
.end method

.method static synthetic ˊ(Lo/aim;Lo/aif$if$if;)Lo/aif$if$if;
    .locals 0

    .line 19
    iput-object p1, p0, Lo/aim;->bFu:Lo/aif$if$if;

    return-object p1
.end method

.method static synthetic ˊ(Lo/aim;Lo/aif$if$ˊ;)Lo/aif$if$ˊ;
    .locals 0

    .line 19
    iput-object p1, p0, Lo/aim;->bGt:Lo/aif$if$ˊ;

    return-object p1
.end method

.method static synthetic ˊ(Lo/aim;)Lo/zn;
    .locals 1

    .line 19
    iget-object v0, p0, Lo/aim;->bGr:Lo/zn;

    return-object v0
.end method


# virtual methods
.method public uT()V
    .locals 1

    .line 106
    iget-object v0, p0, Lo/aim;->bGs:Lo/ajn;

    invoke-virtual {v0}, Lo/ajn;->notifyDataSetChanged()V

    .line 107
    return-void
.end method

.method public uU()V
    .locals 1

    .line 118
    iget-object v0, p0, Lo/aim;->bGt:Lo/aif$if$ˊ;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lo/aim;->bGt:Lo/aif$if$ˊ;

    invoke-interface {v0}, Lo/aif$if$ˊ;->zM()V

    .line 121
    :cond_0
    return-void
.end method

.method public uV()V
    .locals 1

    .line 111
    iget-object v0, p0, Lo/aim;->bFu:Lo/aif$if$if;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lo/aim;->bFu:Lo/aif$if$if;

    invoke-interface {v0}, Lo/aif$if$if;->zL()V

    .line 114
    :cond_0
    return-void
.end method

.method public zG()Landroid/support/v7/widget/RecyclerView$if;
    .locals 1

    .line 79
    iget-object v0, p0, Lo/aim;->bGs:Lo/ajn;

    return-object v0
.end method

.method public zH()Lo/aif$if;
    .locals 1

    .line 91
    iget-object v0, p0, Lo/aim;->bFr:Lo/aif$if;

    return-object v0
.end method

.method public zI()Landroid/support/v7/widget/RecyclerView$aux;
    .locals 1

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public ｃ(I)V
    .locals 1

    .line 96
    iget-object v0, p0, Lo/aim;->bGs:Lo/ajn;

    invoke-virtual {v0}, Lo/ajn;->notifyDataSetChanged()V

    .line 97
    return-void
.end method

.method public ｩ(I)V
    .locals 1

    .line 101
    iget-object v0, p0, Lo/aim;->bGs:Lo/ajn;

    invoke-virtual {v0}, Lo/ajn;->notifyDataSetChanged()V

    .line 102
    return-void
.end method
