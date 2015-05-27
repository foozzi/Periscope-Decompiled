.class public final Lo/ʝ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ت;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ʝ$if;
    }
.end annotation


# instance fields
.field private bytesRemaining:J

.field private final gW:Landroid/content/res/AssetManager;

.field private final zR:Lo/ף;

.field private zS:Ljava/lang/String;

.field private zT:Ljava/io/InputStream;

.field private zU:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/ף;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lo/ʝ;->gW:Landroid/content/res/AssetManager;

    .line 66
    iput-object p2, p0, Lo/ʝ;->zR:Lo/ף;

    .line 67
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ʝ;->zS:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lo/ʝ;->zT:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 132
    :try_start_0
    iget-object v0, p0, Lo/ʝ;->zT:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ʝ;->zT:Ljava/io/InputStream;

    .line 137
    iget-boolean v0, p0, Lo/ʝ;->zU:Z

    if-eqz v0, :cond_1

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ʝ;->zU:Z

    .line 139
    iget-object v0, p0, Lo/ʝ;->zR:Lo/ף;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lo/ʝ;->zR:Lo/ף;

    invoke-interface {v0}, Lo/ף;->č()V

    goto :goto_0

    .line 133
    :catch_0
    move-exception v1

    .line 134
    :try_start_1
    new-instance v0, Lo/ʝ$if;

    invoke-direct {v0, v1}, Lo/ʝ$if;-><init>(Ljava/io/IOException;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :catchall_0
    move-exception v2

    const/4 v0, 0x0

    iput-object v0, p0, Lo/ʝ;->zT:Ljava/io/InputStream;

    .line 137
    iget-boolean v0, p0, Lo/ʝ;->zU:Z

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ʝ;->zU:Z

    .line 139
    iget-object v0, p0, Lo/ʝ;->zR:Lo/ף;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lo/ʝ;->zR:Lo/ף;

    invoke-interface {v0}, Lo/ף;->č()V

    :cond_0
    throw v2

    .line 145
    :cond_1
    :goto_0
    return-void
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lo/ʝ;->zS:Ljava/lang/String;

    return-object v0
.end method

.method public read([BII)I
    .locals 7

    .line 101
    iget-wide v0, p0, Lo/ʝ;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 102
    const/4 v0, -0x1

    return v0

    .line 104
    :cond_0
    const/4 v5, 0x0

    .line 106
    :try_start_0
    iget-object v0, p0, Lo/ʝ;->zT:Ljava/io/InputStream;

    iget-wide v1, p0, Lo/ʝ;->bytesRemaining:J

    int-to-long v3, p3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 109
    goto :goto_0

    .line 107
    :catch_0
    move-exception v6

    .line 108
    new-instance v0, Lo/ʝ$if;

    invoke-direct {v0, v6}, Lo/ʝ$if;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 111
    :goto_0
    if-lez v5, :cond_1

    .line 112
    iget-wide v0, p0, Lo/ʝ;->bytesRemaining:J

    int-to-long v2, v5

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lo/ʝ;->bytesRemaining:J

    .line 113
    iget-object v0, p0, Lo/ʝ;->zR:Lo/ף;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lo/ʝ;->zR:Lo/ף;

    invoke-interface {v0, v5}, Lo/ף;->ɨ(I)V

    .line 118
    :cond_1
    return v5
.end method

.method public ˊ(Lo/к;)J
    .locals 7

    .line 72
    :try_start_0
    iget-object v0, p1, Lo/к;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ʝ;->zS:Ljava/lang/String;

    .line 73
    iget-object v0, p1, Lo/к;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 74
    const-string v0, "/android_asset/"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const/16 v0, 0xf

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 76
    :cond_0
    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 79
    :cond_1
    :goto_0
    iget-object v0, p1, Lo/к;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ʝ;->zS:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lo/ʝ;->gW:Landroid/content/res/AssetManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lo/ʝ;->zT:Ljava/io/InputStream;

    .line 81
    iget-object v0, p0, Lo/ʝ;->zT:Ljava/io/InputStream;

    iget-wide v1, p1, Lo/к;->tU:J

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v5

    .line 82
    iget-wide v0, p1, Lo/к;->tU:J

    cmp-long v0, v5, v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 83
    iget-wide v0, p1, Lo/к;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Lo/ʝ;->zT:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    goto :goto_2

    :cond_3
    iget-wide v0, p1, Lo/к;->length:J

    :goto_2
    iput-wide v0, p0, Lo/ʝ;->bytesRemaining:J

    .line 85
    iget-wide v0, p0, Lo/ʝ;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 86
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_4
    goto :goto_3

    .line 88
    :catch_0
    move-exception v4

    .line 89
    new-instance v0, Lo/ʝ$if;

    invoke-direct {v0, v4}, Lo/ʝ$if;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 92
    :goto_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ʝ;->zU:Z

    .line 93
    iget-object v0, p0, Lo/ʝ;->zR:Lo/ף;

    if-eqz v0, :cond_5

    .line 94
    iget-object v0, p0, Lo/ʝ;->zR:Lo/ף;

    invoke-interface {v0}, Lo/ף;->ĉ()V

    .line 96
    :cond_5
    iget-wide v0, p0, Lo/ʝ;->bytesRemaining:J

    return-wide v0
.end method
