.class public Lo/ᴻ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᓳ;


# static fields
.field private static iX:Lo/ᴻ;


# instance fields
.field private final directory:Ljava/io/File;

.field private final iY:Lo/ᴠ;

.field private final iZ:Lo/ῒ;

.field private ja:Lo/ᴐ;

.field private final ᴾ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lo/ᴻ;->iX:Lo/ᴻ;

    return-void
.end method

.method protected constructor <init>(Ljava/io/File;I)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lo/ᴠ;

    invoke-direct {v0}, Lo/ᴠ;-><init>()V

    iput-object v0, p0, Lo/ᴻ;->iY:Lo/ᴠ;

    .line 52
    iput-object p1, p0, Lo/ᴻ;->directory:Ljava/io/File;

    .line 53
    iput p2, p0, Lo/ᴻ;->ᴾ:I

    .line 54
    new-instance v0, Lo/ῒ;

    invoke-direct {v0}, Lo/ῒ;-><init>()V

    iput-object v0, p0, Lo/ᴻ;->iZ:Lo/ῒ;

    .line 55
    return-void
.end method

.method public static declared-synchronized ˊ(Ljava/io/File;I)Lo/ᓳ;
    .locals 2

    const-class v1, Lo/ᴻ;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lo/ᴻ;->iX:Lo/ᴻ;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lo/ᴻ;

    invoke-direct {v0, p0, p1}, Lo/ᴻ;-><init>(Ljava/io/File;I)V

    sput-object v0, Lo/ᴻ;->iX:Lo/ᴻ;

    .line 48
    :cond_0
    sget-object v0, Lo/ᴻ;->iX:Lo/ᴻ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method private declared-synchronized ᵦ()Lo/ᴐ;
    .locals 6

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lo/ᴻ;->ja:Lo/ᴐ;

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lo/ᴻ;->directory:Ljava/io/File;

    iget v1, p0, Lo/ᴻ;->ᴾ:I

    int-to-long v1, v1

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v1, v2}, Lo/ᴐ;->ˊ(Ljava/io/File;IIJ)Lo/ᴐ;

    move-result-object v0

    iput-object v0, p0, Lo/ᴻ;->ja:Lo/ᴐ;

    .line 61
    :cond_0
    iget-object v0, p0, Lo/ᴻ;->ja:Lo/ᴐ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method


# virtual methods
.method public ʻ(Lo/ﮆ;)V
    .locals 4

    .line 116
    iget-object v0, p0, Lo/ᴻ;->iZ:Lo/ῒ;

    invoke-virtual {v0, p1}, Lo/ῒ;->ι(Lo/ﮆ;)Ljava/lang/String;

    move-result-object v2

    .line 118
    :try_start_0
    invoke-direct {p0}, Lo/ᴻ;->ᵦ()Lo/ᴐ;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/ᴐ;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    goto :goto_0

    .line 119
    :catch_0
    move-exception v3

    .line 120
    const-string v0, "DiskLruCacheWrapper"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "DiskLruCacheWrapper"

    const-string v1, "Unable to delete from disk cache"

    invoke-static {v0, v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    :cond_0
    :goto_0
    return-void
.end method

.method public ˊ(Lo/ﮆ;Lo/ᓳ$ˊ;)V
    .locals 7

    .line 90
    iget-object v0, p0, Lo/ᴻ;->iZ:Lo/ῒ;

    invoke-virtual {v0, p1}, Lo/ῒ;->ι(Lo/ﮆ;)Ljava/lang/String;

    move-result-object v2

    .line 91
    iget-object v0, p0, Lo/ᴻ;->iY:Lo/ᴠ;

    invoke-virtual {v0, p1}, Lo/ᴠ;->ʼ(Lo/ﮆ;)V

    .line 93
    :try_start_0
    invoke-direct {p0}, Lo/ᴻ;->ᵦ()Lo/ᴐ;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/ᴐ;->ʽ(Ljava/lang/String;)Lo/ᴐ$if;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 95
    if-eqz v3, :cond_1

    .line 97
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v3, v0}, Lo/ᴐ$if;->ﺑ(I)Ljava/io/File;

    move-result-object v4

    .line 98
    invoke-interface {p2, v4}, Lo/ᓳ$ˊ;->ˎ(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v3}, Lo/ᴐ$if;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Lo/ᴐ$if;->abortUnlessCommitted()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    goto :goto_0

    .line 102
    :catchall_0
    move-exception v5

    :try_start_3
    invoke-virtual {v3}, Lo/ᴐ$if;->abortUnlessCommitted()V

    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 110
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/ᴻ;->iY:Lo/ᴠ;

    invoke-virtual {v0, p1}, Lo/ᴠ;->ʽ(Lo/ﮆ;)V

    .line 111
    goto :goto_1

    .line 105
    :catch_0
    move-exception v3

    .line 106
    const-string v0, "DiskLruCacheWrapper"

    const/4 v1, 0x5

    :try_start_4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    const-string v0, "DiskLruCacheWrapper"

    const-string v1, "Unable to put to disk cache"

    invoke-static {v0, v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 110
    :cond_2
    iget-object v0, p0, Lo/ᴻ;->iY:Lo/ᴠ;

    invoke-virtual {v0, p1}, Lo/ᴠ;->ʽ(Lo/ﮆ;)V

    .line 111
    goto :goto_1

    .line 110
    :catchall_1
    move-exception v6

    iget-object v0, p0, Lo/ᴻ;->iY:Lo/ᴠ;

    invoke-virtual {v0, p1}, Lo/ᴠ;->ʽ(Lo/ﮆ;)V

    throw v6

    .line 112
    :goto_1
    return-void
.end method

.method public ᐝ(Lo/ﮆ;)Ljava/io/File;
    .locals 5

    .line 70
    iget-object v0, p0, Lo/ᴻ;->iZ:Lo/ῒ;

    invoke-virtual {v0, p1}, Lo/ῒ;->ι(Lo/ﮆ;)Ljava/lang/String;

    move-result-object v2

    .line 71
    const/4 v3, 0x0

    .line 76
    :try_start_0
    invoke-direct {p0}, Lo/ᴻ;->ᵦ()Lo/ᴐ;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/ᴐ;->ʼ(Ljava/lang/String;)Lo/ᴐ$ˋ;

    move-result-object v4

    .line 77
    if-eqz v4, :cond_0

    .line 78
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lo/ᴐ$ˋ;->ﺑ(I)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 84
    :cond_0
    goto :goto_0

    .line 80
    :catch_0
    move-exception v4

    .line 81
    const-string v0, "DiskLruCacheWrapper"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    const-string v0, "DiskLruCacheWrapper"

    const-string v1, "Unable to get from disk cache"

    invoke-static {v0, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    :cond_1
    :goto_0
    return-object v3
.end method
