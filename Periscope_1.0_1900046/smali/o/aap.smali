.class public Lo/aap;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aaq$aux;
.implements Lo/ट$ˊ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/aaq$aux;Lo/\u091f$\u02ca<Lo/\u309e;>;"
    }
.end annotation


# instance fields
.field private final As:Ljava/lang/String;

.field private final bul:Landroid/widget/TextView;

.field private bum:Lo/aaq;

.field private bun:Lo/aaq$ᐝ;

.field private final dV:Landroid/content/Context;

.field private final url:Ljava/lang/String;

.field private final xR:Lo/ۂ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Lo/ۂ;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lo/aap;->dV:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lo/aap;->As:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lo/aap;->url:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lo/aap;->bul:Landroid/widget/TextView;

    .line 69
    iput-object p5, p0, Lo/aap;->xR:Lo/ۂ;

    .line 70
    return-void
.end method


# virtual methods
.method public ˊ(Lo/aaq;Lo/aaq$ᐝ;)V
    .locals 8

    .line 74
    iput-object p1, p0, Lo/aap;->bum:Lo/aaq;

    .line 75
    iput-object p2, p0, Lo/aap;->bun:Lo/aaq$ᐝ;

    .line 76
    new-instance v6, Lo/イ;

    invoke-direct {v6}, Lo/イ;-><init>()V

    .line 77
    new-instance v7, Lo/ट;

    iget-object v0, p0, Lo/aap;->url:Ljava/lang/String;

    new-instance v1, Lo/ԏ;

    iget-object v2, p0, Lo/aap;->dV:Landroid/content/Context;

    iget-object v3, p0, Lo/aap;->As:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v1, v2, v4, v3, v5}, Lo/ԏ;-><init>(Landroid/content/Context;Lo/ף;Ljava/lang/String;Z)V

    invoke-direct {v7, v0, v1, v6}, Lo/ट;-><init>(Ljava/lang/String;Lo/ت;Lo/ٺ$if;)V

    .line 79
    invoke-virtual {p1}, Lo/aaq;->vD()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v7, v0, p0}, Lo/ट;->ˊ(Landroid/os/Looper;Lo/ट$ˊ;)V

    .line 80
    return-void
.end method

