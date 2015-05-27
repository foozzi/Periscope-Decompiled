.class public final Lo/Դ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ت;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Դ$if;
    }
.end annotation


# instance fields
.field private AG:Ljava/io/RandomAccessFile;

.field private bytesRemaining:J

.field private final zR:Lo/ף;

.field private zS:Ljava/lang/String;

.field private zU:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/Դ;-><init>(Lo/ף;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lo/ף;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lo/Դ;->zR:Lo/ף;

    .line 61
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lo/Դ;->zS:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lo/Դ;->AG:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    .line 119
    :try_start_0
    iget-object v0, p0, Lo/Դ;->AG:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lo/Դ;->AG:Ljava/io/RandomAccessFile;

    .line 124
    iget-boolean v0, p0, Lo/Դ;->zU:Z

    if-eqz v0, :cond_1

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/Դ;->zU:Z

    .line 126
    iget-object v0, p0, Lo/Դ;->zR:Lo/ף;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lo/Դ;->zR:Lo/ף;

    invoke-interface {v0}, Lo/ף;->č()V

    goto :goto_0

    .line 120
    :catch_0
    move-exception v1

    .line 121
    :try_start_1
    new-instance v0, Lo/Դ$if;

    invoke-direct {v0, v1}, Lo/Դ$if;-><init>(Ljava/io/IOException;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :catchall_0
    move-exception v2

    const/4 v0, 0x0

    iput-object v0, p0, Lo/Դ;->AG:Ljava/io/RandomAccessFile;

    .line 124
    iget-boolean v0, p0, Lo/Դ;->zU:Z

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/Դ;->zU:Z

    .line 126
    iget-object v0, p0, Lo/Դ;->zR:Lo/ף;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lo/Դ;->zR:Lo/ף;

    invoke-interface {v0}, Lo/ף;->č()V

    :cond_0
    throw v2

    .line 132
    :cond_1
    :goto_0
    return-void
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lo/Դ;->zS:Ljava/lang/String;

    return-object v0
.end method

.method public read([BII)I
    .locals 7

    .line 88
    iget-wide v0, p0, Lo/Դ;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 89
    const/4 v0, -0x1

    return v0

    .line 91
    :cond_0
    const/4 v5, 0x0

    .line 93
    :try_start_0
    iget-object v0, p0, Lo/Դ;->AG:Ljava/io/RandomAccessFile;

    iget-wide v1, p0, Lo/Դ;->bytesRemaining:J

    int-to-long v3, p3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 96
    goto :goto_0

    .line 94
    :catch_0
    move-exception v6

    .line 95
    new-instance v0, Lo/Դ$if;

    invoke-direct {v0, v6}, Lo/Դ$if;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 98
    :goto_0
    if-lez v5, :cond_1

    .line 99
    iget-wide v0, p0, Lo/Դ;->bytesRemaining:J

    int-to-long v2, v5

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lo/Դ;->bytesRemaining:J

    .line 100
    iget-object v0, p0, Lo/Դ;->zR:Lo/ף;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lo/Դ;->zR:Lo/ף;

    invoke-interface {v0, v5}, Lo/ף;->ɨ(I)V

    .line 105
    :cond_1
    return v5
.end method

.method public ˊ(Lo/к;)J
    .locals 5

    .line 66
    :try_start_0
    iget-object v0, p1, Lo/к;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/Դ;->zS:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p1, Lo/к;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lo/Դ;->AG:Ljava/io/RandomAccessFile;

    .line 68
    iget-object v0, p0, Lo/Դ;->AG:Ljava/io/RandomAccessFile;

    iget-wide v1, p1, Lo/к;->tU:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 69
    iget-wide v0, p1, Lo/к;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/Դ;->AG:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget-wide v2, p1, Lo/к;->tU:J

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lo/к;->length:J

    :goto_0
    iput-wide v0, p0, Lo/Դ;->bytesRemaining:J

    .line 71
    iget-wide v0, p0, Lo/Դ;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 72
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_1
    goto :goto_1

    .line 74
    :catch_0
    move-exception v4

    .line 75
    new-instance v0, Lo/Դ$if;

    invoke-direct {v0, v4}, Lo/Դ$if;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 78
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/Դ;->zU:Z

    .line 79
    iget-object v0, p0, Lo/Դ;->zR:Lo/ף;

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lo/Դ;->zR:Lo/ף;

    invoke-interface {v0}, Lo/ף;->ĉ()V

    .line 83
    :cond_2
    iget-wide v0, p0, Lo/Դ;->bytesRemaining:J

    return-wide v0
.end method
