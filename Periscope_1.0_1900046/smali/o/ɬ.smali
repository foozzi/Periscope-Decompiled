.class public Lo/ɬ;
.super Lo/pq;
.source ""

# interfaces
.implements Lo/pr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ɬ$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/pq<Ljava/lang/Void;>;Lo/pr;"
    }
.end annotation

.annotation runtime Lo/rg;
    cV = {
        Lo/ﾋ;
    }
.end annotation


# instance fields
.field private installerPackageName:Ljava/lang/String;

.field private nA:Ljava/io/File;

.field private nB:Lo/ٱ;

.field private nC:Lo/ऽ;

.field private nD:Ljava/lang/String;

.field private nE:Ljava/lang/String;

.field private nF:Ljava/lang/String;

.field private nG:Ljava/lang/String;

.field private nH:F

.field private nI:Z

.field private final nJ:Lo/ᔩ;

.field private nK:Lo/sq;

.field private nL:Lo/ة;

.field private nM:Lo/ﾋ;

.field private nn:Ljava/lang/String;

.field private final ny:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private final nz:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<Lo/pq<Ljava/lang/Boolean;>;>;"
        }
    .end annotation
.end field

.field private packageName:Ljava/lang/String;

.field private final startTime:J

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 202
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lo/ɬ;-><init>(FLo/ٱ;Lo/ᔩ;Z)V

    .line 203
    return-void
.end method