.method public ˊ(Lo/ゞ;)V
    .locals 22

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aap;->bum:Lo/aaq;

    invoke-virtual {v0}, Lo/aaq;->vD()Landroid/os/Handler;

    move-result-object v10

    .line 90
    new-instance v11, Lo/ӧ;

    invoke-direct {v11}, Lo/ӧ;-><init>()V

    .line 92
    const/4 v12, 0x0

    .line 93
    move-object/from16 v0, p1

    instance-of v0, v0, Lo/ἷ;

    if-eqz v0, :cond_0

    .line 94
    move-object/from16 v0, p1

    check-cast v0, Lo/ἷ;

    move-object v13, v0

    .line 96
    move-object/from16 v0, p0

    :try_start_0
    iget-object v0, v0, Lo/aap;->dV:Landroid/content/Context;

    iget-object v1, v13, Lo/ἷ;->xK:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lo/კ;->ˊ(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Z)[I
    :try_end_0
    .catch Lo/ԁ$ˊ; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 101
    goto :goto_0

    .line 98
    :catch_0
    move-exception v14

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aap;->bun:Lo/aaq$ᐝ;

    invoke-interface {v0, v14}, Lo/aaq$ᐝ;->ʼ(Ljava/lang/Exception;)V

    .line 100
    return-void

    .line 104
    :cond_0
    :goto_0
    new-instance v13, Lo/ԏ;

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aap;->dV:Landroid/content/Context;

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/aap;->As:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v13, v0, v11, v1, v2}, Lo/ԏ;-><init>(Landroid/content/Context;Lo/ף;Ljava/lang/String;Z)V

    .line 105
    new-instance v0, Lo/Ỵ;

    move-object v1, v13

    move-object/from16 v2, p0

    iget-object v2, v2, Lo/aap;->url:Ljava/lang/String;

    move-object/from16 v3, p1

    move-object v4, v11

    move-object v5, v12

    move-object/from16 v6, p0

    iget-object v7, v6, Lo/aap;->xR:Lo/ۂ;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v7}, Lo/Ỵ;-><init>(Lo/ϒ;Ljava/lang/String;Lo/ゞ;Lo/ʭ;[IILo/ۂ;)V

    move-object v14, v0

    .line 107
    new-instance v0, Lo/忄;

    move-object v1, v14

    move-object v7, v10

    move-object/from16 v2, p0

    iget-object v8, v2, Lo/aap;->bum:Lo/aaq;

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/high16 v4, 0x1200000

    const-wide/32 v5, 0x9c40

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lo/忄;-><init>(Lo/Ỵ;ZIIJLandroid/os/Handler;Lo/忄$if;I)V

    move-object v15, v0

    .line 109
    new-instance v0, Lo/ԅ;

    move-object v1, v15

    move-object v5, v10

    move-object/from16 v2, p0

    iget-object v6, v2, Lo/aap;->bum:Lo/aaq;

    const/4 v2, 0x1

    const-wide/16 v3, 0x1388

    const/16 v7, 0x32

    invoke-direct/range {v0 .. v7}, Lo/ԅ;-><init>(Lo/ڒ;IJLandroid/os/Handler;Lo/ԅ$if;I)V

    move-object/from16 v16, v0

    .line 111
    new-instance v17, Lo/з;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Lo/з;-><init>(Lo/ڒ;)V

    .line 113
    new-instance v18, Lo/ﾏ;

    new-instance v0, Lo/ｮ;

    invoke-direct {v0}, Lo/ｮ;-><init>()V

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/aap;->bum:Lo/aaq;

    invoke-virtual {v1}, Lo/aaq;->vE()Lo/ﾏ$if;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    move-object/from16 v3, v18

    invoke-direct {v3, v15, v0, v1, v2}, Lo/ﾏ;-><init>(Lo/ڒ;Lo/ｱ;Lo/ﾏ$if;Landroid/os/Looper;)V

    .line 117
    new-instance v19, Lo/Ƴ;

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aap;->bum:Lo/aaq;

    invoke-virtual {v10}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    move-object/from16 v2, v19

    invoke-direct {v2, v15, v0, v1}, Lo/Ƴ;-><init>(Lo/ڒ;Lo/ĉ;Landroid/os/Looper;)V

    .line 123
    const/16 v20, 0x0

    .line 125
    const/4 v0, 0x5

    new-array v0, v0, [Lo/ڹ;

    move-object/from16 v21, v0

    .line 126
    const/4 v0, 0x0

    aput-object v16, v21, v0

    .line 127
    const/4 v0, 0x1

    aput-object v17, v21, v0

    .line 128
    const/4 v0, 0x3

    aput-object v18, v21, v0

    .line 129
    const/4 v0, 0x2

    aput-object v19, v21, v0

    .line 130
    const/4 v0, 0x4

    aput-object v20, v21, v0

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/aap;->bun:Lo/aaq$ᐝ;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lo/aaq$ᐝ;->ˊ([[Ljava/lang/String;[Lo/ก;[Lo/ڹ;)V

    .line 132
    return-void
.end method

.method public ˏ(Ljava/io/IOException;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lo/aap;->bun:Lo/aaq$ᐝ;

    invoke-interface {v0, p1}, Lo/aaq$ᐝ;->ʼ(Ljava/lang/Exception;)V

    .line 85
    return-void
.end method

.method public synthetic ᐡ(Ljava/lang/Object;)V
    .locals 1

    .line 49
    move-object v0, p1

    check-cast v0, Lo/ゞ;

    invoke-virtual {p0, v0}, Lo/aap;->ˊ(Lo/ゞ;)V

    return-void
.end method
