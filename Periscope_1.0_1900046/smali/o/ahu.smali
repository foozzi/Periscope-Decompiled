.class public Lo/ahu;
.super Lo/aif;
.source ""

# interfaces
.implements Lo/ahg$ˊ;
.implements Lo/ahg$ˋ;
.implements Lo/ahg$ˎ;
.implements Lo/zl;


# instance fields
.field private final bFo:Lo/ahg;

.field private final bFp:Lo/zj;

.field private final bFq:Lo/ahh;

.field private bFr:Lo/aif$if;

.field private bFs:Lo/aif$if$ˊ;

.field private bFt:Lo/ade;

.field private bFu:Lo/aif$if$if;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lo/ot;Lo/vn;Lo/ahg;Lo/zj;Lo/amw;Lo/aip;IIIIIIII)V
    .locals 13

    .line 44
    move-object v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move/from16 v3, p8

    move/from16 v4, p9

    move/from16 v5, p10

    move/from16 v6, p11

    move/from16 v7, p12

    move/from16 v8, p13

    move/from16 v9, p14

    move/from16 v10, p15

    invoke-direct/range {v0 .. v10}, Lo/aif;-><init>(Lo/amw;Lo/aip;IIIIIIII)V

    .line 46
    new-instance v0, Lo/ade;

    invoke-direct {v0, p1}, Lo/ade;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lo/ahu;->bFt:Lo/ade;

    .line 48
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 49
    new-instance v0, Lo/ahh;

    const v1, 0x7f0a0044

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f090082

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lo/ahh;-><init>(II)V

    iput-object v0, p0, Lo/ahu;->bFq:Lo/ahh;

    .line 53
    move-object/from16 v0, p4

    iput-object v0, p0, Lo/ahu;->bFo:Lo/ahg;

    .line 54
    iget-object v0, p0, Lo/ahu;->bFo:Lo/ahg;

    invoke-virtual {v0, p0}, Lo/ahg;->ˊ(Lo/ahg$ˋ;)V

    .line 55
    iget-object v0, p0, Lo/ahu;->bFo:Lo/ahg;

    invoke-virtual {v0, p0}, Lo/ahg;->ˊ(Lo/ahg$ˎ;)V

    .line 56
    iget-object v0, p0, Lo/ahu;->bFo:Lo/ahg;

    invoke-virtual {v0, p0}, Lo/ahg;->ˊ(Lo/ahg$ˊ;)V

    .line 58
    move-object/from16 v0, p5

    iput-object v0, p0, Lo/ahu;->bFp:Lo/zj;

    .line 59
    iget-object v0, p0, Lo/ahu;->bFp:Lo/zj;

    invoke-virtual {v0, p0}, Lo/zj;->ˊ(Lo/zl;)V

    .line 61
    new-instance v12, Lo/ahv;

    invoke-direct {v12, p0}, Lo/ahv;-><init>(Lo/ahu;)V

    .line 88
    new-instance v0, Lo/ahw;

    move-object/from16 v1, p3

    invoke-direct {v0, p0, v1, p2, v12}, Lo/ahw;-><init>(Lo/ahu;Lo/vn;Lo/ot;Lo/zz$if;)V

    iput-object v0, p0, Lo/ahu;->bFr:Lo/aif$if;

    .line 127
    return-void
.end method

.method static synthetic ˊ(Lo/ahu;)Lo/ahg;
    .locals 1

    .line 27
    iget-object v0, p0, Lo/ahu;->bFo:Lo/ahg;

    return-object v0
.end method

.method static synthetic ˊ(Lo/ahu;Lo/aif$if$if;)Lo/aif$if$if;
    .locals 0

    .line 27
    iput-object p1, p0, Lo/ahu;->bFu:Lo/aif$if$if;

    return-object p1
.end method

.method static synthetic ˊ(Lo/ahu;Lo/aif$if$ˊ;)Lo/aif$if$ˊ;
    .locals 0

    .line 27
    iput-object p1, p0, Lo/ahu;->bFs:Lo/aif$if$ˊ;

    return-object p1
.end method

.method static synthetic ˋ(Lo/ahu;)Lo/zj;
    .locals 1

    .line 27
    iget-object v0, p0, Lo/ahu;->bFp:Lo/zj;

    return-object v0
.end method


# virtual methods
.method public uT()V
    .locals 4

    .line 159
    iget-object v0, p0, Lo/ahu;->bFp:Lo/zj;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/zj;->ﹾ(J)V

    .line 160
    return-void
.end method

.method public uU()V
    .locals 1

    .line 171
    iget-object v0, p0, Lo/ahu;->bFs:Lo/aif$if$ˊ;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lo/ahu;->bFs:Lo/aif$if$ˊ;

    invoke-interface {v0}, Lo/aif$if$ˊ;->zM()V

    .line 174
    :cond_0
    return-void
.end method

.method public uV()V
    .locals 1

    .line 164
    iget-object v0, p0, Lo/ahu;->bFu:Lo/aif$if$if;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lo/ahu;->bFu:Lo/aif$if$if;

    invoke-interface {v0}, Lo/aif$if$if;->zL()V

    .line 167
    :cond_0
    return-void
.end method

.method public zG()Landroid/support/v7/widget/RecyclerView$if;
    .locals 1

    .line 132
    iget-object v0, p0, Lo/ahu;->bFo:Lo/ahg;

    return-object v0
.end method

.method public zH()Lo/aif$if;
    .locals 1

    .line 138
    iget-object v0, p0, Lo/ahu;->bFr:Lo/aif$if;

    return-object v0
.end method

.method public zI()Landroid/support/v7/widget/RecyclerView$aux;
    .locals 1

    .line 144
    iget-object v0, p0, Lo/ahu;->bFq:Lo/ahh;

    return-object v0
.end method

.method public ๅ(Ljava/lang/String;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lo/ahu;->bGa:Lo/amw;

    invoke-interface {v0, p1}, Lo/amw;->ƚ(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public ᐞ(Ljava/lang/String;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lo/ahu;->bFt:Lo/ade;

    invoke-virtual {v0, p1}, Lo/ade;->ł(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public ᓐ(Ljava/lang/String;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lo/ahu;->bFt:Lo/ade;

    invoke-virtual {v0, p1}, Lo/ade;->ŗ(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public ｃ(I)V
    .locals 1

    .line 154
    iget-object v0, p0, Lo/ahu;->bFo:Lo/ahg;

    invoke-virtual {v0}, Lo/ahg;->notifyDataSetChanged()V

    .line 155
    return-void
.end method

.method public ｩ(I)V
    .locals 1

    .line 149
    iget-object v0, p0, Lo/ahu;->bFo:Lo/ahg;

    invoke-virtual {v0}, Lo/ahg;->notifyDataSetChanged()V

    .line 150
    return-void
.end method
