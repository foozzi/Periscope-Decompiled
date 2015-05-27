.class public final Lo/ﺰ;
.super Ljava/io/FilterInputStream;
.source ""


# instance fields
.field private final contentLength:J

.field private nb:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;J)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 45
    iput-wide p2, p0, Lo/ﺰ;->contentLength:J

    .line 46
    return-void
.end method

.method public static ˊ(Ljava/io/InputStream;J)Ljava/io/InputStream;
    .locals 1

    .line 26
    new-instance v0, Lo/ﺰ;

    invoke-direct {v0, p0, p1, p2}, Lo/ﺰ;-><init>(Ljava/io/InputStream;J)V

    return-object v0
.end method

.method private ᕝ(I)I
    .locals 4

    .line 69
    if-ltz p1, :cond_0

    .line 70
    iget v0, p0, Lo/ﺰ;->nb:I

    add-int/2addr v0, p1

    iput v0, p0, Lo/ﺰ;->nb:I

    goto :goto_0

    .line 71
    :cond_0
    iget-wide v0, p0, Lo/ﺰ;->contentLength:J

    iget v2, p0, Lo/ﺰ;->nb:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 72
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read all expected data, expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lo/ﺰ;->contentLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but read: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lo/ﺰ;->nb:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    :goto_0
    return p1
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 5

    monitor-enter p0

    .line 50
    :try_start_0
    iget-wide v0, p0, Lo/ﺰ;->contentLength:J

    iget v2, p0, Lo/ﺰ;->nb:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lo/ﺰ;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    long-to-int v0, v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized read()I
    .locals 2

    monitor-enter p0

    .line 55
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    invoke-direct {p0, v0}, Lo/ﺰ;->ᕝ(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public read([B)I
    .locals 2

    .line 60
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lo/ﺰ;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized read([BII)I
    .locals 1

    monitor-enter p0

    .line 65
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    invoke-direct {p0, v0}, Lo/ﺰ;->ᕝ(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
