.class Lo/kz;
.super Lo/ll;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HistoryResponseHandler"
.end annotation


# instance fields
.field final synthetic OA:Lo/ku;

.field final synthetic OB:Lo/ki;

.field final synthetic OC:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/ku;Lo/ki;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1459
    iput-object p1, p0, Lo/kz;->OA:Lo/ku;

    iput-object p2, p0, Lo/kz;->OB:Lo/ki;

    iput-object p3, p0, Lo/kz;->OC:Ljava/lang/String;

    invoke-direct {p0}, Lo/ll;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/kn;Ljava/lang/String;)V
    .locals 8

    .line 1463
    :try_start_0
    new-instance v0, Lo/gb;

    invoke-direct {v0}, Lo/gb;-><init>()V

    invoke-virtual {v0, p2}, Lo/gb;->ᐤ(Ljava/lang/String;)Lo/fw;

    move-result-object v6

    .line 1464
    invoke-virtual {v6}, Lo/fw;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1465
    iget-object v0, p0, Lo/kz;->OB:Lo/ki;

    iget-object v1, p0, Lo/kz;->OC:Ljava/lang/String;

    sget-object v2, Lo/lg;->OO:Lo/lg;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lo/lg;->ˊ(Lo/lg;I)Lo/lg;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/ki;->ˊ(Ljava/lang/String;Lo/lg;)V
    :try_end_0
    .catch Lo/ga; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lo/lh; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 1467
    return-void

    .line 1469
    :cond_0
    :try_start_1
    invoke-virtual {v6}, Lo/fw;->s()Lo/ft;

    move-result-object v7

    .line 1470
    iget-object v0, p0, Lo/kz;->OA:Lo/ku;

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lo/ft;->ᴿ(I)Lo/fw;

    move-result-object v1

    invoke-virtual {v1}, Lo/fw;->s()Lo/ft;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ku;->ˊ(Lo/ku;Lo/ft;)V

    .line 1471
    iget-object v0, p0, Lo/kz;->OB:Lo/ki;

    iget-object v1, p0, Lo/kz;->OC:Ljava/lang/String;

    invoke-virtual {v0, v1, v7}, Lo/ki;->ˋ(Ljava/lang/String;Lo/fw;)V
    :try_end_1
    .catch Lo/ga; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lo/lh; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1483
    goto/16 :goto_0

    .line 1472
    :catch_0
    move-exception v6

    .line 1473
    iget-object v0, p0, Lo/kz;->OB:Lo/ki;

    iget-object v1, p0, Lo/kz;->OC:Ljava/lang/String;

    sget-object v2, Lo/lg;->OO:Lo/lg;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lo/lg;->ˊ(Lo/lg;I)Lo/lg;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/ki;->ˊ(Ljava/lang/String;Lo/lg;)V

    .line 1483
    goto :goto_0

    .line 1475
    :catch_1
    move-exception v6

    .line 1476
    iget-object v0, p0, Lo/kz;->OB:Lo/ki;

    iget-object v1, p0, Lo/kz;->OC:Ljava/lang/String;

    sget-object v2, Lo/lg;->OM:Lo/lg;

    const/16 v3, 0x9

    invoke-static {v2, v3, p2}, Lo/lg;->ˊ(Lo/lg;ILjava/lang/String;)Lo/lg;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/ki;->ˊ(Ljava/lang/String;Lo/lg;)V

    .line 1483
    goto :goto_0

    .line 1478
    :catch_2
    move-exception v6

    .line 1479
    iget-object v0, p0, Lo/kz;->OB:Lo/ki;

    iget-object v1, p0, Lo/kz;->OC:Ljava/lang/String;

    iget-object v2, p0, Lo/kz;->OA:Lo/ku;

    sget-object v3, Lo/lg;->OM:Lo/lg;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Lo/lh;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v2, v6, v3, v5, v4}, Lo/ku;->ˊ(Lo/ku;Lo/lh;Lo/lg;ILjava/lang/String;)Lo/lg;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/ki;->ˊ(Ljava/lang/String;Lo/lg;)V

    .line 1483
    goto :goto_0

    .line 1480
    :catch_3
    move-exception v6

    .line 1481
    iget-object v0, p0, Lo/kz;->OB:Lo/ki;

    iget-object v1, p0, Lo/kz;->OC:Ljava/lang/String;

    sget-object v2, Lo/lg;->OM:Lo/lg;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb

    invoke-static {v2, v4, v3}, Lo/lg;->ˊ(Lo/lg;ILjava/lang/String;)Lo/lg;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/ki;->ˊ(Ljava/lang/String;Lo/lg;)V

    .line 1485
    :goto_0
    return-void
.end method

.method public ˊ(Lo/kn;Lo/lg;)V
    .locals 2

    .line 1488
    iget-object v0, p0, Lo/kz;->OB:Lo/ki;

    iget-object v1, p0, Lo/kz;->OC:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lo/ki;->ˊ(Ljava/lang/String;Lo/lg;)V

    .line 1489
    return-void
.end method
