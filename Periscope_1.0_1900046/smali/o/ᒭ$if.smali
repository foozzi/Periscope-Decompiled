.class Lo/ᒭ$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ס$ˋ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᒭ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field private final tF:Lo/ϒ;

.field private volatile tG:Z

.field private final uH:Lo/ᒮ;

.field private uI:Z

.field private final ub:Lo/ᒎ;

.field private final uc:Lo/ѕ;

.field private final ud:I

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lo/ϒ;Lo/ᒎ;Lo/ѕ;IJ)V
    .locals 1

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    invoke-static {p1}, Lo/ړ;->יּ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lo/ᒭ$if;->uri:Landroid/net/Uri;

    .line 578
    invoke-static {p2}, Lo/ړ;->יּ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ϒ;

    iput-object v0, p0, Lo/ᒭ$if;->tF:Lo/ϒ;

    .line 579
    invoke-static {p3}, Lo/ړ;->יּ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒎ;

    iput-object v0, p0, Lo/ᒭ$if;->ub:Lo/ᒎ;

    .line 580
    invoke-static {p4}, Lo/ړ;->יּ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ѕ;

    iput-object v0, p0, Lo/ᒭ$if;->uc:Lo/ѕ;

    .line 581
    iput p5, p0, Lo/ᒭ$if;->ud:I

    .line 582
    new-instance v0, Lo/ᒮ;

    invoke-direct {v0}, Lo/ᒮ;-><init>()V

    iput-object v0, p0, Lo/ᒭ$if;->uH:Lo/ᒮ;

    .line 583
    iget-object v0, p0, Lo/ᒭ$if;->uH:Lo/ᒮ;

    iput-wide p6, v0, Lo/ᒮ;->tU:J

    .line 584
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᒭ$if;->uI:Z

    .line 585
    return-void
.end method


# virtual methods
.method public ঽ()V
    .locals 1

    .line 589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᒭ$if;->tG:Z

    .line 590
    return-void
.end method

.method public ก()Z
    .locals 1

    .line 594
    iget-boolean v0, p0, Lo/ᒭ$if;->tG:Z

    return v0
.end method

.method public კ()V
    .locals 15

    .line 599
    iget-boolean v0, p0, Lo/ᒭ$if;->uI:Z

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lo/ᒭ$if;->ub:Lo/ᒎ;

    invoke-interface {v0}, Lo/ᒎ;->ᒮ()V

    .line 601
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᒭ$if;->uI:Z

    .line 603
    :cond_0
    const/4 v8, 0x0

    .line 604
    :goto_0
    if-nez v8, :cond_7

    iget-boolean v0, p0, Lo/ᒭ$if;->tG:Z

    if-nez v0, :cond_7

    .line 605
    const/4 v9, 0x0

    .line 607
    :try_start_0
    iget-object v0, p0, Lo/ᒭ$if;->uH:Lo/ᒮ;

    iget-wide v10, v0, Lo/ᒮ;->tU:J

    .line 608
    iget-object v0, p0, Lo/ᒭ$if;->tF:Lo/ϒ;

    new-instance v1, Lo/к;

    iget-object v2, p0, Lo/ᒭ$if;->uri:Landroid/net/Uri;

    move-wide v3, v10

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lo/к;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    invoke-interface {v0, v1}, Lo/ϒ;->ˊ(Lo/к;)J

    move-result-wide v12

    .line 609
    const-wide/16 v0, -0x1

    cmp-long v0, v12, v0

    if-eqz v0, :cond_1

    .line 610
    add-long/2addr v12, v10

    .line 612
    :cond_1
    new-instance v0, Lo/ᐹ;

    iget-object v1, p0, Lo/ᒭ$if;->tF:Lo/ϒ;

    move-wide v2, v10

    move-wide v4, v12

    invoke-direct/range {v0 .. v5}, Lo/ᐹ;-><init>(Lo/ϒ;JJ)V

    move-object v9, v0

    .line 613
    :goto_1
    if-nez v8, :cond_2

    iget-boolean v0, p0, Lo/ᒭ$if;->tG:Z

    if-nez v0, :cond_2

    .line 614
    iget-object v0, p0, Lo/ᒭ$if;->uc:Lo/ѕ;

    iget v1, p0, Lo/ᒭ$if;->ud:I

    invoke-virtual {v0, v1}, Lo/ѕ;->ȋ(I)V

    .line 615
    iget-object v0, p0, Lo/ᒭ$if;->ub:Lo/ᒎ;

    iget-object v1, p0, Lo/ᒭ$if;->uH:Lo/ᒮ;

    invoke-interface {v0, v9, v1}, Lo/ᒎ;->ˊ(Lo/ᒑ;Lo/ᒮ;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    move v8, v0

    goto :goto_1

    .line 619
    :cond_2
    const/4 v0, 0x1

    if-ne v8, v0, :cond_3

    .line 620
    const/4 v8, 0x0

    goto :goto_2

    .line 621
    :cond_3
    if-eqz v9, :cond_4

    .line 622
    iget-object v0, p0, Lo/ᒭ$if;->uH:Lo/ᒮ;

    invoke-interface {v9}, Lo/ᒑ;->getPosition()J

    move-result-wide v1

    iput-wide v1, v0, Lo/ᒮ;->tU:J

    .line 624
    :cond_4
    :goto_2
    iget-object v0, p0, Lo/ᒭ$if;->tF:Lo/ϒ;

    invoke-interface {v0}, Lo/ϒ;->close()V

    .line 625
    goto :goto_4

    .line 619
    :catchall_0
    move-exception v14

    const/4 v0, 0x1

    if-ne v8, v0, :cond_5

    .line 620
    const/4 v8, 0x0

    goto :goto_3

    .line 621
    :cond_5
    if-eqz v9, :cond_6

    .line 622
    iget-object v0, p0, Lo/ᒭ$if;->uH:Lo/ᒮ;

    invoke-interface {v9}, Lo/ᒑ;->getPosition()J

    move-result-wide v1

    iput-wide v1, v0, Lo/ᒮ;->tU:J

    .line 624
    :cond_6
    :goto_3
    iget-object v0, p0, Lo/ᒭ$if;->tF:Lo/ϒ;

    invoke-interface {v0}, Lo/ϒ;->close()V

    throw v14

    .line 626
    :goto_4
    goto/16 :goto_0

    .line 627
    :cond_7
    return-void
.end method
