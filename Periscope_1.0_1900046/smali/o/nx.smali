.class public Lo/nx;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final PU:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field final RE:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Lo/oc;>;"
        }
    .end annotation
.end field

.field private final RF:Lo/ny;

.field private final RG:Lo/nz$if;

.field private final Rv:Ljava/util/concurrent/ScheduledExecutorService;

.field private final Rw:Lo/pq;

.field private final Rx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/mh<+Lo/mg;>;>;"
        }
    .end annotation
.end field

.field private final ok:Lo/qr;

.field private final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Lo/pq;Ljava/util/concurrent/ScheduledExecutorService;Lo/ny;Lo/nz$if;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/util/List;Ljavax/net/ssl/SSLSocketFactory;Lo/qr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/pq;Ljava/util/concurrent/ScheduledExecutorService;Lo/ny;Lo/nz$if;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/util/List<Lo/mh<+Lo/mg;>;>;Ljavax/net/ssl/SSLSocketFactory;Lo/qr;)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lo/nx;->Rw:Lo/pq;

    .line 86
    iput-object p2, p0, Lo/nx;->Rv:Ljava/util/concurrent/ScheduledExecutorService;

    .line 87
    iput-object p3, p0, Lo/nx;->RF:Lo/ny;

    .line 88
    iput-object p4, p0, Lo/nx;->RG:Lo/nz$if;

    .line 89
    iput-object p5, p0, Lo/nx;->PU:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 90
    iput-object p6, p0, Lo/nx;->Rx:Ljava/util/List;

    .line 91
    iput-object p7, p0, Lo/nx;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 92
    iput-object p8, p0, Lo/nx;->ok:Lo/qr;

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lo/nx;->RE:Ljava/util/concurrent/ConcurrentHashMap;

    .line 96
    return-void
.end method

.method private ᐟ(J)Lo/oc;
    .locals 9

    .line 132
    iget-object v0, p0, Lo/nx;->Rw:Lo/pq;

    invoke-virtual {v0}, Lo/pq;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 133
    new-instance v7, Lo/si;

    new-instance v0, Lo/sw;

    iget-object v1, p0, Lo/nx;->Rw:Lo/pq;

    invoke-direct {v0, v1}, Lo/sw;-><init>(Lo/pq;)V

    invoke-virtual {v0}, Lo/sw;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lo/nx;->ᐡ(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lo/nx;->ᐪ(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v6, v0, v1, v2}, Lo/si;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v0, Lo/oa;

    move-object v1, v6

    iget-object v2, p0, Lo/nx;->RG:Lo/nz$if;

    new-instance v3, Lo/qx;

    invoke-direct {v3}, Lo/qx;-><init>()V

    move-object v4, v7

    iget-object v5, p0, Lo/nx;->RF:Lo/ny;

    iget v5, v5, Lo/ny;->RL:I

    invoke-direct/range {v0 .. v5}, Lo/oa;-><init>(Landroid/content/Context;Lo/rt;Lo/qk;Lo/si;I)V

    move-object v8, v0

    .line 138
    new-instance v0, Lo/oc;

    invoke-virtual {p0, p1, p2, v8}, Lo/nx;->ˊ(JLo/oa;)Lo/se;

    move-result-object v1

    iget-object v2, p0, Lo/nx;->Rv:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v6, v1, v8, v2}, Lo/oc;-><init>(Landroid/content/Context;Lo/se;Lo/ru;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method


# virtual methods
.method ˊ(JLo/oa;)Lo/se;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JLo/oa;)Lo/se<Lo/nz;>;"
        }
    .end annotation

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/nx;->Rw:Lo/pq;

    invoke-virtual {v0}, Lo/pq;->getContext()Landroid/content/Context;

    move-result-object v15

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/nx;->RF:Lo/ny;

    iget-boolean v0, v0, Lo/ny;->RH:Z

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "Scribe enabled"

    invoke-static {v15, v0}, Lo/qh;->ᐝ(Landroid/content/Context;Ljava/lang/String;)V

    .line 146
    new-instance v0, Lo/nv;

    move-object/from16 v1, p0

    iget-object v2, v1, Lo/nx;->Rv:Ljava/util/concurrent/ScheduledExecutorService;

    move-object/from16 v1, p0

    iget-object v4, v1, Lo/nx;->RF:Lo/ny;

    new-instance v5, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;

    move-object/from16 v1, p0

    iget-object v7, v1, Lo/nx;->RF:Lo/ny;

    move-object/from16 v1, p0

    iget-object v10, v1, Lo/nx;->PU:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-object/from16 v1, p0

    iget-object v11, v1, Lo/nx;->Rx:Ljava/util/List;

    move-object/from16 v1, p0

    iget-object v12, v1, Lo/nx;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    move-object/from16 v1, p0

    iget-object v13, v1, Lo/nx;->Rv:Ljava/util/concurrent/ScheduledExecutorService;

    move-object/from16 v1, p0

    iget-object v14, v1, Lo/nx;->ok:Lo/qr;

    move-object v6, v15

    move-wide/from16 v8, p1

    invoke-direct/range {v5 .. v14}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;-><init>(Landroid/content/Context;Lo/ny;JLcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/util/List;Ljavax/net/ssl/SSLSocketFactory;Ljava/util/concurrent/ExecutorService;Lo/qr;)V

    move-object v1, v15

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lo/nv;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lo/oa;Lo/ny;Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;)V

    return-object v0

    .line 150
    :cond_0
    const-string v0, "Scribe disabled"

    invoke-static {v15, v0}, Lo/qh;->ᐝ(Landroid/content/Context;Ljava/lang/String;)V

    .line 151
    new-instance v0, Lo/rr;

    invoke-direct {v0}, Lo/rr;-><init>()V

    return-object v0
.end method

.method public ˊ(Lo/nz;J)Z
    .locals 3

    .line 103
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lo/nx;->יּ(J)Lo/oc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/oc;->ˊ(Lo/nz;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    const/4 v0, 0x1

    return v0

    .line 105
    :catch_0
    move-exception v2

    .line 106
    iget-object v0, p0, Lo/nx;->Rw:Lo/pq;

    invoke-virtual {v0}, Lo/pq;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Failed to scribe event"

    invoke-static {v0, v1, v2}, Lo/qh;->ˊ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method ᐡ(J)Ljava/lang/String;
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_se.tap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method ᐪ(J)Ljava/lang/String;
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_se_to_send"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method יּ(J)Lo/oc;
    .locals 3

    .line 125
    iget-object v0, p0, Lo/nx;->RE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lo/nx;->RE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lo/nx;->ᐟ(J)Lo/oc;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_0
    iget-object v0, p0, Lo/nx;->RE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/oc;

    return-object v0
.end method
