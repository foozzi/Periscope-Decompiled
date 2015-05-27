.class Lo/ऽ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ऽ$if;,
        Lo/ऽ$ˋ;,
        Lo/ऽ$ˊ;
    }
.end annotation


# static fields
.field static final nX:Ljava/io/FilenameFilter;

.field static final nY:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<Ljava/io/File;>;"
        }
    .end annotation
.end field

.field static final nZ:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<Ljava/io/File;>;"
        }
    .end annotation
.end field

.field static final oa:Ljava/io/FilenameFilter;

.field private static final ob:Ljava/util/regex/Pattern;

.field private static final oc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
        }
    .end annotation
.end field


# instance fields
.field private final nL:Lo/ة;

.field private final od:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final oe:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final of:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final og:Ljava/io/File;

.field private final oh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final oi:Landroid/content/BroadcastReceiver;

.field private final oj:Landroid/content/BroadcastReceiver;

.field private final ok:Lo/qr;

.field private ol:Z

.field private final om:Lo/ɬ;

.field private final on:Lo/ᔂ;

.field private final oo:Lo/ᚐ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 122
    new-instance v0, Lo/บ;

    invoke-direct {v0}, Lo/บ;-><init>()V

    sput-object v0, Lo/ऽ;->nX:Ljava/io/FilenameFilter;

    .line 130
    new-instance v0, Lo/ᒉ;

    invoke-direct {v0}, Lo/ᒉ;-><init>()V

    sput-object v0, Lo/ऽ;->nY:Ljava/util/Comparator;

    .line 137
    new-instance v0, Lo/ᒋ;

    invoke-direct {v0}, Lo/ᒋ;-><init>()V

    sput-object v0, Lo/ऽ;->nZ:Ljava/util/Comparator;

    .line 147
    new-instance v0, Lo/ᒍ;

    invoke-direct {v0}, Lo/ᒍ;-><init>()V

    sput-object v0, Lo/ऽ;->oa:Ljava/io/FilenameFilter;

    .line 154
    const-string v0, "([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/ऽ;->ob:Ljava/util/regex/Pattern;

    .line 157
    const-string v0, "X-CRASHLYTICS-SEND-FLAGS"

    const-string v1, "1"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lo/ऽ;->oc:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lo/ٱ;Lo/ة;Lo/qr;Lo/ᚐ;Lo/ɬ;)V
    .locals 6

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lo/ऽ;->od:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 185
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/ऽ;->oe:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 217
    iput-object p1, p0, Lo/ऽ;->of:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 218
    iput-object p3, p0, Lo/ऽ;->nL:Lo/ة;

    .line 219
    iput-object p4, p0, Lo/ऽ;->ok:Lo/qr;

    .line 220
    iput-object p6, p0, Lo/ऽ;->om:Lo/ɬ;

    .line 221
    iput-object p5, p0, Lo/ऽ;->oo:Lo/ᚐ;

    .line 222
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/ऽ;->oh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 223
    invoke-virtual {p6}, Lo/ɬ;->Τ()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lo/ऽ;->og:Ljava/io/File;

    .line 224
    new-instance v0, Lo/ᔂ;

    invoke-virtual {p6}, Lo/ɬ;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lo/ऽ;->og:Ljava/io/File;

    invoke-direct {v0, v1, v2}, Lo/ᔂ;-><init>(Landroid/content/Context;Ljava/io/File;)V

    iput-object v0, p0, Lo/ऽ;->on:Lo/ᔂ;

    .line 226
    invoke-direct {p0, p2}, Lo/ऽ;->ˊ(Lo/ٱ;)V

    .line 228
    new-instance v0, Lo/ᒐ;

    invoke-direct {v0, p0}, Lo/ᒐ;-><init>(Lo/ऽ;)V

    iput-object v0, p0, Lo/ऽ;->oj:Landroid/content/BroadcastReceiver;

    .line 235
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 237
    new-instance v0, Lo/ᓓ;

    invoke-direct {v0, p0}, Lo/ᓓ;-><init>(Lo/ऽ;)V

    iput-object v0, p0, Lo/ऽ;->oi:Landroid/content/BroadcastReceiver;

    .line 244
    new-instance v4, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p6}, Lo/ɬ;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 248
    iget-object v0, p0, Lo/ऽ;->oj:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 249
    iget-object v0, p0, Lo/ऽ;->oi:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 250
    iget-object v0, p0, Lo/ऽ;->oe:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 251
    return-void
.end method

