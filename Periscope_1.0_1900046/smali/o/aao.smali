.class public Lo/aao;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aaq$aux;


# instance fields
.field private final As:Ljava/lang/String;

.field private final bul:Landroid/widget/TextView;

.field private final dV:Landroid/content/Context;

.field private final ub:Lo/ᒎ;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/widget/TextView;Lo/ᒎ;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lo/aao;->dV:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lo/aao;->As:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lo/aao;->uri:Landroid/net/Uri;

    .line 49
    iput-object p4, p0, Lo/aao;->bul:Landroid/widget/TextView;

    .line 50
    iput-object p5, p0, Lo/aao;->ub:Lo/ᒎ;

    .line 51
    return-void
.end method


# virtual methods
.method public ˊ(Lo/aaq;Lo/aaq$ᐝ;)V
    .locals 17

    .line 56
    new-instance v11, Lo/ԏ;

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aao;->dV:Landroid/content/Context;

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/aao;->As:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v11, v0, v2, v1, v3}, Lo/ԏ;-><init>(Landroid/content/Context;Lo/ף;Ljava/lang/String;Z)V

    .line 57
    new-instance v0, Lo/ᒭ;

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/aao;->uri:Landroid/net/Uri;

    move-object v2, v11

    move-object/from16 v3, p0

    iget-object v3, v3, Lo/aao;->ub:Lo/ᒎ;

    const/4 v4, 0x2

    const/high16 v5, 0xa00000

    invoke-direct/range {v0 .. v5}, Lo/ᒭ;-><init>(Landroid/net/Uri;Lo/ϒ;Lo/ᒎ;II)V

    move-object v12, v0

    .line 59
    new-instance v0, Lo/ԅ;

    move-object v1, v12

    invoke-virtual/range {p1 .. p1}, Lo/aaq;->vD()Landroid/os/Handler;

    move-result-object v8

    move-object/from16 v9, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x1388

    const/4 v7, 0x0

    const/16 v10, 0x32

    invoke-direct/range {v0 .. v10}, Lo/ԅ;-><init>(Lo/ڒ;Lo/ᐴ;ZIJLo/ԅ$ˊ;Landroid/os/Handler;Lo/ԅ$if;I)V

    move-object v13, v0

    .line 62
    new-instance v0, Lo/з;

    move-object v1, v12

    invoke-virtual/range {p1 .. p1}, Lo/aaq;->vD()Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v5, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lo/з;-><init>(Lo/ڒ;Lo/ᐴ;ZLandroid/os/Handler;Lo/з$if;)V

    move-object v14, v0

    .line 66
    const/4 v15, 0x0

    .line 71
    const/4 v0, 0x5

    new-array v0, v0, [Lo/ڹ;

    move-object/from16 v16, v0

    .line 72
    const/4 v0, 0x0

    aput-object v13, v16, v0

    .line 73
    const/4 v0, 0x1

    aput-object v14, v16, v0

    .line 74
    const/4 v0, 0x4

    aput-object v15, v16, v0

    .line 75
    move-object/from16 v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Lo/aaq$ᐝ;->ˊ([[Ljava/lang/String;[Lo/ก;[Lo/ڹ;)V

    .line 76
    return-void
.end method
