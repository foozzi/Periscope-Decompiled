.class public final Lo/uo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/va;


# instance fields
.field private final ZN:Ljava/util/zip/Inflater;

.field private ZO:I

.field private closed:Z

.field private final source:Lo/ui;


# direct methods
.method constructor <init>(Lo/ui;Ljava/util/zip/Inflater;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inflater == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    iput-object p1, p0, Lo/uo;->source:Lo/ui;

    .line 52
    iput-object p2, p0, Lo/uo;->ZN:Ljava/util/zip/Inflater;

    .line 53
    return-void
.end method

.method public constructor <init>(Lo/va;Ljava/util/zip/Inflater;)V
    .locals 1

    .line 40
    invoke-static {p1}, Lo/up;->ˋ(Lo/va;)Lo/ui;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lo/uo;-><init>(Lo/ui;Ljava/util/zip/Inflater;)V

    .line 41
    return-void
.end method

.method private er()V
    .locals 4

    .line 112
    iget v0, p0, Lo/uo;->ZO:I

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    iget v0, p0, Lo/uo;->ZO:I

    iget-object v1, p0, Lo/uo;->ZN:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v1

    sub-int v3, v0, v1

    .line 114
    iget v0, p0, Lo/uo;->ZO:I

    sub-int/2addr v0, v3

    iput v0, p0, Lo/uo;->ZO:I

    .line 115
    iget-object v0, p0, Lo/uo;->source:Lo/ui;

    int-to-long v1, v3

    invoke-interface {v0, v1, v2}, Lo/ui;->ᵋ(J)V

    .line 116
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 123
    iget-boolean v0, p0, Lo/uo;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lo/uo;->ZN:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/uo;->closed:Z

    .line 126
    iget-object v0, p0, Lo/uo;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->close()V

    .line 127
    return-void
.end method

.method public eq()Z
    .locals 5

    .line 95
    iget-object v0, p0, Lo/uo;->ZN:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 97
    :cond_0
    invoke-direct {p0}, Lo/uo;->er()V

    .line 98
    iget-object v0, p0, Lo/uo;->ZN:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    iget-object v0, p0, Lo/uo;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->dW()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    .line 104
    :cond_2
    iget-object v0, p0, Lo/uo;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->dS()Lo/ue;

    move-result-object v0

    iget-object v4, v0, Lo/ue;->ZG:Lo/ux;

    .line 105
    iget v0, v4, Lo/ux;->limit:I

    iget v1, v4, Lo/ux;->pos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lo/uo;->ZO:I

    .line 106
    iget-object v0, p0, Lo/uo;->ZN:Ljava/util/zip/Inflater;

    iget-object v1, v4, Lo/ux;->fw:[B

    iget v2, v4, Lo/ux;->pos:I

    iget v3, p0, Lo/uo;->ZO:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public read(Lo/ue;J)J
    .locals 8

    .line 57
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iget-boolean v0, p0, Lo/uo;->closed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    return-wide v0

    .line 62
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lo/uo;->eq()Z

    move-result v5

    .line 66
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lo/ue;->ľ(I)Lo/ux;

    move-result-object v6

    .line 67
    iget-object v0, p0, Lo/uo;->ZN:Ljava/util/zip/Inflater;

    iget-object v1, v6, Lo/ux;->fw:[B

    iget v2, v6, Lo/ux;->limit:I

    iget v3, v6, Lo/ux;->limit:I

    rsub-int v3, v3, 0x800

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v7

    .line 68
    if-lez v7, :cond_3

    .line 69
    iget v0, v6, Lo/ux;->limit:I

    add-int/2addr v0, v7

    iput v0, v6, Lo/ux;->limit:I

    .line 70
    iget-wide v0, p1, Lo/ue;->size:J

    int-to-long v2, v7

    add-long/2addr v0, v2

    iput-wide v0, p1, Lo/ue;->size:J
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    int-to-long v0, v7

    return-wide v0

    .line 73
    :cond_3
    :try_start_1
    iget-object v0, p0, Lo/uo;->ZN:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lo/uo;->ZN:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 74
    :cond_4
    invoke-direct {p0}, Lo/uo;->er()V

    .line 75
    iget v0, v6, Lo/ux;->pos:I

    iget v1, v6, Lo/ux;->limit:I

    if-ne v0, v1, :cond_5

    .line 77
    invoke-virtual {v6}, Lo/ux;->et()Lo/ux;

    move-result-object v0

    iput-object v0, p1, Lo/ue;->ZG:Lo/ux;

    .line 78
    invoke-static {v6}, Lo/uy;->ˋ(Lo/ux;)V
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    :cond_5
    const-wide/16 v0, -0x1

    return-wide v0

    .line 82
    :cond_6
    if-eqz v5, :cond_7

    :try_start_2
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "source exhausted prematurely"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/util/zip/DataFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 85
    :cond_7
    goto :goto_1

    .line 83
    :catch_0
    move-exception v6

    .line 84
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 86
    :goto_1
    goto/16 :goto_0
.end method

.method public timeout()Lo/vb;
    .locals 1

    .line 119
    iget-object v0, p0, Lo/uo;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->timeout()Lo/vb;

    move-result-object v0

    return-object v0
.end method
