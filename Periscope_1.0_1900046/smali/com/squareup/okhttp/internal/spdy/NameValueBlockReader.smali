.class Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private compressedLimit:I

.field private final inflaterSource:Lo/uo;

.field private final source:Lo/ui;


# direct methods
.method public constructor <init>(Lo/ui;)V
    .locals 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v1, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader$1;

    invoke-direct {v1, p0, p1}, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader$1;-><init>(Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;Lo/va;)V

    .line 65
    new-instance v2, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader$2;

    invoke-direct {v2, p0}, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader$2;-><init>(Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;)V

    .line 77
    new-instance v0, Lo/uo;

    invoke-direct {v0, v1, v2}, Lo/uo;-><init>(Lo/va;Ljava/util/zip/Inflater;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->inflaterSource:Lo/uo;

    .line 78
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->inflaterSource:Lo/uo;

    invoke-static {v0}, Lo/up;->ˋ(Lo/va;)Lo/ui;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->source:Lo/ui;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;)I
    .locals 1

    .line 37
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I

    return v0
.end method

.method static synthetic access$002(Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I

    return p1
.end method

.method private doneReading()V
    .locals 3

    .line 109
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I

    if-lez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->inflaterSource:Lo/uo;

    invoke-virtual {v0}, Lo/uo;->eq()Z

    .line 111
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compressedLimit > 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    return-void
.end method

.method private readByteString()Lo/uj;
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readInt()I

    move-result v3

    .line 102
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->source:Lo/ui;

    int-to-long v1, v3

    invoke-interface {v0, v1, v2}, Lo/ui;->ᗮ(J)Lo/uj;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->close()V

    .line 117
    return-void
.end method

.method public readNameValueBlock(I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
        }
    .end annotation

    .line 82
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->compressedLimit:I

    .line 84
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->source:Lo/ui;

    invoke-interface {v0}, Lo/ui;->readInt()I

    move-result v3

    .line 85
    if-gez v3, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numberOfPairs < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    const/16 v0, 0x400

    if-le v3, v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numberOfPairs > 1024: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_3

    .line 90
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->readByteString()Lo/uj;

    move-result-object v0

    invoke-virtual {v0}, Lo/uj;->em()Lo/uj;

    move-result-object v6

    .line 91
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->readByteString()Lo/uj;

    move-result-object v7

    .line 92
    invoke-virtual {v6}, Lo/uj;->size()I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "name.size == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_2
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-direct {v0, v6, v7}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lo/uj;Lo/uj;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 96
    :cond_3
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/NameValueBlockReader;->doneReading()V

    .line 97
    return-object v4
.end method
