.class public final Lo/ｕ;
.super Lo/ঽ;
.source ""


# instance fields
.field private volatile tG:Z

.field private final wH:Z

.field public final zl:Lo/ἶ;

.field private zm:I


# direct methods
.method public constructor <init>(Lo/ϒ;Lo/к;ILo/ব;JJIZLo/ἶ;[B[B)V
    .locals 11

    .line 61
    move-object v0, p0

    move-object/from16 v1, p12

    move-object/from16 v2, p13

    invoke-static {p1, v1, v2}, Lo/ｕ;->ˊ(Lo/ϒ;[B[B)Lo/ϒ;

    move-result-object v1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lo/ঽ;-><init>(Lo/ϒ;Lo/к;ILo/ব;JJIZ)V

    .line 63
    move-object/from16 v0, p11

    iput-object v0, p0, Lo/ｕ;->zl:Lo/ἶ;

    .line 65
    iget-object v0, p0, Lo/ｕ;->tF:Lo/ϒ;

    instance-of v0, v0, Lo/ȯ;

    iput-boolean v0, p0, Lo/ｕ;->wH:Z

    .line 66
    return-void
.end method

.method private static ˊ(Lo/ϒ;[B[B)Lo/ϒ;
    .locals 1

    .line 128
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 129
    :cond_0
    return-object p0

    .line 131
    :cond_1
    new-instance v0, Lo/ȯ;

    invoke-direct {v0, p0, p1, p2}, Lo/ȯ;-><init>(Lo/ϒ;[B[B)V

    return-object v0
.end method


# virtual methods
.method public ব()J
    .locals 2

    .line 70
    iget v0, p0, Lo/ｕ;->zm:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public ঽ()V
    .locals 1

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ｕ;->tG:Z

    .line 78
    return-void
.end method

.method public ก()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lo/ｕ;->tG:Z

    return v0
.end method

.method public კ()V
    .locals 12

    .line 93
    iget-boolean v0, p0, Lo/ｕ;->wH:Z

    if-eqz v0, :cond_1

    .line 94
    iget-object v6, p0, Lo/ｕ;->tE:Lo/к;

    .line 95
    iget v0, p0, Lo/ｕ;->zm:I

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    goto :goto_1

    .line 97
    :cond_1
    iget-object v0, p0, Lo/ｕ;->tE:Lo/к;

    iget v1, p0, Lo/ｕ;->zm:I

    invoke-static {v0, v1}, Lo/ผ;->ˊ(Lo/к;I)Lo/к;

    move-result-object v6

    .line 98
    const/4 v7, 0x0

    .line 102
    :goto_1
    :try_start_0
    new-instance v0, Lo/ᐹ;

    iget-object v1, p0, Lo/ｕ;->tF:Lo/ϒ;

    iget-wide v2, v6, Lo/к;->zX:J

    iget-object v4, p0, Lo/ｕ;->tF:Lo/ϒ;

    invoke-interface {v4, v6}, Lo/ϒ;->ˊ(Lo/к;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lo/ᐹ;-><init>(Lo/ϒ;JJ)V

    move-object v8, v0

    .line 104
    if-eqz v7, :cond_2

    .line 105
    iget v0, p0, Lo/ｕ;->zm:I

    invoke-interface {v8, v0}, Lo/ᒑ;->נ(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    :cond_2
    const/4 v9, 0x0

    .line 109
    :goto_2
    if-nez v9, :cond_3

    :try_start_1
    iget-boolean v0, p0, Lo/ｕ;->tG:Z

    if-nez v0, :cond_3

    .line 110
    iget-object v0, p0, Lo/ｕ;->zl:Lo/ἶ;

    invoke-virtual {v0, v8}, Lo/ἶ;->ˋ(Lo/ᒑ;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    goto :goto_2

    .line 113
    :cond_3
    :try_start_2
    invoke-interface {v8}, Lo/ᒑ;->getPosition()J

    move-result-wide v0

    iget-object v2, p0, Lo/ｕ;->tE:Lo/к;

    iget-wide v2, v2, Lo/к;->zX:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lo/ｕ;->zm:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 114
    goto :goto_3

    .line 113
    :catchall_0
    move-exception v10

    :try_start_3
    invoke-interface {v8}, Lo/ᒑ;->getPosition()J

    move-result-wide v0

    iget-object v2, p0, Lo/ｕ;->tE:Lo/к;

    iget-wide v2, v2, Lo/к;->zX:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lo/ｕ;->zm:I

    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 116
    :goto_3
    iget-object v0, p0, Lo/ｕ;->tF:Lo/ϒ;

    invoke-interface {v0}, Lo/ϒ;->close()V

    .line 117
    goto :goto_4

    .line 116
    :catchall_1
    move-exception v11

    iget-object v0, p0, Lo/ｕ;->tF:Lo/ϒ;

    invoke-interface {v0}, Lo/ϒ;->close()V

    throw v11

    .line 118
    :goto_4
    return-void
.end method
