.class public Lo/nu;
.super Lo/nx;
.source ""


# static fields
.field private static volatile Rv:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private final Rw:Lo/pq;

.field private final Rx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/mh<+Lo/mg;>;>;"
        }
    .end annotation
.end field

.field private final pX:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/pq;Ljava/lang/String;Ljava/util/List;Lo/qr;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/pq;Ljava/lang/String;Ljava/util/List<Lo/mh<+Lo/mg;>;>;Lo/qr;)V"
        }
    .end annotation

    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Lo/nu;->bS()Lo/fl;

    move-result-object v3

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lo/nu;-><init>(Lo/pq;Ljava/lang/String;Lo/fl;Ljava/util/List;Lo/qr;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lo/pq;Ljava/lang/String;Lo/fl;Ljava/util/List;Lo/qr;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/pq;Ljava/lang/String;Lo/fl;Ljava/util/List<Lo/mh<+Lo/mg;>;>;Lo/qr;)V"
        }
    .end annotation

    .line 52
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Lo/nu;->bT()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-static {}, Lo/tr;->dN()Lo/tr;

    move-result-object v3

    invoke-virtual {v3}, Lo/tr;->dO()Lo/tu;

    move-result-object v3

    invoke-static {p2, p1}, Lo/nu;->ˊ(Ljava/lang/String;Lo/pq;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lo/nu;->ˊ(Lo/tu;Ljava/lang/String;)Lo/ny;

    move-result-object v3

    new-instance v4, Lo/nz$if;

    invoke-direct {v4, p3}, Lo/nz$if;-><init>(Lo/fl;)V

    invoke-static {}, Lo/mn;->bd()Lo/mn;

    move-result-object v5

    invoke-virtual {v5}, Lo/mn;->be()Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v5

    move-object v6, p4

    invoke-static {}, Lo/mn;->bd()Lo/mn;

    move-result-object v7

    invoke-virtual {v7}, Lo/mn;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v7

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lo/nx;-><init>(Lo/pq;Ljava/util/concurrent/ScheduledExecutorService;Lo/ny;Lo/nz$if;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/util/List;Ljavax/net/ssl/SSLSocketFactory;Lo/qr;)V

    .line 60
    iput-object p4, p0, Lo/nu;->Rx:Ljava/util/List;

    .line 61
    iput-object p1, p0, Lo/nu;->Rw:Lo/pq;

    .line 62
    invoke-virtual {p5}, Lo/qr;->cq()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/nu;->pX:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private static bS()Lo/fl;
    .locals 2

    .line 114
    new-instance v0, Lo/fr;

    invoke-direct {v0}, Lo/fr;-><init>()V

    sget-object v1, Lo/fe;->JT:Lo/fe;

    invoke-virtual {v0, v1}, Lo/fr;->ˊ(Lo/fe;)Lo/fr;

    move-result-object v0

    invoke-virtual {v0}, Lo/fr;->f()Lo/fl;

    move-result-object v0

    return-object v0
.end method

.method private static bT()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3

    .line 120
    sget-object v0, Lo/nu;->Rv:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_1

    .line 121
    const-class v1, Lo/nu;

    monitor-enter v1

    .line 122
    :try_start_0
    sget-object v0, Lo/nu;->Rv:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 123
    const-string v0, "scribe"

    invoke-static {v0}, Lo/qn;->ײ(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lo/nu;->Rv:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 127
    :cond_1
    :goto_0
    sget-object v0, Lo/nu;->Rv:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method private static isEnabled()Z
    .locals 2

    .line 156
    const-string v0, "release"

    const-string v1, "debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static ˊ(Ljava/lang/String;Lo/pq;)Ljava/lang/String;
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fabric/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lo/pq;->ch()Lo/pj;

    move-result-object v1

    invoke-virtual {v1}, Lo/pj;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lo/pq;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static ˊ(Lo/tu;Ljava/lang/String;)Lo/ny;
    .locals 12

    .line 136
    if-eqz p0, :cond_0

    iget-object v0, p0, Lo/tu;->py:Lo/tc;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lo/tu;->py:Lo/tc;

    iget v9, v0, Lo/tc;->Yy:I

    .line 138
    iget-object v0, p0, Lo/tu;->py:Lo/tc;

    iget v10, v0, Lo/tc;->Yv:I

    goto :goto_0

    .line 140
    :cond_0
    const/16 v9, 0x64

    .line 141
    const/16 v10, 0x258

    .line 144
    :goto_0
    const-string v0, "https://syndication.twitter.com"

    const-string v1, ""

    invoke-static {v0, v1}, Lo/nu;->ˍ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 145
    new-instance v0, Lo/ny;

    invoke-static {}, Lo/nu;->isEnabled()Z

    move-result v1

    const-string v3, "i"

    const-string v4, "sdk"

    const-string v5, ""

    move-object v2, v11

    move-object v6, p1

    move v7, v9

    move v8, v10

    invoke-direct/range {v0 .. v8}, Lo/ny;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0
.end method

.method static ˍ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    return-object p1

    .line 177
    :cond_0
    return-object p0
.end method


# virtual methods
.method aU()Lo/mg;
    .locals 4

    .line 89
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lo/nu;->Rx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/mh;

    move-object v3, v0

    .line 91
    invoke-interface {v3}, Lo/mh;->aU()Lo/mg;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_0

    .line 93
    goto :goto_1

    .line 95
    :cond_0
    goto :goto_0

    .line 96
    :cond_1
    :goto_1
    return-object v1
.end method

.method public ˊ(Lo/nz;)V
    .locals 2

    .line 84
    invoke-virtual {p0}, Lo/nu;->aU()Lo/mg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/nu;->ᐝ(Lo/mg;)J

    move-result-wide v0

    invoke-super {p0, p1, v0, v1}, Lo/nx;->ˊ(Lo/nz;J)Z

    .line 85
    return-void
.end method

.method public varargs ˊ([Lo/nw;)V
    .locals 13

    .line 67
    iget-object v0, p0, Lo/nu;->Rw:Lo/pq;

    invoke-virtual {v0}, Lo/pq;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lo/nu;->Rw:Lo/pq;

    invoke-virtual {v0}, Lo/pq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 70
    :cond_0
    const-string v6, ""

    .line 72
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 78
    move-object v9, p1

    array-length v10, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_1

    aget-object v12, v9, v11

    .line 79
    new-instance v0, Lo/od;

    iget-object v5, p0, Lo/nu;->pX:Ljava/lang/String;

    move-object v1, v12

    move-wide v2, v7

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lo/od;-><init>(Lo/nw;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lo/nu;->ˊ(Lo/nz;)V

    .line 78
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 81
    :cond_1
    return-void
.end method

.method ᐝ(Lo/mg;)J
    .locals 4

    .line 102
    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p1}, Lo/mg;->getId()J

    move-result-wide v2

    goto :goto_0

    .line 108
    :cond_0
    const-wide/16 v2, 0x0

    .line 110
    :goto_0
    return-wide v2
.end method