.method constructor <init>(FLo/ٱ;Lo/ᔩ;Z)V
    .locals 6

    .line 207
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    const-string v5, "Crashlytics Exception Handler"

    invoke-static {v5}, Lo/qn;->Ӏ(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lo/ɬ;-><init>(FLo/ٱ;Lo/ᔩ;ZLjava/util/concurrent/ExecutorService;)V

    .line 209
    return-void
.end method

.method constructor <init>(FLo/ٱ;Lo/ᔩ;ZLjava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 216
    invoke-direct {p0}, Lo/pq;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ɬ;->nD:Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ɬ;->nE:Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ɬ;->nF:Ljava/lang/String;

    .line 217
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lo/ɬ;->ny:Ljava/util/concurrent/ConcurrentHashMap;

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/ɬ;->startTime:J

    .line 219
    iput p1, p0, Lo/ɬ;->nH:F

    .line 220
    iput-object p2, p0, Lo/ɬ;->nB:Lo/ٱ;

    .line 221
    iput-object p3, p0, Lo/ɬ;->nJ:Lo/ᔩ;

    .line 222
    iput-boolean p4, p0, Lo/ɬ;->nI:Z

    .line 223
    new-instance v0, Lo/ة;

    invoke-direct {v0, p5}, Lo/ة;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lo/ɬ;->nL:Lo/ة;

    .line 224
    const/4 v0, 0x2

    new-array v0, v0, [Lo/pq;

    new-instance v1, Lo/ᴣ;

    invoke-direct {v1}, Lo/ᴣ;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lo/ｆ;

    invoke-direct {v1}, Lo/ｆ;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lo/ɬ;->nz:Ljava/util/Collection;

    .line 225
    return-void
.end method

.method private ˊ(FI)I
    .locals 1

    .line 1112
    int-to-float v0, p2

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic ˊ(Lo/ɬ;FI)I
    .locals 1

    .line 65
    invoke-direct {p0, p1, p2}, Lo/ɬ;->ˊ(FI)I

    move-result v0

    return v0
.end method

.method static synthetic ˊ(Lo/ɬ;)Ljava/io/File;
    .locals 1

    .line 65
    iget-object v0, p0, Lo/ɬ;->nA:Ljava/io/File;

    return-object v0
.end method

.method private ˊ(Landroid/app/Activity;Lo/tp;)Z
    .locals 9

    .line 986
    new-instance v6, Lo/ᓾ;

    invoke-direct {v6, p1, p2}, Lo/ᓾ;-><init>(Landroid/content/Context;Lo/tp;)V

    .line 990
    new-instance v7, Lo/ɬ$if;

    const/4 v0, 0x0

    invoke-direct {v7, p0, v0}, Lo/ɬ$if;-><init>(Lo/ɬ;Lo/ο;)V

    .line 992
    move-object v8, p1

    .line 994
    new-instance v0, Lo/ԍ;

    move-object v1, p0

    move-object v2, v8

    move-object v3, v7

    move-object v4, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lo/ԍ;-><init>(Lo/ɬ;Landroid/app/Activity;Lo/ɬ$if;Lo/ᓾ;Lo/tp;)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1059
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Waiting for user opt-in."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    invoke-virtual {v7}, Lo/ɬ$if;->await()V

    .line 1061
    invoke-virtual {v7}, Lo/ɬ$if;->ӵ()Z

    move-result v0

    return v0
.end method

.method private static ˊ(Ljava/lang/String;Lo/ɬ;)Z
    .locals 4

    .line 1086
    if-eqz p1, :cond_0

    iget-object v0, p1, Lo/ɬ;->nC:Lo/ऽ;

    if-nez v0, :cond_1

    .line 1087
    :cond_0
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crashlytics must be initialized by calling Fabric.with(Context) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1090
    const/4 v0, 0x0

    return v0

    .line 1092
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic ˊ(Lo/ɬ;Landroid/app/Activity;Lo/tp;)Z
    .locals 1

    .line 65
    invoke-direct {p0, p1, p2}, Lo/ɬ;->ˊ(Landroid/app/Activity;Lo/tp;)Z

    move-result v0

    return v0
.end method

.method private ˋ(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 308
    iget-object v0, p0, Lo/ɬ;->nJ:Lo/ᔩ;

    if-eqz v0, :cond_0

    new-instance v4, Lo/ڙ;

    iget-object v0, p0, Lo/ɬ;->nJ:Lo/ᔩ;

    invoke-direct {v4, v0}, Lo/ڙ;-><init>(Lo/ᔩ;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 310
    :goto_0
    new-instance v0, Lo/sl;

    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/sl;-><init>(Lo/ps;)V

    iput-object v0, p0, Lo/ɬ;->nK:Lo/sq;

    .line 311
    iget-object v0, p0, Lo/ɬ;->nK:Lo/sq;

    invoke-interface {v0, v4}, Lo/sq;->ˊ(Lo/ss;)V

    .line 314
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ɬ;->packageName:Ljava/lang/String;

    .line 315
    invoke-virtual {p0}, Lo/ɬ;->cg()Lo/qr;

    move-result-object v0

    invoke-virtual {v0}, Lo/qr;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ɬ;->installerPackageName:Ljava/lang/String;

    .line 316
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Installer package name is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lo/ɬ;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 320
    iget-object v0, p0, Lo/ɬ;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 321
    iget v0, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ɬ;->nG:Ljava/lang/String;

    .line 322
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "0.0"

    goto :goto_1

    :cond_1
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lo/ɬ;->versionName:Ljava/lang/String;

    .line 327
    invoke-static {p1}, Lo/qh;->ᴶ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ɬ;->nn:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    goto :goto_2

    .line 329
    :catch_0
    move-exception v5

    .line 330
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Error setting up app properties"

    invoke-interface {v0, v1, v2, v5}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 335
    :goto_2
    invoke-virtual {p0}, Lo/ɬ;->cg()Lo/qr;

    move-result-object v0

    invoke-virtual {v0}, Lo/qr;->cI()Ljava/lang/String;

    .line 339
    iget-object v0, p0, Lo/ɬ;->nn:Ljava/lang/String;

    invoke-direct {p0, p1}, Lo/ɬ;->ᐨ(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lo/ɬ;->ˊ(Ljava/lang/String;Z)Lo/ć;

    move-result-object v0

    iget-object v1, p0, Lo/ɬ;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lo/ć;->ˊ(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public static ˋ(Ljava/lang/Throwable;)V
    .locals 5

    .line 442
    invoke-static {}, Lo/ɬ;->у()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    return-void

    .line 446
    :cond_0
    invoke-static {}, Lo/ɬ;->ｿ()Lo/ɬ;

    move-result-object v4

    .line 447
    const-string v0, "prior to logging exceptions."

    invoke-static {v0, v4}, Lo/ɬ;->ˊ(Ljava/lang/String;Lo/ɬ;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 448
    if-nez p0, :cond_1

    .line 449
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Crashlytics is ignoring a request to log a null exception."

    const/4 v3, 0x5

    invoke-interface {v0, v3, v1, v2}, Lo/ps;->ˋ(ILjava/lang/String;Ljava/lang/String;)V

    .line 451
    return-void

    .line 454
    :cond_1
    iget-object v0, v4, Lo/ɬ;->nC:Lo/ऽ;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lo/ऽ;->ˊ(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 456
    :cond_2
    return-void
.end method

.method static ˌ(Ljava/lang/String;)V
    .locals 2

    .line 760
    const-class v0, Lo/ᴣ;

    invoke-static {v0}, Lo/pj;->ـ(Ljava/lang/Class;)Lo/pq;

    move-result-object v0

    check-cast v0, Lo/ᴣ;

    move-object v1, v0

    .line 761
    if-eqz v1, :cond_0

    .line 762
    new-instance v0, Lo/qj$ˊ;

    invoke-direct {v0, p0}, Lo/qj$ˊ;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lo/ᴣ;->ˊ(Lo/qj$ˊ;)V

    .line 765
    :cond_0
    return-void
.end method

.method static ˍ(Ljava/lang/String;)V
    .locals 2

    .line 771
    const-class v0, Lo/ᴣ;

    invoke-static {v0}, Lo/pj;->ـ(Ljava/lang/Class;)Lo/pq;

    move-result-object v0

    check-cast v0, Lo/ᴣ;

    move-object v1, v0

    .line 772
    if-eqz v1, :cond_0

    .line 773
    new-instance v0, Lo/qj$if;

    invoke-direct {v0, p0}, Lo/qj$if;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lo/ᴣ;->ˊ(Lo/qj$if;)V

    .line 776
    :cond_0
    return-void
.end method

.method private static у()Z
    .locals 2

    .line 1107
    invoke-static {}, Lo/ɬ;->ｿ()Lo/ɬ;

    move-result-object v1

    .line 1108
    if-eqz v1, :cond_0

    iget-boolean v0, v1, Lo/ɬ;->nI:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ᐨ(Landroid/content/Context;)Z
    .locals 2

    .line 1073
    const-string v0, "com.crashlytics.RequireBuildId"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lo/qh;->ˊ(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ｿ()Lo/ɬ;
    .locals 5

    .line 419
    :try_start_0
    const-class v0, Lo/ɬ;

    invoke-static {v0}, Lo/pj;->ـ(Ljava/lang/Class;)Lo/pq;

    move-result-object v0

    check-cast v0, Lo/ɬ;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 420
    :catch_0
    move-exception v4

    .line 421
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Crashlytics must be initialized by calling Fabric.with(Context) prior to calling Crashlytics.getInstance()"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 425
    throw v4
.end method

.method private ﾄ()V
    .locals 6

    .line 719
    new-instance v3, Lo/ο;

    invoke-direct {v3, p0}, Lo/ο;-><init>(Lo/ɬ;)V

    .line 731
    invoke-virtual {p0}, Lo/ɬ;->cj()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/rp;

    move-object v5, v0

    .line 732
    invoke-virtual {v3, v5}, Lo/rk;->ˊ(Lo/rp;)V

    .line 733
    goto :goto_0

    .line 735
    :cond_0
    invoke-virtual {p0}, Lo/ɬ;->ch()Lo/pj;

    move-result-object v0

    invoke-virtual {v0}, Lo/pj;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 737
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x4

    invoke-interface {v4, v1, v2, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 749
    goto :goto_1

    .line 743
    :catch_0
    move-exception v5

    .line 744
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Crashlytics was interrupted during initialization."

    invoke-interface {v0, v1, v2, v5}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 749
    goto :goto_1

    .line 745
    :catch_1
    move-exception v5

    .line 746
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Problem encountered during Crashlytics initialization."

    invoke-interface {v0, v1, v2, v5}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 749
    goto :goto_1

    .line 747
    :catch_2
    move-exception v5

    .line 748
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Crashlytics timed out during initialization."

    invoke-interface {v0, v1, v2, v5}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 750
    :goto_1
    return-void
.end method


# virtual methods
.method getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
        }
    .end annotation

    .line 784
    iget-object v0, p0, Lo/ɬ;->ny:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getInstallerPackageName()Ljava/lang/String;
    .locals 1

    .line 802
    iget-object v0, p0, Lo/ɬ;->installerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 1

    .line 792
    iget-object v0, p0, Lo/ɬ;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method getUserName()Ljava/lang/String;
    .locals 1

    .line 835
    invoke-virtual {p0}, Lo/ɬ;->cg()Lo/qr;

    move-result-object v0

    invoke-virtual {v0}, Lo/qr;->cz()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ɬ;->nF:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 402
    const-string v0, "2.2.3.41"

    return-object v0
.end method

.method ć()Ljava/lang/String;
    .locals 1

    .line 810
    iget-object v0, p0, Lo/ɬ;->nG:Ljava/lang/String;

    return-object v0
.end method

.method Ĩ()Ljava/lang/String;
    .locals 2

    .line 814
    invoke-static {}, Lo/ɬ;->ｿ()Lo/ɬ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ɬ;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lo/qh;->ʻ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method Ľ()Lo/ऽ;
    .locals 1

    .line 823
    iget-object v0, p0, Lo/ɬ;->nC:Lo/ऽ;

    return-object v0
.end method

.method ŧ()Ljava/lang/String;
    .locals 1

    .line 827
    invoke-virtual {p0}, Lo/ɬ;->cg()Lo/qr;

    move-result-object v0

    invoke-virtual {v0}, Lo/qr;->cz()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ɬ;->nD:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method Ƭ()Ljava/lang/String;
    .locals 1

    .line 831
    invoke-virtual {p0}, Lo/ɬ;->cg()Lo/qr;

    move-result-object v0

    invoke-virtual {v0}, Lo/qr;->cz()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ɬ;->nE:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method ȑ()V
    .locals 2

    .line 846
    iget-object v0, p0, Lo/ɬ;->nL:Lo/ة;

    new-instance v1, Lo/о;

    invoke-direct {v1, p0}, Lo/о;-><init>(Lo/ɬ;)V

    invoke-virtual {v0, v1}, Lo/ة;->ˊ(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 856
    return-void
.end method

.method ț()V
    .locals 2

    .line 862
    iget-object v0, p0, Lo/ɬ;->nL:Lo/ة;

    new-instance v1, Lo/у;

    invoke-direct {v1, p0}, Lo/у;-><init>(Lo/ɬ;)V

    invoke-virtual {v0, v1}, Lo/ة;->ˋ(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 877
    return-void
.end method

.method ɤ()Z
    .locals 2

    .line 880
    iget-object v0, p0, Lo/ɬ;->nL:Lo/ة;

    new-instance v1, Lo/э;

    invoke-direct {v1, p0}, Lo/э;-><init>(Lo/ɬ;)V

    invoke-virtual {v0, v1}, Lo/ة;->ˊ(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method ɬ()Lo/ﾚ;
    .locals 2

    .line 901
    const/4 v1, 0x0

    .line 902
    iget-object v0, p0, Lo/ɬ;->nM:Lo/ﾋ;

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lo/ɬ;->nM:Lo/ﾋ;

    invoke-interface {v0}, Lo/ﾋ;->Ἵ()Lo/ﾚ;

    move-result-object v1

    .line 905
    :cond_0
    return-object v1
.end method

.method ˊ(Ljava/lang/String;Z)Lo/ć;
    .locals 1

    .line 788
    new-instance v0, Lo/ć;

    invoke-direct {v0, p1, p2}, Lo/ć;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method ˊ(Lo/tu;)Lo/ᓺ;
    .locals 4

    .line 976
    if-eqz p1, :cond_0

    .line 977
    new-instance v0, Lo/ᓻ;

    invoke-virtual {p0}, Lo/ɬ;->Ĩ()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lo/tu;->Zq:Lo/tf;

    iget-object v2, v2, Lo/tf;->YI:Ljava/lang/String;

    iget-object v3, p0, Lo/ɬ;->nK:Lo/sq;

    invoke-direct {v0, p0, v1, v2, v3}, Lo/ᓻ;-><init>(Lo/pq;Ljava/lang/String;Ljava/lang/String;Lo/sq;)V

    return-object v0

    .line 981
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method Τ()Ljava/io/File;
    .locals 1

    .line 927
    new-instance v0, Lo/sw;

    invoke-direct {v0, p0}, Lo/sw;-><init>(Lo/pq;)V

    invoke-virtual {v0}, Lo/sw;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method ο()Z
    .locals 3

    .line 931
    invoke-static {}, Lo/tr;->dN()Lo/tr;

    move-result-object v0

    new-instance v1, Lo/є;

    invoke-direct {v1, p0}, Lo/є;-><init>(Lo/ɬ;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/tr;->ˊ(Lo/tr$ˊ;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method υ()Z
    .locals 4

    .line 944
    new-instance v3, Lo/sy;

    invoke-direct {v3, p0}, Lo/sy;-><init>(Lo/pq;)V

    .line 945
    invoke-interface {v3}, Lo/sx;->dG()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "always_send_reports_opt_in"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method Т()Z
    .locals 3

    .line 955
    invoke-static {}, Lo/tr;->dN()Lo/tr;

    move-result-object v0

    new-instance v1, Lo/ӵ;

    invoke-direct {v1, p0}, Lo/ӵ;-><init>(Lo/ɬ;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/tr;->ˊ(Lo/tr$ˊ;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method о()Lo/tq;
    .locals 2

    .line 1068
    invoke-static {}, Lo/tr;->dN()Lo/tr;

    move-result-object v0

    invoke-virtual {v0}, Lo/tr;->dO()Lo/tu;

    move-result-object v1

    .line 1069
    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lo/tu;->Zr:Lo/tq;

    :goto_0
    return-object v0
.end method

.method protected synthetic э()Ljava/lang/Object;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lo/ɬ;->ﻪ()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method ᐣ(Z)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .line 950
    new-instance v2, Lo/sy;

    invoke-direct {v2, p0}, Lo/sy;-><init>(Lo/pq;)V

    .line 951
    invoke-interface {v2}, Lo/sx;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "always_send_reports_opt_in"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v2, v0}, Lo/sx;->ˊ(Landroid/content/SharedPreferences$Editor;)Z

    .line 952
    return-void
.end method

.method ᐧ(Landroid/content/Context;)Z
    .locals 10

    .line 241
    iget-boolean v0, p0, Lo/ɬ;->nI:Z

    if-eqz v0, :cond_0

    .line 242
    const/4 v0, 0x0

    return v0

    .line 246
    :cond_0
    new-instance v0, Lo/qf;

    invoke-direct {v0}, Lo/qf;-><init>()V

    invoke-virtual {v0, p1}, Lo/qf;->ᐠ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 248
    if-nez v7, :cond_1

    .line 249
    const/4 v0, 0x0

    return v0

    .line 252
    :cond_1
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing Crashlytics "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lo/ɬ;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ـ(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lo/ɬ;->Τ()Ljava/io/File;

    move-result-object v1

    const-string v2, "initialization_marker"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lo/ɬ;->nA:Ljava/io/File;

    .line 256
    const/4 v8, 0x0

    .line 258
    :try_start_0
    invoke-direct {p0, p1, v7}, Lo/ɬ;->ˋ(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lo/ڈ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 261
    :try_start_1
    new-instance v9, Lo/ᚐ;

    invoke-virtual {p0}, Lo/ɬ;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lo/ɬ;->nn:Ljava/lang/String;

    invoke-virtual {p0}, Lo/ɬ;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v0, v1, v2}, Lo/ᚐ;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Installing exception handler..."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance v0, Lo/ऽ;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    iget-object v2, p0, Lo/ɬ;->nB:Lo/ٱ;

    iget-object v3, p0, Lo/ɬ;->nL:Lo/ة;

    invoke-virtual {p0}, Lo/ɬ;->cg()Lo/qr;

    move-result-object v4

    move-object v5, v9

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lo/ऽ;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lo/ٱ;Lo/ة;Lo/qr;Lo/ᚐ;Lo/ɬ;)V

    iput-object v0, p0, Lo/ɬ;->nC:Lo/ऽ;

    .line 275
    invoke-virtual {p0}, Lo/ɬ;->ɤ()Z

    move-result v0

    move v8, v0

    .line 280
    iget-object v0, p0, Lo/ɬ;->nC:Lo/ऽ;

    invoke-virtual {v0}, Lo/ऽ;->ٮ()V

    .line 282
    iget-object v0, p0, Lo/ɬ;->nC:Lo/ऽ;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 283
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Successfully installed exception handler."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lo/ڈ; {:try_start_1 .. :try_end_1} :catch_1

    .line 287
    goto :goto_0

    .line 284
    :catch_0
    move-exception v9

    .line 285
    :try_start_2
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "There was a problem installing the exception handler."

    invoke-interface {v0, v1, v2, v9}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 289
    :goto_0
    if-eqz v8, :cond_2

    invoke-static {p1}, Lo/qh;->ᴸ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    invoke-direct {p0}, Lo/ɬ;->ﾄ()V
    :try_end_2
    .catch Lo/ڈ; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 294
    const/4 v0, 0x0

    return v0

    .line 296
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 297
    :catch_1
    move-exception v8

    .line 299
    new-instance v0, Lo/rq;

    invoke-direct {v0, v8}, Lo/rq;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 300
    :catch_2
    move-exception v8

    .line 301
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Crashlytics was not started due to an exception during initialization"

    invoke-interface {v0, v1, v2, v8}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method protected ﺰ()Z
    .locals 2

    .line 233
    invoke-super {p0}, Lo/pq;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 234
    invoke-virtual {p0, v1}, Lo/ɬ;->ᐧ(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected ﻪ()Ljava/lang/Void;
    .locals 7

    .line 345
    invoke-virtual {p0}, Lo/ɬ;->ȑ()V

    .line 346
    iget-object v0, p0, Lo/ɬ;->nC:Lo/ऽ;

    invoke-virtual {v0}, Lo/ऽ;->ᐳ()V

    .line 349
    const/4 v3, 0x1

    .line 352
    :try_start_0
    invoke-static {}, Lo/tr;->dN()Lo/tr;

    move-result-object v0

    invoke-virtual {v0}, Lo/tr;->dO()Lo/tu;

    move-result-object v4

    .line 354
    if-nez v4, :cond_0

    .line 355
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Received null settings, skipping initialization!"

    invoke-interface {v0, v1, v2}, Lo/ps;->ᐧ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    const/4 v5, 0x0

    .line 389
    invoke-virtual {p0}, Lo/ɬ;->ț()V

    return-object v5

    .line 359
    :cond_0
    :try_start_1
    iget-object v0, v4, Lo/tu;->Zs:Lo/tn;

    iget-boolean v0, v0, Lo/tn;->YT:Z

    if-eqz v0, :cond_2

    .line 360
    const/4 v3, 0x0

    .line 361
    iget-object v0, p0, Lo/ɬ;->nC:Lo/ऽ;

    invoke-virtual {v0}, Lo/ऽ;->ڙ()Z

    .line 363
    invoke-virtual {p0, v4}, Lo/ɬ;->ˊ(Lo/tu;)Lo/ᓺ;

    move-result-object v5

    .line 364
    if-eqz v5, :cond_1

    .line 365
    new-instance v0, Lo/ᔮ;

    invoke-direct {v0, v5}, Lo/ᔮ;-><init>(Lo/ᓺ;)V

    iget v1, p0, Lo/ɬ;->nH:F

    invoke-virtual {v0, v1}, Lo/ᔮ;->ᐧ(F)V

    goto :goto_0

    .line 367
    :cond_1
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Unable to create a call to upload reports."

    invoke-interface {v0, v1, v2}, Lo/ps;->ᐧ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    :cond_2
    :goto_0
    goto :goto_1

    .line 370
    :catch_0
    move-exception v4

    .line 371
    :try_start_2
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Error dealing with settings"

    invoke-interface {v0, v1, v2, v4}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 374
    :goto_1
    if-eqz v3, :cond_3

    .line 375
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Crash reporting disabled."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 389
    :cond_3
    invoke-virtual {p0}, Lo/ɬ;->ț()V

    .line 390
    goto :goto_2

    .line 377
    :catch_1
    move-exception v3

    .line 378
    :try_start_3
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Problem encountered during Crashlytics initialization."

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 389
    invoke-virtual {p0}, Lo/ɬ;->ț()V

    .line 390
    goto :goto_2

    .line 389
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lo/ɬ;->ț()V

    throw v6

    .line 392
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public ｯ()Ljava/lang/String;
    .locals 1

    .line 397
    const-string v0, "com.crashlytics.sdk.android:crashlytics"

    return-object v0
.end method

.method public ｼ()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Collection<+Lo/pq;>;"
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lo/ɬ;->nz:Ljava/util/Collection;

    return-object v0
.end method

.method ﾕ()Ljava/lang/String;
    .locals 1

    .line 806
    iget-object v0, p0, Lo/ɬ;->versionName:Ljava/lang/String;

    return-object v0
.end method
