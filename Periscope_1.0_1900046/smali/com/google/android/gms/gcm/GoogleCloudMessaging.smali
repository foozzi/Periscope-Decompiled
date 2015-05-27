.class public Lcom/google/android/gms/gcm/GoogleCloudMessaging;
.super Ljava/lang/Object;


# static fields
.field public static final ERROR_MAIN_THREAD:Ljava/lang/String; = "MAIN_THREAD"

.field public static final ERROR_SERVICE_NOT_AVAILABLE:Ljava/lang/String; = "SERVICE_NOT_AVAILABLE"

.field public static final MESSAGE_TYPE_DELETED:Ljava/lang/String; = "deleted_messages"

.field public static final MESSAGE_TYPE_MESSAGE:Ljava/lang/String; = "gcm"

.field public static final MESSAGE_TYPE_SEND_ERROR:Ljava/lang/String; = "send_error"

.field public static final REGISTRATION_ID:Ljava/lang/String; = "registration_id"

.field private static zzakT:Ljava/lang/String; = null

.field public static zzakU:I = 0x0

.field public static zzakV:I = 0x0

.field public static zzakW:I = 0x0

.field static zzakX:Lcom/google/android/gms/gcm/GoogleCloudMessaging; = null

.field private static final zzala:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private zzakY:Landroid/app/PendingIntent;

.field private zzakZ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/String;Landroid/os/Handler;>;"
        }
    .end annotation
.end field

.field private final zzalb:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<Landroid/content/Intent;>;"
        }
    .end annotation
.end field

.field final zzalc:Landroid/os/Messenger;

.field private zzlN:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzakT:Ljava/lang/String;

    const v0, 0x4c4b40

    sput v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzakU:I

    const v0, 0x632ea0

    sput v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzakV:I

    const v0, 0x6acfc0

    sput v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzakW:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzala:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzalb:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzakZ:Ljava/util/Map;

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/android/gms/gcm/GoogleCloudMessaging$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/gcm/GoogleCloudMessaging$1;-><init>(Lcom/google/android/gms/gcm/GoogleCloudMessaging;Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzalc:Landroid/os/Messenger;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .locals 3

    const-class v2, Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzakX:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    invoke-direct {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;-><init>()V

    sput-object v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzakX:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    sget-object v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzakX:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzlN:Landroid/content/Context;

    :cond_0
    sget-object v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzakX:Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0
.end method

.method public static zzZ(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzakT:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "com.google.android.gms"

    sput-object v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzakT:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzakT:Ljava/lang/String;

    return-object v0
.end method

.method private zza(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "SERVICE_NOT_AVAILABLE"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    const-string v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SERVICE_NOT_AVAILABLE"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/gcm/GoogleCloudMessaging;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzalb:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method private zza(Ljava/lang/String;Ljava/lang/String;JILandroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing \'to\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.google.android.gcm.intent.SEND"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p6, :cond_1

    invoke-virtual {v2, p6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0, v2}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzk(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzlN:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzZ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "google.to"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "google.message_id"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "google.ttl"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "google.delay"

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzlN:Landroid/content/Context;

    const-string v1, "com.google.android.gtalkservice.permission.GTALK_SERVICE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/gcm/GoogleCloudMessaging;Landroid/content/Intent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzj(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static zzaa(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzZ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v3

    const/4 v0, -0x1

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/gcm/GoogleCloudMessaging;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzlN:Landroid/content/Context;

    return-object v0
.end method

.method private zzj(Landroid/content/Intent;)Z
    .locals 4

    const-string v0, "In-Reply-To"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "google.message_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzakZ:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    move-object v2, v0

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private zzpd()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "google.rpc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzala:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private zzt(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 9

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "MAIN_THREAD"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzlN:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzaa(Landroid/content/Context;)I

    move-result v4

    if-gez v4, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Google Play Services missing"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p1, :cond_2

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_2
    new-instance v5, Landroid/content/Intent;

    const-string v0, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzlN:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzZ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v5}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzk(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzpd()Ljava/lang/String;

    move-result-object v6

    const-string v0, "google.message_id"

    invoke-virtual {v5, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v0, "google.messenger"

    iget-object v1, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzalc:Landroid/os/Messenger;

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzlN:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzalb:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7530

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    return-object v7

    :catch_0
    move-exception v8

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v8}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzpe()V

    return-void
.end method

.method public getMessageType(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v0, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "message_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    const-string v0, "gcm"

    return-object v0
.end method

.method public varargs declared-synchronized register([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzd([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "sender"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzt(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    const-string v0, "registration_id"

    invoke-direct {p0, v3, v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zza(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v6, p5

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zza(Ljava/lang/String;Ljava/lang/String;JILandroid/os/Bundle;)V

    return-void
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    const-wide/16 v3, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->send(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method

.method public declared-synchronized unregister()V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "MAIN_THREAD"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v0, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzlN:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzZ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "google.messenger"

    iget-object v1, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzalc:Landroid/os/Messenger;

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzk(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzlN:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzalb:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7530

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v0

    goto :goto_0

    :catch_0
    move-exception v6

    :try_start_2
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v6}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    const-string v0, "unregistered"

    invoke-direct {p0, v5, v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zza(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method varargs zzd([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No senderIds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    :goto_0
    array-length v0, p1

    if-ge v3, v0, :cond_2

    const/16 v0, 0x2c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized zzk(Landroid/content/Intent;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzakY:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.google.example.invalidpackage"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzlN:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzakY:Landroid/app/PendingIntent;

    :cond_0
    const-string v0, "app"

    iget-object v1, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzakY:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized zzpe()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzakY:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzakY:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->zzakY:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
