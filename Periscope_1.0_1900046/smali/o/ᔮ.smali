.class Lo/ᔮ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᔮ$if;
    }
.end annotation


# static fields
.field private static final oX:Ljava/io/FilenameFilter;

.field static final oY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private static final oZ:[S


# instance fields
.field private final pa:Ljava/lang/Object;

.field private final pb:Lo/ᓺ;

.field private pc:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lo/ᘤ;

    invoke-direct {v0}, Lo/ᘤ;-><init>()V

    sput-object v0, Lo/ᔮ;->oX:Ljava/io/FilenameFilter;

    .line 32
    const-string v0, "X-CRASHLYTICS-INVALID-SESSION"

    const-string v1, "1"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lo/ᔮ;->oY:Ljava/util/Map;

    .line 35
    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lo/ᔮ;->oZ:[S

    return-void

    :array_0
    .array-data 2
        0xas
        0x14s
        0x1es
        0x3cs
        0x78s
        0x12cs
    .end array-data
.end method

.method public constructor <init>(Lo/ᓺ;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/ᔮ;->pa:Ljava/lang/Object;

    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "createReportCall must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iput-object p1, p0, Lo/ᔮ;->pb:Lo/ᓺ;

    .line 47
    return-void
.end method

.method static synthetic ˊ(Lo/ᔮ;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 23
    iput-object p1, p0, Lo/ᔮ;->pc:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic ᔪ()[S
    .locals 1

    .line 23
    sget-object v0, Lo/ᔮ;->oZ:[S

    return-object v0
.end method


# virtual methods
.method ˊ(Lo/ᔪ;)Z
    .locals 10

    .line 74
    const/4 v4, 0x0

    .line 75
    iget-object v5, p0, Lo/ᔮ;->pa:Ljava/lang/Object;

    monitor-enter v5

    .line 77
    :try_start_0
    invoke-static {}, Lo/ɬ;->ｿ()Lo/ɬ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ɬ;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 79
    new-instance v7, Lo/ᓚ;

    new-instance v0, Lo/qf;

    invoke-direct {v0}, Lo/qf;-><init>()V

    invoke-virtual {v0, v6}, Lo/qf;->ᐠ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0, p1}, Lo/ᓚ;-><init>(Ljava/lang/String;Lo/ᔪ;)V

    .line 81
    iget-object v0, p0, Lo/ᔮ;->pb:Lo/ᓺ;

    invoke-interface {v0, v7}, Lo/ᓺ;->ˊ(Lo/ᓚ;)Z

    move-result v8

    .line 83
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crashlytics report upload "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v8, :cond_0

    const-string v3, "complete: "

    goto :goto_0

    :cond_0
    const-string v3, "FAILED: "

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lo/ᔪ;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ـ(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    if-eqz v8, :cond_1

    .line 87
    invoke-interface {p1}, Lo/ᔪ;->ᔂ()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    const/4 v4, 0x1

    .line 94
    :cond_1
    goto :goto_1

    .line 90
    :catch_0
    move-exception v6

    .line 93
    :try_start_1
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occurred sending report "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v6}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :goto_1
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v9

    monitor-exit v5

    throw v9

    .line 96
    :goto_2
    return v4
.end method

.method public declared-synchronized ᐧ(F)V
    .locals 3

    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lo/ᔮ;->pc:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lo/ᔮ$if;

    invoke-direct {v1, p0, p1}, Lo/ᔮ$if;-><init>(Lo/ᔮ;F)V

    const-string v2, "Crashlytics Report Uploader"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lo/ᔮ;->pc:Ljava/lang/Thread;

    .line 56
    iget-object v0, p0, Lo/ᔮ;->pc:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method ᔩ()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/List<Lo/\u152a;>;"
        }
    .end annotation

    .line 100
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Checking for crash reports..."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v5, p0, Lo/ᔮ;->pa:Ljava/lang/Object;

    monitor-enter v5

    .line 104
    :try_start_0
    invoke-static {}, Lo/ɬ;->ｿ()Lo/ɬ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ɬ;->Τ()Ljava/io/File;

    move-result-object v0

    sget-object v1, Lo/ᔮ;->oX:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 105
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v5

    throw v6

    .line 107
    :goto_0
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 108
    move-object v6, v4

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    aget-object v9, v6, v8

    .line 109
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found crash report "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v0, Lo/ᴈ;

    invoke-direct {v0, v9}, Lo/ᴈ;-><init>(Ljava/io/File;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 113
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "No reports found."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_1
    return-object v5
.end method