.method private ʹ(Ljava/lang/String;)V
    .locals 10

    .line 883
    const/4 v4, 0x0

    .line 884
    const/4 v5, 0x0

    .line 886
    :try_start_0
    new-instance v0, Lo/ȑ;

    iget-object v1, p0, Lo/ऽ;->og:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SessionUser"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/ȑ;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v0

    .line 887
    invoke-static {v4}, Lo/ɤ;->ˏ(Ljava/io/OutputStream;)Lo/ɤ;

    move-result-object v0

    move-object v5, v0

    .line 889
    iget-object v0, p0, Lo/ऽ;->om:Lo/ɬ;

    invoke-virtual {v0}, Lo/ɬ;->ŧ()Ljava/lang/String;

    move-result-object v6

    .line 890
    iget-object v0, p0, Lo/ऽ;->om:Lo/ɬ;

    invoke-virtual {v0}, Lo/ɬ;->getUserName()Ljava/lang/String;

    move-result-object v7

    .line 891
    iget-object v0, p0, Lo/ऽ;->om:Lo/ɬ;

    invoke-virtual {v0}, Lo/ɬ;->Ƭ()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 894
    if-nez v6, :cond_0

    if-nez v7, :cond_0

    if-nez v8, :cond_0

    .line 903
    const-string v0, "Failed to flush session user file."

    invoke-static {v5, v0}, Lo/qh;->ˊ(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 904
    const-string v0, "Failed to close session user file."

    invoke-static {v4, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    return-void

    .line 898
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/ऽ;->oo:Lo/ᚐ;

    invoke-virtual {v0, v5, v6, v7, v8}, Lo/ᚐ;->ˊ(Lo/ɤ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 903
    const-string v0, "Failed to flush session user file."

    invoke-static {v5, v0}, Lo/qh;->ˊ(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 904
    const-string v0, "Failed to close session user file."

    invoke-static {v4, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 905
    goto :goto_0

    .line 899
    :catch_0
    move-exception v6

    .line 900
    :try_start_2
    invoke-static {v6, v4}, Lo/ᓿ;->ˊ(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 901
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 903
    :catchall_0
    move-exception v9

    const-string v0, "Failed to flush session user file."

    invoke-static {v5, v0}, Lo/qh;->ˊ(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 904
    const-string v0, "Failed to close session user file."

    invoke-static {v4, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v9

    .line 906
    :goto_0
    return-void
.end method

.method static synthetic ˊ(Lo/ऽ;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 56
    iget-object v0, p0, Lo/ऽ;->oh:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private ˊ(Ljava/io/File;Ljava/lang/String;I)V
    .locals 16

    .line 1023
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Collecting session parts for ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    new-instance v0, Lo/ऽ$ˊ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SessionCrash"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ऽ$ˊ;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lo/ऽ;->ˊ(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v7

    .line 1027
    if-eqz v7, :cond_0

    array-length v0, v7

    if-lez v0, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 1028
    :goto_0
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Session %s has fatal exception: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    new-instance v0, Lo/ऽ$ˊ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SessionEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ऽ$ˊ;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lo/ऽ;->ˊ(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v9

    .line 1033
    if-eqz v9, :cond_1

    array-length v0, v9

    if-lez v0, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    .line 1034
    :goto_1
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Session %s has non-fatal exceptions: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    if-nez v8, :cond_2

    if-eqz v10, :cond_6

    .line 1038
    :cond_2
    const/4 v11, 0x0

    .line 1039
    const/4 v12, 0x0

    .line 1040
    const/4 v13, 0x0

    .line 1043
    :try_start_0
    new-instance v0, Lo/ȑ;

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/ऽ;->og:Ljava/io/File;

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lo/ȑ;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v11, v0

    .line 1044
    invoke-static {v11}, Lo/ɤ;->ˏ(Ljava/io/OutputStream;)Lo/ɤ;

    move-result-object v0

    move-object v12, v0

    .line 1046
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Collecting SessionStart data for session ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lo/ऽ;->ˊ(Lo/ɤ;Ljava/io/File;)V

    .line 1050
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const/4 v2, 0x4

    invoke-virtual {v12, v2, v0, v1}, Lo/ɤ;->ˊ(IJ)V

    .line 1051
    const/4 v0, 0x5

    invoke-virtual {v12, v0, v8}, Lo/ɤ;->ˑ(IZ)V

    .line 1053
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v12, v1}, Lo/ऽ;->ˊ(Lo/ɤ;Ljava/lang/String;)V

    .line 1055
    if-eqz v10, :cond_4

    .line 1056
    array-length v0, v9

    move/from16 v1, p3

    if-le v0, v1, :cond_3

    .line 1057
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Trimming down to %d logged exceptions."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lo/ऽ;->ˊ(Ljava/lang/String;I)V

    .line 1061
    new-instance v0, Lo/ऽ$ˊ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SessionEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ऽ$ˊ;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lo/ऽ;->ˊ(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v9

    .line 1065
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v12, v9, v1}, Lo/ऽ;->ˊ(Lo/ɤ;[Ljava/io/File;Ljava/lang/String;)V

    .line 1068
    :cond_4
    if-eqz v8, :cond_5

    .line 1069
    const/4 v0, 0x0

    aget-object v0, v7, v0

    move-object/from16 v1, p0

    invoke-direct {v1, v12, v0}, Lo/ऽ;->ˊ(Lo/ɤ;Ljava/io/File;)V

    .line 1072
    :cond_5
    const/16 v0, 0xb

    const/4 v1, 0x1

    invoke-virtual {v12, v0, v1}, Lo/ɤ;->ᵗ(II)V

    .line 1074
    const/16 v0, 0xc

    const/4 v1, 0x3

    invoke-virtual {v12, v0, v1}, Lo/ɤ;->ﾟ(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1084
    const-string v0, "Error flushing session file stream"

    invoke-static {v12, v0}, Lo/qh;->ˊ(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1086
    nop

    .line 1089
    .line 1093
    const-string v0, "Failed to close CLS file"

    invoke-static {v11, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1095
    goto :goto_2

    .line 1075
    :catch_0
    move-exception v14

    .line 1076
    :try_start_1
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write session file for session ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v14}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1078
    invoke-static {v14, v11}, Lo/ᓿ;->ˊ(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1081
    const/4 v13, 0x1

    .line 1084
    const-string v0, "Error flushing session file stream"

    invoke-static {v12, v0}, Lo/qh;->ˊ(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1086
    .line 1089
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lo/ऽ;->ˊ(Lo/ȑ;)V

    goto :goto_2

    .line 1084
    .line 1093
    .line 1095
    :catchall_0
    move-exception v15

    const-string v0, "Error flushing session file stream"

    invoke-static {v12, v0}, Lo/qh;->ˊ(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1086
    nop

    .line 1089
    .line 1093
    const-string v0, "Failed to close CLS file"

    invoke-static {v11, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v15

    .line 1096
    :goto_2
    goto :goto_3

    .line 1097
    :cond_6
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No events present for session ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    :goto_3
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing session part files for ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lo/ऽ;->ـ(Ljava/lang/String;)V

    .line 1102
    return-void
.end method

.method private ˊ(Ljava/lang/String;I)V
    .locals 4

    .line 664
    iget-object v0, p0, Lo/ऽ;->og:Ljava/io/File;

    new-instance v1, Lo/ऽ$ˊ;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SessionEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/ऽ$ˊ;-><init>(Ljava/lang/String;)V

    sget-object v2, Lo/ऽ;->nZ:Ljava/util/Comparator;

    invoke-static {v0, v1, p2, v2}, Lo/ᴏ;->ˊ(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V

    .line 666
    return-void
.end method

.method private ˊ(Ljava/lang/String;Ljava/util/Date;)V
    .locals 12

    .line 780
    const/4 v6, 0x0

    .line 781
    const/4 v7, 0x0

    .line 783
    :try_start_0
    new-instance v0, Lo/ȑ;

    iget-object v1, p0, Lo/ऽ;->og:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "BeginSession"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/ȑ;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v6, v0

    .line 784
    invoke-static {v6}, Lo/ɤ;->ˏ(Ljava/io/OutputStream;)Lo/ɤ;

    move-result-object v0

    move-object v7, v0

    .line 786
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Crashlytics Android SDK/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lo/ऽ;->om:Lo/ɬ;

    invoke-virtual {v3}, Lo/ɬ;->getVersion()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 788
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v9, v0, v2

    .line 790
    iget-object v0, p0, Lo/ऽ;->oo:Lo/ᚐ;

    move-object v1, v7

    move-object v2, p1

    move-object v3, v8

    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Lo/ᚐ;->ˊ(Lo/ɤ;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v7, v0}, Lo/qh;->ˊ(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 796
    const-string v0, "Failed to close begin session file."

    invoke-static {v6, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 797
    goto :goto_0

    .line 791
    :catch_0
    move-exception v8

    .line 792
    :try_start_1
    invoke-static {v8, v6}, Lo/ᓿ;->ˊ(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 793
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 795
    :catchall_0
    move-exception v11

    const-string v0, "Failed to flush to session begin file."

    invoke-static {v7, v0}, Lo/qh;->ˊ(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 796
    const-string v0, "Failed to close begin session file."

    invoke-static {v6, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v11

    .line 798
    :goto_0
    return-void
.end method

.method private ˊ(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 297
    invoke-direct {p0, p1, p2, p3}, Lo/ऽ;->ˋ(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 299
    invoke-direct {p0}, Lo/ऽ;->บ()V

    .line 300
    invoke-direct {p0}, Lo/ऽ;->ऽ()V

    .line 302
    invoke-virtual {p0}, Lo/ऽ;->າ()V

    .line 304
    iget-object v0, p0, Lo/ऽ;->om:Lo/ɬ;

    invoke-virtual {v0}, Lo/ɬ;->ο()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    invoke-direct {p0}, Lo/ऽ;->ᒉ()V

    .line 307
    :cond_0
    return-void
.end method

.method private ˊ(Lo/ȑ;)V
    .locals 4

    .line 605
    if-eqz p1, :cond_0

    .line 607
    :try_start_0
    invoke-virtual {p1}, Lo/ȑ;->ﮞ()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    goto :goto_0

    .line 608
    :catch_0
    move-exception v3

    .line 609
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Error closing session file stream in the presence of an exception"

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 613
    :cond_0
    :goto_0
    return-void
.end method

.method private ˊ(Lo/ɤ;Ljava/io/File;)V
    .locals 11

    .line 1144
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1146
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 1147
    long-to-int v0, v4

    new-array v6, v0, [B

    .line 1149
    const/4 v7, 0x0

    .line 1152
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v7, v0

    .line 1154
    const/4 v8, 0x0

    .line 1155
    const/4 v9, 0x0

    .line 1157
    :goto_0
    array-length v0, v6

    if-ge v8, v0, :cond_0

    array-length v0, v6

    sub-int/2addr v0, v8

    invoke-virtual {v7, v6, v8, v0}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    move v9, v0

    if-ltz v0, :cond_0

    .line 1159
    add-int/2addr v8, v9

    goto :goto_0

    .line 1162
    :cond_0
    const-string v0, "Failed to close file input stream."

    invoke-static {v7, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1163
    goto :goto_1

    .line 1162
    :catchall_0
    move-exception v10

    const-string v0, "Failed to close file input stream."

    invoke-static {v7, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v10

    .line 1165
    :goto_1
    invoke-virtual {p1, v6}, Lo/ɤ;->ͺ([B)V

    .line 1166
    goto :goto_2

    .line 1167
    :cond_1
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to include a file that doesn\'t exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1170
    :goto_2
    return-void
.end method

.method private ˊ(Lo/ɤ;Ljava/lang/String;)V
    .locals 10

    .line 1121
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "SessionUser"

    const/4 v1, 0x0

    aput-object v0, v4, v1

    const-string v0, "SessionApp"

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const-string v0, "SessionOS"

    const/4 v1, 0x2

    aput-object v0, v4, v1

    const-string v0, "SessionDevice"

    const/4 v1, 0x3

    aput-object v0, v4, v1

    .line 1125
    move-object v5, v4

    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 1126
    new-instance v0, Lo/ऽ$ˊ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ऽ$ˊ;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/ऽ;->ˊ(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v9

    .line 1129
    array-length v0, v9

    if-nez v0, :cond_0

    .line 1130
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " data for session ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1133
    :cond_0
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Collecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " data for session ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    const/4 v0, 0x0

    aget-object v0, v9, v0

    invoke-direct {p0, p1, v0}, Lo/ऽ;->ˊ(Lo/ɤ;Ljava/io/File;)V

    .line 1125
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1138
    :cond_1
    return-void
.end method

.method private ˊ(Lo/ɤ;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    .locals 41

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ऽ;->om:Lo/ɬ;

    invoke-virtual {v0}, Lo/ɬ;->getContext()Landroid/content/Context;

    move-result-object v22

    .line 912
    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v23, v0, v2

    .line 913
    invoke-static/range {v22 .. v22}, Lo/qh;->ᵣ(Landroid/content/Context;)F

    move-result v25

    .line 914
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/ऽ;->ol:Z

    move-object/from16 v1, v22

    invoke-static {v1, v0}, Lo/qh;->ˊ(Landroid/content/Context;Z)I

    move-result v26

    .line 915
    invoke-static/range {v22 .. v22}, Lo/qh;->יִ(Landroid/content/Context;)Z

    move-result v27

    .line 916
    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v28, v1

    .line 917
    invoke-static {}, Lo/qh;->cu()J

    move-result-wide v0

    invoke-static/range {v22 .. v22}, Lo/qh;->ᵕ(Landroid/content/Context;)J

    move-result-wide v2

    sub-long v29, v0, v2

    .line 919
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/qh;->і(Ljava/lang/String;)J

    move-result-wide v31

    .line 922
    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lo/qh;->ˊ(Ljava/lang/String;Landroid/content/Context;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v33

    .line 924
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v34, v0

    .line 925
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v35

    .line 928
    if-eqz p6, :cond_1

    .line 929
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v37

    .line 930
    invoke-interface/range {v37 .. v37}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Thread;

    move-object/from16 v36, v1

    .line 931
    const/16 v38, 0x0

    .line 932
    invoke-interface/range {v37 .. v37}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :goto_0
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object/from16 v40, v0

    .line 933
    invoke-interface/range {v40 .. v40}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    aput-object v0, v36, v38

    .line 934
    invoke-interface/range {v40 .. v40}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v34

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 935
    add-int/lit8 v38, v38, 0x1

    .line 936
    goto :goto_0

    .line 937
    :cond_0
    goto :goto_1

    .line 940
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Thread;

    move-object/from16 v36, v0

    .line 944
    :goto_1
    const-string v0, "com.crashlytics.CollectCustomKeys"

    move-object/from16 v1, v22

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lo/qh;->ˊ(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 945
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    move-object/from16 v37, v0

    goto :goto_2

    .line 947
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ऽ;->om:Lo/ɬ;

    invoke-virtual {v0}, Lo/ɬ;->getAttributes()Ljava/util/Map;

    move-result-object v37

    .line 948
    if-eqz v37, :cond_3

    invoke-interface/range {v37 .. v37}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 952
    new-instance v0, Ljava/util/TreeMap;

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    move-object/from16 v37, v0

    .line 956
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lo/ऽ;->oo:Lo/ᚐ;

    move-object/from16 v2, p1

    move-wide/from16 v3, v23

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, v36

    move/from16 v9, v25

    move/from16 v10, v26

    move/from16 v11, v27

    move/from16 v12, v28

    move-wide/from16 v13, v29

    move-wide/from16 v15, v31

    move-object/from16 v17, v33

    move-object/from16 v18, v34

    move-object/from16 v19, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ऽ;->on:Lo/ᔂ;

    move-object/from16 v20, v0

    move-object/from16 v21, v37

    invoke-virtual/range {v1 .. v21}, Lo/ᚐ;->ˊ(Lo/ɤ;JLjava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Thread;FIZIJJLandroid/app/ActivityManager$RunningAppProcessInfo;Ljava/util/List;[Ljava/lang/StackTraceElement;Lo/ᔂ;Ljava/util/Map;)V

    .line 960
    return-void
.end method

.method private ˊ(Lo/ɤ;[Ljava/io/File;Ljava/lang/String;)V
    .locals 12

    .line 1106
    sget-object v0, Lo/qh;->VA:Ljava/util/Comparator;

    invoke-static {p2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1108
    move-object v7, p2

    array-length v8, v7

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_0

    aget-object v10, v7, v9

    .line 1110
    :try_start_0
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Found Non Fatal for session ID %s in %s "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    invoke-direct {p0, p1, v10}, Lo/ऽ;->ˊ(Lo/ɤ;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1116
    goto :goto_1

    .line 1114
    :catch_0
    move-exception v11

    .line 1115
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Error writting non-fatal to session."

    invoke-interface {v0, v1, v2, v11}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1108
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1118
    :cond_0
    return-void
.end method

.method private ˊ(Lo/ٱ;)V
    .locals 5

    .line 318
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Checking for previous crash marker."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lo/ऽ;->om:Lo/ɬ;

    invoke-virtual {v0}, Lo/ɬ;->Τ()Ljava/io/File;

    move-result-object v0

    const-string v1, "crash_marker"

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 322
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 325
    if-eqz p1, :cond_0

    .line 327
    :try_start_0
    invoke-interface {p1}, Lo/ٱ;->ԍ()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    goto :goto_0

    .line 328
    :catch_0
    move-exception v4

    .line 329
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Exception thrown by CrashlyticsListener while notifying of previous crash."

    invoke-interface {v0, v1, v2, v4}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 335
    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic ˊ(Lo/ऽ;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lo/ऽ;->ˊ(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic ˊ(Lo/ऽ;Lo/ﾚ;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lo/ऽ;->ˊ(Lo/ﾚ;)V

    return-void
.end method

.method private ˊ(Lo/ﾚ;)V
    .locals 8

    .line 420
    const/4 v4, 0x0

    .line 421
    const/4 v5, 0x0

    .line 423
    :try_start_0
    invoke-direct {p0}, Lo/ऽ;->ٱ()Ljava/lang/String;

    move-result-object v6

    .line 425
    if-eqz v6, :cond_0

    .line 428
    invoke-static {v6}, Lo/ɬ;->ˍ(Ljava/lang/String;)V

    .line 430
    new-instance v0, Lo/ȑ;

    iget-object v1, p0, Lo/ऽ;->og:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SessionCrash"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/ȑ;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v0

    .line 431
    invoke-static {v4}, Lo/ɤ;->ˏ(Ljava/io/OutputStream;)Lo/ɤ;

    move-result-object v0

    move-object v5, v0

    .line 433
    invoke-static {p1, v5}, Lo/ᔦ;->ˊ(Lo/ﾚ;Lo/ɤ;)V

    goto :goto_0

    .line 435
    :cond_0
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Tried to write a native crash while no session was open."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    :goto_0
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v5, v0}, Lo/qh;->ˊ(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 444
    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v4, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 445
    goto :goto_1

    .line 438
    :catch_0
    move-exception v6

    .line 439
    :try_start_1
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "An error occurred in the native crash logger"

    invoke-interface {v0, v1, v2, v6}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 441
    invoke-static {v6, v4}, Lo/ᓿ;->ˊ(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v5, v0}, Lo/qh;->ˊ(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 444
    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v4, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 445
    goto :goto_1

    .line 443
    :catchall_0
    move-exception v7

    const-string v0, "Failed to flush to session begin file."

    invoke-static {v5, v0}, Lo/qh;->ˊ(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 444
    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v4, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v7

    .line 446
    :goto_1
    return-void
.end method

.method static synthetic ˊ(Lo/ऽ;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lo/ऽ;->ol:Z

    return p1
.end method

.method private ˊ(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1

    .line 647
    iget-object v0, p0, Lo/ऽ;->og:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/ऽ;->ˊ([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic ˊ(Lo/ऽ;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Lo/ऽ;->ˊ(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private ˊ([Ljava/io/File;)[Ljava/io/File;
    .locals 1

    .line 651
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method private ˋ(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 11

    .line 378
    const/4 v7, 0x0

    .line 379
    const/4 v8, 0x0

    .line 383
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lo/ऽ;->og:Ljava/io/File;

    const-string v2, "crash_marker"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 385
    invoke-direct {p0}, Lo/ऽ;->ٱ()Ljava/lang/String;

    move-result-object v9

    .line 387
    if-eqz v9, :cond_0

    .line 390
    invoke-static {v9}, Lo/ɬ;->ˍ(Ljava/lang/String;)V

    .line 392
    new-instance v0, Lo/ȑ;

    iget-object v1, p0, Lo/ऽ;->og:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SessionCrash"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/ȑ;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v7, v0

    .line 393
    invoke-static {v7}, Lo/ɤ;->ˏ(Ljava/io/OutputStream;)Lo/ɤ;

    move-result-object v0

    move-object v8, v0

    .line 394
    move-object v0, p0

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    const-string v5, "crash"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lo/ऽ;->ˊ(Lo/ɤ;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V

    goto :goto_0

    .line 396
    :cond_0
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Tried to write a fatal exception while no session was open."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    :goto_0
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v8, v0}, Lo/qh;->ˊ(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 405
    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v7, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 406
    goto :goto_1

    .line 399
    :catch_0
    move-exception v9

    .line 400
    :try_start_1
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "An error occurred in the fatal exception logger"

    invoke-interface {v0, v1, v2, v9}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    invoke-static {v9, v7}, Lo/ᓿ;->ˊ(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v8, v0}, Lo/qh;->ˊ(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 405
    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v7, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 406
    goto :goto_1

    .line 404
    :catchall_0
    move-exception v10

    const-string v0, "Failed to flush to session begin file."

    invoke-static {v8, v0}, Lo/qh;->ˊ(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 405
    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v7, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v10

    .line 407
    :goto_1
    return-void
.end method

.method static synthetic ˋ(Lo/ऽ;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lo/ऽ;->ऽ()V

    return-void
.end method

.method static synthetic ˋ(Lo/ऽ;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lo/ऽ;->ˎ(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic ˎ(Lo/ऽ;)Lo/ɬ;
    .locals 1

    .line 56
    iget-object v0, p0, Lo/ऽ;->om:Lo/ɬ;

    return-object v0
.end method

.method private ˎ(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 13

    .line 971
    invoke-direct {p0}, Lo/ऽ;->ٱ()Ljava/lang/String;

    move-result-object v7

    .line 973
    if-eqz v7, :cond_0

    .line 976
    invoke-static {v7}, Lo/ɬ;->ˌ(Ljava/lang/String;)V

    .line 978
    const/4 v8, 0x0

    .line 979
    const/4 v9, 0x0

    .line 981
    :try_start_0
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crashlytics is logging non-fatal exception \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" from thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    iget-object v0, p0, Lo/ऽ;->od:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Lo/qh;->⁀(I)Ljava/lang/String;

    move-result-object v10

    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SessionEvent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 989
    new-instance v0, Lo/ȑ;

    iget-object v1, p0, Lo/ऽ;->og:Ljava/io/File;

    invoke-direct {v0, v1, v11}, Lo/ȑ;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v8, v0

    .line 991
    invoke-static {v8}, Lo/ɤ;->ˏ(Ljava/io/OutputStream;)Lo/ɤ;

    move-result-object v0

    move-object v9, v0

    .line 992
    move-object v0, p0

    move-object v1, v9

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    const-string v5, "error"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lo/ऽ;->ˊ(Lo/ɤ;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 998
    const-string v0, "Failed to flush to non-fatal file."

    invoke-static {v9, v0}, Lo/qh;->ˊ(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 999
    const-string v0, "Failed to close non-fatal file output stream."

    invoke-static {v8, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1000
    goto :goto_0

    .line 993
    :catch_0
    move-exception v10

    .line 994
    :try_start_1
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "An error occurred in the non-fatal exception logger"

    invoke-interface {v0, v1, v2, v10}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 996
    invoke-static {v10, v8}, Lo/ᓿ;->ˊ(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 998
    const-string v0, "Failed to flush to non-fatal file."

    invoke-static {v9, v0}, Lo/qh;->ˊ(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 999
    const-string v0, "Failed to close non-fatal file output stream."

    invoke-static {v8, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1000
    goto :goto_0

    .line 998
    :catchall_0
    move-exception v12

    const-string v0, "Failed to flush to non-fatal file."

    invoke-static {v9, v0}, Lo/qh;->ˊ(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 999
    const-string v0, "Failed to close non-fatal file output stream."

    invoke-static {v8, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v12

    .line 1005
    :goto_0
    const/16 v0, 0x40

    :try_start_2
    invoke-direct {p0, v7, v0}, Lo/ऽ;->ˊ(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1009
    goto :goto_1

    .line 1006
    :catch_1
    move-exception v10

    .line 1007
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "An error occurred when trimming non-fatal files."

    invoke-interface {v0, v1, v2, v10}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1010
    :goto_1
    goto :goto_2

    .line 1011
    :cond_0
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Tried to write a non-fatal exception while no session was open."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1014
    :goto_2
    return-void
.end method

.method static synthetic ˏ(Lo/ऽ;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lo/ऽ;->บ()V

    return-void
.end method

.method private ـ(Ljava/lang/String;)V
    .locals 5

    .line 619
    invoke-direct {p0, p1}, Lo/ऽ;->ᐧ(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 620
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 619
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 622
    :cond_0
    return-void
.end method

.method private ٱ()Ljava/lang/String;
    .locals 3

    .line 477
    new-instance v0, Lo/ऽ$ˊ;

    const-string v1, "BeginSession"

    invoke-direct {v0, v1}, Lo/ऽ$ˊ;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/ऽ;->ˊ(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 479
    sget-object v0, Lo/ऽ;->nY:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 480
    array-length v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-direct {p0, v0}, Lo/ऽ;->ᐝ(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private ऽ()V
    .locals 6

    .line 542
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 543
    new-instance v0, Lo/Ƭ;

    iget-object v1, p0, Lo/ऽ;->ok:Lo/qr;

    invoke-direct {v0, v1}, Lo/Ƭ;-><init>(Lo/qr;)V

    invoke-virtual {v0}, Lo/Ƭ;->toString()Ljava/lang/String;

    move-result-object v5

    .line 545
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening an new session with ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-direct {p0, v5, v4}, Lo/ऽ;->ˊ(Ljava/lang/String;Ljava/util/Date;)V

    .line 549
    invoke-direct {p0, v5}, Lo/ऽ;->ᐨ(Ljava/lang/String;)V

    .line 550
    invoke-direct {p0, v5}, Lo/ऽ;->ﹳ(Ljava/lang/String;)V

    .line 551
    invoke-direct {p0, v5}, Lo/ऽ;->ﾞ(Ljava/lang/String;)V

    .line 552
    return-void
.end method

.method private บ()V
    .locals 13

    .line 558
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lo/ऽ;->ﾆ(I)V

    .line 560
    invoke-direct {p0}, Lo/ऽ;->ٱ()Ljava/lang/String;

    move-result-object v4

    .line 562
    if-eqz v4, :cond_2

    .line 565
    invoke-direct {p0, v4}, Lo/ऽ;->ʹ(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lo/ऽ;->om:Lo/ɬ;

    invoke-virtual {v0}, Lo/ɬ;->о()Lo/tq;

    move-result-object v5

    .line 569
    if-eqz v5, :cond_1

    .line 570
    iget v6, v5, Lo/tq;->Ze:I

    .line 572
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Closing all open sessions."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0}, Lo/ऽ;->ะ()[Ljava/io/File;

    move-result-object v7

    .line 575
    if-eqz v7, :cond_0

    array-length v0, v7

    if-lez v0, :cond_0

    .line 576
    move-object v8, v7

    array-length v9, v8

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_0

    aget-object v11, v8, v10

    .line 577
    invoke-direct {p0, v11}, Lo/ऽ;->ᐝ(Ljava/io/File;)Ljava/lang/String;

    move-result-object v12

    .line 579
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-direct {p0, v11, v12, v6}, Lo/ऽ;->ˊ(Ljava/io/File;Ljava/lang/String;I)V

    .line 576
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 585
    :cond_0
    goto :goto_1

    .line 586
    :cond_1
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Unable to close session. Settings are not loaded."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :goto_1
    goto :goto_2

    .line 590
    :cond_2
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "No open sessions exist."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :goto_2
    return-void
.end method

.method private ย()[Ljava/io/File;
    .locals 1

    .line 632
    sget-object v0, Lo/ऽ;->nX:Ljava/io/FilenameFilter;

    invoke-direct {p0, v0}, Lo/ऽ;->ˊ(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private ᐝ(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .line 494
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ᐧ(Ljava/lang/String;)[Ljava/io/File;
    .locals 1

    .line 628
    new-instance v0, Lo/ऽ$ˋ;

    invoke-direct {v0, p1}, Lo/ऽ$ˋ;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/ऽ;->ˊ(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private ᐨ(Ljava/lang/String;)V
    .locals 15

    .line 801
    const/4 v7, 0x0

    .line 802
    const/4 v8, 0x0

    .line 804
    :try_start_0
    new-instance v0, Lo/ȑ;

    iget-object v1, p0, Lo/ऽ;->og:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SessionApp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/ȑ;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v7, v0

    .line 805
    invoke-static {v7}, Lo/ɤ;->ˏ(Ljava/io/OutputStream;)Lo/ɤ;

    move-result-object v0

    move-object v8, v0

    .line 807
    iget-object v0, p0, Lo/ऽ;->om:Lo/ɬ;

    invoke-virtual {v0}, Lo/ɬ;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 808
    iget-object v0, p0, Lo/ऽ;->om:Lo/ɬ;

    invoke-virtual {v0}, Lo/ɬ;->ć()Ljava/lang/String;

    move-result-object v10

    .line 809
    iget-object v0, p0, Lo/ऽ;->om:Lo/ɬ;

    invoke-virtual {v0}, Lo/ɬ;->ﾕ()Ljava/lang/String;

    move-result-object v11

    .line 810
    iget-object v0, p0, Lo/ऽ;->ok:Lo/qr;

    invoke-virtual {v0}, Lo/qr;->cA()Ljava/lang/String;

    move-result-object v12

    .line 811
    iget-object v0, p0, Lo/ऽ;->om:Lo/ɬ;

    invoke-virtual {v0}, Lo/ɬ;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ql;->ї(Ljava/lang/String;)Lo/ql;

    move-result-object v0

    invoke-virtual {v0}, Lo/ql;->getId()I

    move-result v13

    .line 814
    iget-object v0, p0, Lo/ऽ;->oo:Lo/ᚐ;

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move v6, v13

    invoke-virtual/range {v0 .. v6}, Lo/ᚐ;->ˊ(Lo/ɤ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    const-string v0, "Failed to flush to session app file."

    invoke-static {v8, v0}, Lo/qh;->ˊ(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 822
    const-string v0, "Failed to close session app file."

    invoke-static {v7, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 823
    goto :goto_0

    .line 817
    :catch_0
    move-exception v9

    .line 818
    :try_start_1
    invoke-static {v9, v7}, Lo/ᓿ;->ˊ(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 819
    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 821
    :catchall_0
    move-exception v14

    const-string v0, "Failed to flush to session app file."

    invoke-static {v8, v0}, Lo/qh;->ˊ(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 822
    const-string v0, "Failed to close session app file."

    invoke-static {v7, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v14

    .line 824
    :goto_0
    return-void
.end method

.method private ᐸ()V
    .locals 7

    .line 764
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lo/ऽ;->om:Lo/ɬ;

    invoke-virtual {v0}, Lo/ɬ;->Τ()Ljava/io/File;

    move-result-object v0

    const-string v1, "invalidClsFiles"

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 766
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 769
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 771
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 770
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 775
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 777
    :cond_1
    return-void
.end method

.method private ᒉ()V
    .locals 7

    .line 1181
    invoke-direct {p0}, Lo/ऽ;->ย()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 1182
    move-object v6, v5

    .line 1185
    iget-object v0, p0, Lo/ऽ;->nL:Lo/ة;

    new-instance v1, Lo/ᐸ;

    invoke-direct {v1, p0, v6}, Lo/ᐸ;-><init>(Lo/ऽ;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lo/ة;->ˊ(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1181
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1206
    :cond_0
    return-void
.end method

.method static synthetic ᒋ()Ljava/util/regex/Pattern;
    .locals 1

    .line 56
    sget-object v0, Lo/ऽ;->ob:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic ᒍ()Ljava/util/Map;
    .locals 1

    .line 56
    sget-object v0, Lo/ऽ;->oc:Ljava/util/Map;

    return-object v0
.end method

.method private ﹳ(Ljava/lang/String;)V
    .locals 8

    .line 827
    const/4 v4, 0x0

    .line 828
    const/4 v5, 0x0

    .line 831
    :try_start_0
    new-instance v0, Lo/ȑ;

    iget-object v1, p0, Lo/ऽ;->og:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SessionOS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/ȑ;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v0

    .line 833
    invoke-static {v4}, Lo/ɤ;->ˏ(Ljava/io/OutputStream;)Lo/ɤ;

    move-result-object v0

    move-object v5, v0

    .line 835
    iget-object v0, p0, Lo/ऽ;->om:Lo/ɬ;

    invoke-virtual {v0}, Lo/ɬ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/qh;->ᐡ(Landroid/content/Context;)Z

    move-result v6

    .line 837
    iget-object v0, p0, Lo/ऽ;->oo:Lo/ᚐ;

    invoke-virtual {v0, v5, v6}, Lo/ᚐ;->ˊ(Lo/ɤ;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 842
    const-string v0, "Failed to flush to session OS file."

    invoke-static {v5, v0}, Lo/qh;->ˊ(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 843
    const-string v0, "Failed to close session OS file."

    invoke-static {v4, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 844
    goto :goto_0

    .line 838
    :catch_0
    move-exception v6

    .line 839
    :try_start_1
    invoke-static {v6, v4}, Lo/ᓿ;->ˊ(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 840
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 842
    :catchall_0
    move-exception v7

    const-string v0, "Failed to flush to session OS file."

    invoke-static {v5, v0}, Lo/qh;->ˊ(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 843
    const-string v0, "Failed to close session OS file."

    invoke-static {v4, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v7

    .line 845
    :goto_0
    return-void
.end method

.method private ﾆ(I)V
    .locals 15

    .line 687
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 689
    invoke-virtual {p0}, Lo/ऽ;->ะ()[Ljava/io/File;

    move-result-object v5

    .line 690
    sget-object v0, Lo/ऽ;->nY:Ljava/util/Comparator;

    invoke-static {v5, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 691
    array-length v0, v5

    move/from16 v1, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 693
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_0

    .line 694
    aget-object v0, v5, v7

    invoke-direct {p0, v0}, Lo/ऽ;->ᐝ(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    .line 695
    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 693
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 698
    :cond_0
    new-instance v0, Lo/ऽ$if;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ऽ$if;-><init>(Lo/บ;)V

    invoke-direct {p0, v0}, Lo/ऽ;->ˊ(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v7

    .line 700
    move-object v8, v7

    array-length v9, v8

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_2

    aget-object v11, v8, v10

    .line 701
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    .line 702
    sget-object v0, Lo/ऽ;->ob:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 704
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    .line 705
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    .line 707
    invoke-interface {v4, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 708
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trimming open session file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 700
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 712
    :cond_2
    return-void
.end method

.method private ﾞ(Ljava/lang/String;)V
    .locals 30

    .line 849
    const/4 v15, 0x0

    .line 850
    const/16 v16, 0x0

    .line 852
    :try_start_0
    new-instance v0, Lo/ȑ;

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/ऽ;->og:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SessionDevice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/ȑ;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v15, v0

    .line 853
    invoke-static {v15}, Lo/ɤ;->ˏ(Ljava/io/OutputStream;)Lo/ɤ;

    move-result-object v0

    move-object/from16 v16, v0

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ऽ;->om:Lo/ɬ;

    invoke-virtual {v0}, Lo/ɬ;->getContext()Landroid/content/Context;

    move-result-object v17

    .line 856
    new-instance v18, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ऽ;->ok:Lo/qr;

    invoke-virtual {v0}, Lo/qr;->cE()Ljava/lang/String;

    move-result-object v19

    .line 859
    invoke-static {}, Lo/qh;->ct()I

    move-result v20

    .line 860
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v21

    .line 861
    invoke-static {}, Lo/qh;->cu()J

    move-result-wide v22

    .line 862
    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    mul-long v24, v0, v2

    .line 863
    invoke-static/range {v17 .. v17}, Lo/qh;->ᐟ(Landroid/content/Context;)Z

    move-result v26

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ऽ;->ok:Lo/qr;

    invoke-virtual {v0}, Lo/qr;->Ἲ()Ljava/util/Map;

    move-result-object v27

    .line 867
    invoke-static/range {v17 .. v17}, Lo/qh;->ᐪ(Landroid/content/Context;)I

    move-result v28

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ऽ;->oo:Lo/ᚐ;

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    move/from16 v3, v20

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move/from16 v5, v21

    move-wide/from16 v6, v22

    move-wide/from16 v8, v24

    move/from16 v10, v26

    move-object/from16 v11, v27

    move/from16 v12, v28

    sget-object v13, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v14, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual/range {v0 .. v14}, Lo/ᚐ;->ˊ(Lo/ɤ;Ljava/lang/String;ILjava/lang/String;IJJZLjava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 877
    const-string v0, "Failed to flush session device info."

    move-object/from16 v1, v16

    invoke-static {v1, v0}, Lo/qh;->ˊ(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 878
    const-string v0, "Failed to close session device file."

    invoke-static {v15, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 879
    goto :goto_0

    .line 873
    :catch_0
    move-exception v17

    .line 874
    move-object/from16 v0, v17

    :try_start_1
    invoke-static {v0, v15}, Lo/ᓿ;->ˊ(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 875
    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 877
    :catchall_0
    move-exception v29

    const-string v0, "Failed to flush session device info."

    move-object/from16 v1, v16

    invoke-static {v1, v0}, Lo/qh;->ˊ(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 878
    const-string v0, "Failed to close session device file."

    invoke-static {v15, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v29

    .line 880
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    monitor-enter p0

    .line 259
    :try_start_0
    iget-object v0, p0, Lo/ऽ;->oh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 261
    :try_start_1
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crashlytics is handling uncaught exception \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" from thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lo/ऽ;->oe:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Unregistering power receivers."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lo/ऽ;->om:Lo/ɬ;

    invoke-virtual {v0}, Lo/ɬ;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 267
    iget-object v0, p0, Lo/ऽ;->oj:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 268
    iget-object v0, p0, Lo/ऽ;->oi:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 273
    :cond_0
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 274
    iget-object v0, p0, Lo/ऽ;->nL:Lo/ة;

    new-instance v1, Lo/ᓕ;

    invoke-direct {v1, p0, v4, p1, p2}, Lo/ᓕ;-><init>(Lo/ऽ;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lo/ة;->ˊ(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    :try_start_2
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Crashlytics completed exception processing. Invoking default exception handler."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lo/ऽ;->of:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 289
    iget-object v0, p0, Lo/ऽ;->oh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 290
    goto :goto_0

    .line 281
    :catch_0
    move-exception v4

    .line 282
    :try_start_3
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "An error occurred in the uncaught exception handler"

    invoke-interface {v0, v1, v2, v4}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 285
    :try_start_4
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Crashlytics completed exception processing. Invoking default exception handler."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lo/ऽ;->of:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 289
    iget-object v0, p0, Lo/ऽ;->oh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 290
    goto :goto_0

    .line 285
    :catchall_0
    move-exception v5

    :try_start_5
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Crashlytics completed exception processing. Invoking default exception handler."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lo/ऽ;->of:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 289
    iget-object v0, p0, Lo/ऽ;->oh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 291
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method ˊ(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .line 362
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 364
    iget-object v0, p0, Lo/ऽ;->nL:Lo/ة;

    new-instance v1, Lo/ᓗ;

    invoke-direct {v1, p0, v2, p1, p2}, Lo/ᓗ;-><init>(Lo/ऽ;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lo/ة;->ˊ(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 372
    return-void
.end method

.method ˋ([Ljava/io/File;)V
    .locals 14

    .line 733
    invoke-direct {p0}, Lo/ऽ;->ᐸ()V

    .line 738
    move-object v4, p1

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 739
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found invalid session part file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    invoke-direct {p0, v7}, Lo/ऽ;->ᐝ(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    .line 742
    new-instance v9, Lo/ᐳ;

    invoke-direct {v9, p0, v8}, Lo/ᐳ;-><init>(Lo/ऽ;Ljava/lang/String;)V

    .line 749
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting all part files for invalid session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    invoke-direct {p0, v9}, Lo/ऽ;->ˊ(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_0

    aget-object v13, v10, v12

    .line 752
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting session file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 751
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 738
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 756
    :cond_1
    return-void
.end method

.method ن()Z
    .locals 1

    .line 310
    iget-object v0, p0, Lo/ऽ;->oh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method ٮ()V
    .locals 2

    .line 456
    iget-object v0, p0, Lo/ऽ;->nL:Lo/ة;

    new-instance v1, Lo/ย;

    invoke-direct {v1, p0}, Lo/ย;-><init>(Lo/ऽ;)V

    invoke-virtual {v0, v1}, Lo/ة;->ˋ(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 465
    return-void
.end method

.method ڈ()Z
    .locals 1

    .line 499
    invoke-virtual {p0}, Lo/ऽ;->ะ()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method ڙ()Z
    .locals 2

    .line 517
    iget-object v0, p0, Lo/ऽ;->nL:Lo/ة;

    new-instance v1, Lo/ะ;

    invoke-direct {v1, p0}, Lo/ะ;-><init>(Lo/ऽ;)V

    invoke-virtual {v0, v1}, Lo/ة;->ˊ(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method ะ()[Ljava/io/File;
    .locals 2

    .line 636
    new-instance v0, Lo/ऽ$ˊ;

    const-string v1, "BeginSession"

    invoke-direct {v0, v1}, Lo/ऽ$ˊ;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/ऽ;->ˊ(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method າ()V
    .locals 4

    .line 679
    iget-object v0, p0, Lo/ऽ;->og:Ljava/io/File;

    sget-object v1, Lo/ऽ;->nX:Ljava/io/FilenameFilter;

    sget-object v2, Lo/ऽ;->nZ:Ljava/util/Comparator;

    const/4 v3, 0x4

    invoke-static {v0, v1, v3, v2}, Lo/ᴏ;->ˊ(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V

    .line 681
    return-void
.end method

.method ᐳ()V
    .locals 2

    .line 718
    iget-object v0, p0, Lo/ऽ;->nL:Lo/ة;

    new-instance v1, Lo/າ;

    invoke-direct {v1, p0}, Lo/າ;-><init>(Lo/ऽ;)V

    invoke-virtual {v0, v1}, Lo/ة;->ˊ(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 725
    return-void
.end method
