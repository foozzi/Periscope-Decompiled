.class final Lo/uq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/uz;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic ZP:Lo/vb;

.field final synthetic ZQ:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lo/vb;Ljava/io/OutputStream;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lo/uq;->ZP:Lo/vb;

    iput-object p2, p0, Lo/uq;->ZQ:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 96
    iget-object v0, p0, Lo/uq;->ZQ:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 97
    return-void
.end method

.method public flush()V
    .locals 1

    .line 92
    iget-object v0, p0, Lo/uq;->ZQ:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 93
    return-void
.end method

.method public timeout()Lo/vb;
    .locals 1

    .line 100
    iget-object v0, p0, Lo/uq;->ZP:Lo/vb;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/uq;->ZQ:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lo/ue;J)V
    .locals 8

    .line 73
    iget-wide v0, p1, Lo/ue;->size:J

    move-wide v4, p2

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lo/vd;->checkOffsetAndCount(JJJ)V

    .line 74
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 75
    iget-object v0, p0, Lo/uq;->ZP:Lo/vb;

    invoke-virtual {v0}, Lo/vb;->throwIfReached()V

    .line 76
    iget-object v6, p1, Lo/ue;->ZG:Lo/ux;

    .line 77
    iget v0, v6, Lo/ux;->limit:I

    iget v1, v6, Lo/ux;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v7, v0

    .line 78
    iget-object v0, p0, Lo/uq;->ZQ:Ljava/io/OutputStream;

    iget-object v1, v6, Lo/ux;->fw:[B

    iget v2, v6, Lo/ux;->pos:I

    invoke-virtual {v0, v1, v2, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 80
    iget v0, v6, Lo/ux;->pos:I

    add-int/2addr v0, v7

    iput v0, v6, Lo/ux;->pos:I

    .line 81
    int-to-long v0, v7

    sub-long/2addr p2, v0

    .line 82
    iget-wide v0, p1, Lo/ue;->size:J

    int-to-long v2, v7

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lo/ue;->size:J

    .line 84
    iget v0, v6, Lo/ux;->pos:I

    iget v1, v6, Lo/ux;->limit:I

    if-ne v0, v1, :cond_0

    .line 85
    invoke-virtual {v6}, Lo/ux;->et()Lo/ux;

    move-result-object v0

    iput-object v0, p1, Lo/ue;->ZG:Lo/ux;

    .line 86
    invoke-static {v6}, Lo/uy;->ˋ(Lo/ux;)V

    .line 88
    :cond_0
    goto :goto_0

    .line 89
    :cond_1
    return-void
.end method
