.class public final Lo/uk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/uz;


# instance fields
.field private final ZL:Ljava/util/zip/Deflater;

.field private closed:Z

.field private final sink:Lo/uh;


# direct methods
.method constructor <init>(Lo/uh;Ljava/util/zip/Deflater;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inflater == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    iput-object p1, p0, Lo/uk;->sink:Lo/uh;

    .line 56
    iput-object p2, p0, Lo/uk;->ZL:Ljava/util/zip/Deflater;

    .line 57
    return-void
.end method

.method public constructor <init>(Lo/uz;Ljava/util/zip/Deflater;)V
    .locals 1

    .line 44
    invoke-static {p1}, Lo/up;->ˊ(Lo/uz;)Lo/uh;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lo/uk;-><init>(Lo/uh;Ljava/util/zip/Deflater;)V

    .line 45
    return-void
.end method

.method private ᕁ(Z)V
    .locals 8
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .line 85
    iget-object v0, p0, Lo/uk;->sink:Lo/uh;

    invoke-interface {v0}, Lo/uh;->dS()Lo/ue;

    move-result-object v5

    .line 87
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lo/ue;->ľ(I)Lo/ux;

    move-result-object v6

    .line 93
    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/uk;->ZL:Ljava/util/zip/Deflater;

    iget-object v1, v6, Lo/ux;->fw:[B

    iget v2, v6, Lo/ux;->limit:I

    iget v3, v6, Lo/ux;->limit:I

    rsub-int v3, v3, 0x800

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v7

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lo/uk;->ZL:Ljava/util/zip/Deflater;

    iget-object v1, v6, Lo/ux;->fw:[B

    iget v2, v6, Lo/ux;->limit:I

    iget v3, v6, Lo/ux;->limit:I

    rsub-int v3, v3, 0x800

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v7

    .line 97
    :goto_1
    if-lez v7, :cond_1

    .line 98
    iget v0, v6, Lo/ux;->limit:I

    add-int/2addr v0, v7

    iput v0, v6, Lo/ux;->limit:I

    .line 99
    iget-wide v0, v5, Lo/ue;->size:J

    int-to-long v2, v7

    add-long/2addr v0, v2

    iput-wide v0, v5, Lo/ue;->size:J

    .line 100
    iget-object v0, p0, Lo/uk;->sink:Lo/uh;

    invoke-interface {v0}, Lo/uh;->eh()Lo/uh;

    goto :goto_2

    .line 101
    :cond_1
    iget-object v0, p0, Lo/uk;->ZL:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    iget v0, v6, Lo/ux;->pos:I

    iget v1, v6, Lo/ux;->limit:I

    if-ne v0, v1, :cond_2

    .line 104
    invoke-virtual {v6}, Lo/ux;->et()Lo/ux;

    move-result-object v0

    iput-object v0, v5, Lo/ue;->ZG:Lo/ux;

    .line 105
    invoke-static {v6}, Lo/uy;->ˋ(Lo/ux;)V

    .line 107
    :cond_2
    return-void

    .line 109
    :cond_3
    :goto_2
    goto/16 :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 123
    iget-boolean v0, p0, Lo/uk;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 127
    :cond_0
    const/4 v1, 0x0

    .line 129
    :try_start_0
    invoke-virtual {p0}, Lo/uk;->en()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    goto :goto_0

    .line 130
    :catch_0
    move-exception v2

    .line 131
    move-object v1, v2

    .line 135
    :goto_0
    :try_start_1
    iget-object v0, p0, Lo/uk;->ZL:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 138
    goto :goto_1

    .line 136
    :catch_1
    move-exception v2

    .line 137
    if-nez v1, :cond_1

    move-object v1, v2

    .line 141
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lo/uk;->sink:Lo/uh;

    invoke-interface {v0}, Lo/uh;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 144
    goto :goto_2

    .line 142
    :catch_2
    move-exception v2

    .line 143
    if-nez v1, :cond_2

    move-object v1, v2

    .line 145
    :cond_2
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/uk;->closed:Z

    .line 147
    if-eqz v1, :cond_3

    invoke-static {v1}, Lo/vd;->ʻ(Ljava/lang/Throwable;)V

    .line 148
    :cond_3
    return-void
.end method

.method en()V
    .locals 1

    .line 118
    iget-object v0, p0, Lo/uk;->ZL:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/uk;->ᕁ(Z)V

    .line 120
    return-void
.end method

.method public flush()V
    .locals 1

    .line 113
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/uk;->ᕁ(Z)V

    .line 114
    iget-object v0, p0, Lo/uk;->sink:Lo/uh;

    invoke-interface {v0}, Lo/uh;->flush()V

    .line 115
    return-void
.end method

.method public timeout()Lo/vb;
    .locals 1

    .line 151
    iget-object v0, p0, Lo/uk;->sink:Lo/uh;

    invoke-interface {v0}, Lo/uh;->timeout()Lo/vb;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeflaterSink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/uk;->sink:Lo/uh;

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

    .line 61
    iget-wide v0, p1, Lo/ue;->size:J

    move-wide v4, p2

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lo/vd;->checkOffsetAndCount(JJJ)V

    .line 62
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 64
    iget-object v6, p1, Lo/ue;->ZG:Lo/ux;

    .line 65
    iget v0, v6, Lo/ux;->limit:I

    iget v1, v6, Lo/ux;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v7, v0

    .line 66
    iget-object v0, p0, Lo/uk;->ZL:Ljava/util/zip/Deflater;

    iget-object v1, v6, Lo/ux;->fw:[B

    iget v2, v6, Lo/ux;->pos:I

    invoke-virtual {v0, v1, v2, v7}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/uk;->ᕁ(Z)V

    .line 72
    iget-wide v0, p1, Lo/ue;->size:J

    int-to-long v2, v7

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lo/ue;->size:J

    .line 73
    iget v0, v6, Lo/ux;->pos:I

    add-int/2addr v0, v7

    iput v0, v6, Lo/ux;->pos:I

    .line 74
    iget v0, v6, Lo/ux;->pos:I

    iget v1, v6, Lo/ux;->limit:I

    if-ne v0, v1, :cond_0

    .line 75
    invoke-virtual {v6}, Lo/ux;->et()Lo/ux;

    move-result-object v0

    iput-object v0, p1, Lo/ue;->ZG:Lo/ux;

    .line 76
    invoke-static {v6}, Lo/uy;->ˋ(Lo/ux;)V

    .line 79
    :cond_0
    int-to-long v0, v7

    sub-long/2addr p2, v0

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    return-void
.end method
