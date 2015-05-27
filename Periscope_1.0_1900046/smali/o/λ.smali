.class public final Lo/λ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ت;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/λ$if;
    }
.end annotation


# instance fields
.field private bytesRemaining:J

.field private final zR:Lo/ף;

.field private zS:Ljava/lang/String;

.field private zT:Ljava/io/InputStream;

.field private zU:Z

.field private final zV:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/ף;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lo/λ;->zV:Landroid/content/ContentResolver;

    .line 68
    iput-object p2, p0, Lo/λ;->zR:Lo/ף;

    .line 69
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lo/λ;->zS:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lo/λ;->zT:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 129
    :try_start_0
    iget-object v0, p0, Lo/λ;->zT:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lo/λ;->zT:Ljava/io/InputStream;

    .line 134
    iget-boolean v0, p0, Lo/λ;->zU:Z

    if-eqz v0, :cond_1

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/λ;->zU:Z

    .line 136
    iget-object v0, p0, Lo/λ;->zR:Lo/ף;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lo/λ;->zR:Lo/ף;

    invoke-interface {v0}, Lo/ף;->č()V

    goto :goto_0

    .line 130
    :catch_0
    move-exception v1

    .line 131
    :try_start_1
    new-instance v0, Lo/λ$if;

    invoke-direct {v0, v1}, Lo/λ$if;-><init>(Ljava/io/IOException;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :catchall_0
    move-exception v2

    const/4 v0, 0x0

    iput-object v0, p0, Lo/λ;->zT:Ljava/io/InputStream;

    .line 134
    iget-boolean v0, p0, Lo/λ;->zU:Z

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/λ;->zU:Z

    .line 136
    iget-object v0, p0, Lo/λ;->zR:Lo/ף;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lo/λ;->zR:Lo/ף;

    invoke-interface {v0}, Lo/ף;->č()V

    :cond_0
    throw v2

    .line 142
    :cond_1
    :goto_0
    return-void
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lo/λ;->zS:Ljava/lang/String;

    return-object v0
.end method

.method public read([BII)I
    .locals 7

    .line 98
    iget-wide v0, p0, Lo/λ;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 99
    const/4 v0, -0x1

    return v0

    .line 101
    :cond_0
    const/4 v5, 0x0

    .line 103
    :try_start_0
    iget-object v0, p0, Lo/λ;->zT:Ljava/io/InputStream;

    iget-wide v1, p0, Lo/λ;->bytesRemaining:J

    int-to-long v3, p3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 106
    goto :goto_0

    .line 104
    :catch_0
    move-exception v6

    .line 105
    new-instance v0, Lo/λ$if;

    invoke-direct {v0, v6}, Lo/λ$if;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 108
    :goto_0
    if-lez v5, :cond_1

    .line 109
    iget-wide v0, p0, Lo/λ;->bytesRemaining:J

    int-to-long v2, v5

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lo/λ;->bytesRemaining:J

    .line 110
    iget-object v0, p0, Lo/λ;->zR:Lo/ף;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lo/λ;->zR:Lo/ף;

    invoke-interface {v0, v5}, Lo/ף;->ɨ(I)V

    .line 115
    :cond_1
    return v5
.end method

.method public ˊ(Lo/к;)J
    .locals 7

    .line 74
    :try_start_0
    iget-object v0, p1, Lo/к;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/λ;->zS:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lo/λ;->zV:Landroid/content/ContentResolver;

    iget-object v1, p1, Lo/к;->uri:Landroid/net/Uri;

    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    .line 76
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lo/λ;->zT:Ljava/io/InputStream;

    .line 77
    iget-object v0, p0, Lo/λ;->zT:Ljava/io/InputStream;

    iget-wide v1, p1, Lo/к;->tU:J

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v5

    .line 78
    iget-wide v0, p1, Lo/к;->tU:J

    cmp-long v0, v5, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 79
    iget-wide v0, p1, Lo/к;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/λ;->zT:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    goto :goto_1

    :cond_1
    iget-wide v0, p1, Lo/к;->length:J

    :goto_1
    iput-wide v0, p0, Lo/λ;->bytesRemaining:J

    .line 81
    iget-wide v0, p0, Lo/λ;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 82
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_2
    goto :goto_2

    .line 84
    :catch_0
    move-exception v4

    .line 85
    new-instance v0, Lo/λ$if;

    invoke-direct {v0, v4}, Lo/λ$if;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 88
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/λ;->zU:Z

    .line 89
    iget-object v0, p0, Lo/λ;->zR:Lo/ף;

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p0, Lo/λ;->zR:Lo/ף;

    invoke-interface {v0}, Lo/ף;->ĉ()V

    .line 93
    :cond_3
    iget-wide v0, p0, Lo/λ;->bytesRemaining:J

    return-wide v0
.end method
