.class public Lo/tr;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/tr$1;,
        Lo/tr$ˊ;,
        Lo/tr$if;
    }
.end annotation


# instance fields
.field private final Zi:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<Lo/tu;>;"
        }
    .end annotation
.end field

.field private final Zj:Ljava/util/concurrent/CountDownLatch;

.field private Zk:Lo/tt;

.field private initialized:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lo/tr;->Zi:Ljava/util/concurrent/atomic/AtomicReference;

    .line 25
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lo/tr;->Zj:Ljava/util/concurrent/CountDownLatch;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/tr;->initialized:Z

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Lo/tr$1;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lo/tr;-><init>()V

    return-void
.end method

.method public static dN()Lo/tr;
    .locals 1

    .line 38
    invoke-static {}, Lo/tr$if;->dR()Lo/tr;

    move-result-object v0

    return-object v0
.end method

.method private ˏ(Lo/tu;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lo/tr;->Zi:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lo/tr;->Zj:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 164
    return-void
.end method


# virtual methods
.method public dO()Lo/tu;
    .locals 4

    .line 125
    :try_start_0
    iget-object v0, p0, Lo/tr;->Zj:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 126
    iget-object v0, p0, Lo/tr;->Zi:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/tu;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 127
    :catch_0
    move-exception v3

    .line 128
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Interrupted while waiting for settings data."

    invoke-interface {v0, v1, v2}, Lo/ps;->ᐨ(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized dP()Z
    .locals 2

    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lo/tr;->Zk:Lo/tt;

    invoke-interface {v0}, Lo/tt;->dJ()Lo/tu;

    move-result-object v1

    .line 140
    invoke-direct {p0, v1}, Lo/tr;->ˏ(Lo/tu;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dQ()Z
    .locals 5

    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v0, p0, Lo/tr;->Zk:Lo/tt;

    sget-object v1, Lo/ts;->Zn:Lo/ts;

    invoke-interface {v0, v1}, Lo/tt;->ˊ(Lo/ts;)Lo/tu;

    move-result-object v4

    .line 151
    invoke-direct {p0, v4}, Lo/tr;->ˏ(Lo/tu;)V

    .line 153
    if-nez v4, :cond_0

    .line 154
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Failed to force reload of settings from Crashlytics."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :cond_0
    if-eqz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public ˊ(Lo/tr$ˊ;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Lo/tr$\u02ca<TT;>;TT;)TT;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lo/tr;->Zi:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/tu;

    move-object v1, v0

    .line 114
    if-nez v1, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Lo/tr$ˊ;->ˎ(Lo/tu;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public declared-synchronized ˊ(Lo/pq;Lo/qr;Lo/sq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/tr;
    .locals 22

    monitor-enter p0

    .line 61
    move-object/from16 v0, p0

    :try_start_0
    iget-boolean v0, v0, Lo/tr;->initialized:Z

    if-eqz v0, :cond_0

    .line 62
    monitor-exit p0

    return-object p0

    .line 65
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/tr;->Zk:Lo/tt;

    if-nez v0, :cond_1

    .line 66
    invoke-virtual/range {p1 .. p1}, Lo/pq;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 67
    invoke-virtual/range {p2 .. p2}, Lo/qr;->cB()Ljava/lang/String;

    move-result-object v9

    .line 68
    new-instance v0, Lo/qf;

    invoke-direct {v0}, Lo/qf;-><init>()V

    invoke-virtual {v0, v8}, Lo/qf;->ᐠ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 69
    invoke-virtual/range {p2 .. p2}, Lo/qr;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v11

    .line 70
    new-instance v12, Lo/qx;

    invoke-direct {v12}, Lo/qx;-><init>()V

    .line 71
    new-instance v13, Lo/tl;

    invoke-direct {v13}, Lo/tl;-><init>()V

    .line 72
    new-instance v14, Lo/tj;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lo/tj;-><init>(Lo/pq;)V

    .line 73
    invoke-static {v8}, Lo/qh;->ᔈ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 74
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "https://settings.crashlytics.com/spi/v2/platforms/android/apps/%s/settings"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 76
    new-instance v17, Lo/tm;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, v16

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lo/tm;-><init>(Lo/pq;Ljava/lang/String;Ljava/lang/String;Lo/sq;)V

    .line 79
    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v9}, Lo/qr;->ʹ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v8}, Lo/qh;->ᴶ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lo/qh;->ˏ([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 82
    invoke-static {v11}, Lo/ql;->ї(Ljava/lang/String;)Lo/ql;

    move-result-object v0

    invoke-virtual {v0}, Lo/ql;->getId()I

    move-result v20

    .line 85
    new-instance v0, Lo/tx;

    move-object v1, v10

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, p5

    move-object/from16 v5, p4

    move/from16 v6, v20

    move-object v7, v15

    invoke-direct/range {v0 .. v7}, Lo/tx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v21, v0

    .line 88
    new-instance v0, Lo/tk;

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lo/tk;-><init>(Lo/pq;Lo/tx;Lo/qk;Lo/tw;Lo/th;Lo/ty;)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/tr;->Zk:Lo/tt;

    .line 92
    :cond_1
    const/4 v0, 0x1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/tr;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
