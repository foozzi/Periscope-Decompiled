.class abstract Lcom/localytics/android/BaseHandler;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/BaseHandler$ListenersSet;,
        Lcom/localytics/android/BaseHandler$BaseListener;
    }
.end annotation


# static fields
.field private static final CANCEL_UPLOAD:Ljava/lang/String; = "cancel"

.field private static final MESSAGE_GET_VALUE:I = 0x2

.field static final MESSAGE_INIT:I = 0x1

.field private static final MESSAGE_UPLOAD:I = 0x3

.field static final MESSAGE_UPLOAD_CALLBACK:I = 0x4

.field private static final UPLOAD_WAKE_LOCK:Ljava/lang/String; = "UPLOAD_WAKE_LOCK"


# instance fields
.field protected doesRetry:Z

.field listeners:Lcom/localytics/android/BaseHandler$ListenersSet;

.field mProvider:Lcom/localytics/android/BaseProvider;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private maxRowToUpload:I

.field private numberOfRetries:I

.field private pendingUploadMessage:Landroid/os/Message;

.field private queuePriorityMessages:Z

.field siloName:Ljava/lang/String;

.field private uploadThread:Lcom/localytics/android/BaseUploadThread;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 62
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/localytics/android/BaseHandler;->maxRowToUpload:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/localytics/android/BaseHandler;->numberOfRetries:I

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/localytics/android/BaseHandler;->queuePriorityMessages:Z

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/localytics/android/BaseHandler;->uploadThread:Lcom/localytics/android/BaseUploadThread;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/localytics/android/BaseHandler;->pendingUploadMessage:Landroid/os/Message;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/localytics/android/BaseHandler;->doesRetry:Z

    .line 63
    return-void
.end method

.method private _uploadCallback(ILjava/lang/String;)V
    .locals 4

    .line 359
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->uploadThread:Lcom/localytics/android/BaseUploadThread;

    iget-object v3, v0, Lcom/localytics/android/BaseUploadThread;->customerID:Ljava/lang/String;

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/localytics/android/BaseHandler;->uploadThread:Lcom/localytics/android/BaseUploadThread;

    .line 361
    if-lez p1, :cond_0

    .line 363
    invoke-virtual {p0, p1}, Lcom/localytics/android/BaseHandler;->_deleteUploadedData(I)V

    .line 364
    const/4 v0, 0x0

    iput v0, p0, Lcom/localytics/android/BaseHandler;->numberOfRetries:I

    goto :goto_0

    .line 369
    :cond_0
    iget v0, p0, Lcom/localytics/android/BaseHandler;->numberOfRetries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/localytics/android/BaseHandler;->numberOfRetries:I

    .line 372
    :goto_0
    iget-boolean v0, p0, Lcom/localytics/android/BaseHandler;->doesRetry:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/localytics/android/BaseHandler;->maxRowToUpload:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/localytics/android/BaseHandler;->numberOfRetries:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    .line 374
    :cond_1
    iget v0, p0, Lcom/localytics/android/BaseHandler;->maxRowToUpload:I

    if-ne p1, v0, :cond_2

    .line 376
    invoke-virtual {p0, p2}, Lcom/localytics/android/BaseHandler;->_onUploadCompleted(Ljava/lang/String;)V

    .line 387
    :cond_2
    invoke-direct {p0}, Lcom/localytics/android/BaseHandler;->cancelPendingUpload()V

    .line 388
    const/4 v0, 0x0

    iput v0, p0, Lcom/localytics/android/BaseHandler;->numberOfRetries:I

    .line 389
    const/4 v0, 0x0

    iput v0, p0, Lcom/localytics/android/BaseHandler;->maxRowToUpload:I

    .line 391
    invoke-direct {p0}, Lcom/localytics/android/BaseHandler;->exitWakeLock()V

    goto :goto_1

    .line 395
    :cond_3
    const/4 v0, 0x0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/localytics/android/BaseHandler;->upload(ZJLjava/lang/String;)V

    .line 397
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/localytics/android/BaseHandler;ILjava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/BaseHandler;->_uploadCallback(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/localytics/android/BaseHandler;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/localytics/android/BaseHandler;->queuePriorityMessages:Z

    return p1
.end method

.method private cancelPendingUpload()V
    .locals 3

    .line 401
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->pendingUploadMessage:Landroid/os/Message;

    const/4 v1, 0x0

    if-eq v1, v0, :cond_0

    .line 403
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 404
    const-string v0, "cancel"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 405
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->pendingUploadMessage:Landroid/os/Message;

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 406
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/localytics/android/BaseHandler;->pendingUploadMessage:Landroid/os/Message;

    .line 407
    const/4 v0, 0x0

    iput v0, p0, Lcom/localytics/android/BaseHandler;->numberOfRetries:I

    .line 408
    const/4 v0, 0x0

    iput v0, p0, Lcom/localytics/android/BaseHandler;->maxRowToUpload:I

    .line 410
    :cond_0
    return-void
.end method

.method private enterWakeLock()V
    .locals 4

    .line 418
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 419
    const-string v0, "android.permission.WAKE_LOCK"

    sget-object v1, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 421
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_3

    .line 424
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    move-object v3, v0

    .line 425
    const-string v0, "UPLOAD_WAKE_LOCK"

    const/4 v1, 0x1

    invoke-virtual {v3, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/BaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 426
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    const-string v0, "Wake lock will be acquired but is held when shouldn\'t be."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 431
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    const-string v0, "Wake lock acquired."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 434
    return-void

    .line 437
    :cond_1
    const-string v0, "Localytics library failed to get wake lock"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 438
    goto :goto_0

    .line 442
    :cond_2
    const-string v0, "android.permission.WAKE_LOCK is missing from the Manifest file."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 444
    :cond_3
    :goto_0
    return-void
.end method

.method private exitWakeLock()V
    .locals 3

    .line 448
    sget-object v0, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 449
    const-string v0, "android.permission.WAKE_LOCK"

    sget-object v1, Lcom/localytics/android/Localytics;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 451
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    .line 453
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    const-string v0, "Wake lock will be released but not held when should be."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 461
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    const-string v0, "Wake lock was not released when it should have been."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    goto :goto_0

    .line 467
    :cond_1
    const-string v0, "Wake lock released."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 469
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/localytics/android/BaseHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    .line 474
    :cond_2
    const-string v0, "android.permission.WAKE_LOCK is missing from the Manifest file."

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 476
    :cond_3
    :goto_1
    return-void
.end method

.method private getFuture(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/FutureTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Ljava/util/concurrent/Callable<TT;>;)Ljava/util/concurrent/FutureTask<TT;>;"
        }
    .end annotation

    .line 162
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 163
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/BaseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/BaseHandler;->queueMessage(Landroid/os/Message;)Z

    .line 164
    return-object v1
.end method

.method private getType(Ljava/util/concurrent/Callable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Ljava/util/concurrent/Callable<TT;>;TT;)TT;"
        }
    .end annotation

    .line 185
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 187
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot be called on the main thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    invoke-direct {p0, p1}, Lcom/localytics/android/BaseHandler;->getFuture(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/localytics/android/BaseHandler;->getFutureTaskValue(Ljava/util/concurrent/FutureTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract _deleteUploadedData(I)V
.end method

.method protected abstract _getDataToUpload()Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
        }
    .end annotation
.end method

.method protected abstract _getMaxRowToUpload()I
.end method

.method abstract _init()V
.end method

.method protected abstract _onUploadCompleted(Ljava/lang/String;)V
.end method

.method _upload(ZLjava/lang/String;)V
    .locals 6

    .line 312
    iget v0, p0, Lcom/localytics/android/BaseHandler;->maxRowToUpload:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->uploadThread:Lcom/localytics/android/BaseUploadThread;

    const/4 v1, 0x0

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->uploadThread:Lcom/localytics/android/BaseUploadThread;

    invoke-virtual {v0}, Lcom/localytics/android/BaseUploadThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    const/4 v0, 0x0

    iput v0, p0, Lcom/localytics/android/BaseHandler;->maxRowToUpload:I

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/localytics/android/BaseHandler;->uploadThread:Lcom/localytics/android/BaseUploadThread;

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/localytics/android/BaseHandler;->_getMaxRowToUpload()I

    move-result v4

    .line 320
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/localytics/android/BaseHandler;->maxRowToUpload:I

    if-eqz v0, :cond_1

    .line 322
    iput v4, p0, Lcom/localytics/android/BaseHandler;->maxRowToUpload:I

    .line 324
    const-string v0, "Already uploading %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/localytics/android/BaseHandler;->siloName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 326
    return-void

    .line 331
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/localytics/android/BaseHandler;->_getDataToUpload()Ljava/util/TreeMap;

    move-result-object v5

    .line 332
    invoke-virtual {v5}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 334
    const/4 v0, 0x0

    iput v0, p0, Lcom/localytics/android/BaseHandler;->maxRowToUpload:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    return-void

    .line 342
    :cond_2
    if-eqz p1, :cond_3

    .line 344
    :try_start_1
    iput v4, p0, Lcom/localytics/android/BaseHandler;->maxRowToUpload:I

    .line 347
    :cond_3
    invoke-direct {p0}, Lcom/localytics/android/BaseHandler;->enterWakeLock()V

    .line 348
    invoke-virtual {p0, v5, p2}, Lcom/localytics/android/BaseHandler;->getUploadThread(Ljava/util/TreeMap;Ljava/lang/String;)Lcom/localytics/android/BaseUploadThread;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/BaseHandler;->uploadThread:Lcom/localytics/android/BaseUploadThread;

    invoke-virtual {v0}, Lcom/localytics/android/BaseUploadThread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 354
    goto :goto_0

    .line 350
    :catch_0
    move-exception v5

    .line 352
    const-string v0, "Error occurred during upload"

    invoke-static {v0, v5}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    const/4 v0, 0x0

    iput v0, p0, Lcom/localytics/android/BaseHandler;->maxRowToUpload:I

    .line 355
    :goto_0
    return-void
.end method

.method addListener(Lcom/localytics/android/BaseHandler$BaseListener;)V
    .locals 3

    .line 223
    iget-object v1, p0, Lcom/localytics/android/BaseHandler;->listeners:Lcom/localytics/android/BaseHandler$ListenersSet;

    monitor-enter v1

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->listeners:Lcom/localytics/android/BaseHandler$ListenersSet;

    invoke-virtual {v0, p1}, Lcom/localytics/android/BaseHandler$ListenersSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 227
    :goto_0
    return-void
.end method

.method getBool(Ljava/util/concurrent/Callable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;)Z"
        }
    .end annotation

    .line 157
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/localytics/android/BaseHandler;->getType(Ljava/util/concurrent/Callable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method getFutureTaskValue(Ljava/util/concurrent/FutureTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Ljava/util/concurrent/FutureTask<TT;>;TT;)TT;"
        }
    .end annotation

    .line 169
    move-object v1, p2

    .line 172
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    move-object v1, v0

    .line 179
    return-object v1

    .line 174
    :catch_0
    move-exception v2

    .line 179
    return-object v1

    :catchall_0
    move-exception v3

    return-object v1
.end method

.method getList(Ljava/util/concurrent/Callable;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/concurrent/Callable<Ljava/util/List;>;)Ljava/util/List;"
        }
    .end annotation

    .line 218
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/localytics/android/BaseHandler;->getType(Ljava/util/concurrent/Callable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method getMap(Ljava/util/concurrent/Callable;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/concurrent/Callable<Ljava/util/Map;>;)Ljava/util/Map;"
        }
    .end annotation

    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/localytics/android/BaseHandler;->getType(Ljava/util/concurrent/Callable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method getString(Ljava/util/concurrent/Callable;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/concurrent/Callable<Ljava/lang/String;>;)Ljava/lang/String;"
        }
    .end annotation

    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/localytics/android/BaseHandler;->getType(Ljava/util/concurrent/Callable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getUploadThread(Ljava/util/TreeMap;Ljava/lang/String;)Lcom/localytics/android/BaseUploadThread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;Ljava/lang/String;)Lcom/localytics/android/BaseUploadThread;"
        }
    .end annotation
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 70
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 72
    const-string v0, "%s handler received %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/localytics/android/BaseHandler;->siloName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 78
    :pswitch_0
    invoke-virtual {p0}, Lcom/localytics/android/BaseHandler;->_init()V

    .line 79
    goto/16 :goto_1

    .line 83
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/FutureTask;

    move-object v4, v0

    .line 84
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v1, Lcom/localytics/android/BaseHandler$1;

    invoke-direct {v1, p0, v4}, Lcom/localytics/android/BaseHandler$1;-><init>(Lcom/localytics/android/BaseHandler;Ljava/util/concurrent/FutureTask;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    .line 92
    goto/16 :goto_1

    .line 96
    :pswitch_2
    const-string v0, "%s handler received MESSAGE_UPLOAD"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/localytics/android/BaseHandler;->siloName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 98
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .line 99
    const/4 v0, 0x0

    aget-object v0, v4, v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v5, v0

    .line 100
    const/4 v0, 0x1

    aget-object v0, v4, v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 101
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 103
    if-nez v7, :cond_0

    .line 105
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v1, Lcom/localytics/android/BaseHandler$2;

    invoke-direct {v1, p0, v5, v6}, Lcom/localytics/android/BaseHandler$2;-><init>(Lcom/localytics/android/BaseHandler;Ljava/lang/Boolean;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 118
    :pswitch_3
    const-string v0, "%s handler received MESSAGE_UPLOAD_CALLBACK"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/localytics/android/BaseHandler;->siloName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 120
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .line 121
    const/4 v0, 0x0

    aget-object v0, v4, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 122
    const/4 v0, 0x1

    aget-object v0, v4, v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 124
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v1, Lcom/localytics/android/BaseHandler$3;

    invoke-direct {v1, p0, v5, v6}, Lcom/localytics/android/BaseHandler$3;-><init>(Lcom/localytics/android/BaseHandler;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    .line 132
    goto :goto_1

    .line 136
    :goto_0
    invoke-virtual {p0, p1}, Lcom/localytics/android/BaseHandler;->handleMessageExtended(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :cond_0
    :goto_1
    goto :goto_2

    .line 141
    :catch_0
    move-exception v4

    .line 143
    const-string v0, "%s handler can\'t handle message %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/localytics/android/BaseHandler;->siloName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method handleMessageExtended(Landroid/os/Message;)V
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Fell through switch statement"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method queueMessage(Landroid/os/Message;)Z
    .locals 2

    .line 195
    iget-boolean v0, p0, Lcom/localytics/android/BaseHandler;->queuePriorityMessages:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/localytics/android/BaseHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 197
    invoke-virtual {p0, p1}, Lcom/localytics/android/BaseHandler;->handleMessage(Landroid/os/Message;)V

    .line 198
    const/4 v0, 0x1

    return v0

    .line 202
    :cond_0
    invoke-virtual {p0, p1}, Lcom/localytics/android/BaseHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method final queueMessageDelayed(Landroid/os/Message;J)Z
    .locals 2

    .line 239
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 241
    invoke-virtual {p0, p1}, Lcom/localytics/android/BaseHandler;->queueMessage(Landroid/os/Message;)Z

    move-result v0

    return v0

    .line 245
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/localytics/android/BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method removeListener(Lcom/localytics/android/BaseHandler$BaseListener;)V
    .locals 3

    .line 231
    iget-object v1, p0, Lcom/localytics/android/BaseHandler;->listeners:Lcom/localytics/android/BaseHandler$ListenersSet;

    monitor-enter v1

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->listeners:Lcom/localytics/android/BaseHandler$ListenersSet;

    invoke-virtual {v0, p1}, Lcom/localytics/android/BaseHandler$ListenersSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 235
    :goto_0
    return-void
.end method

.method upload(Ljava/lang/String;)V
    .locals 3

    .line 281
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/localytics/android/BaseHandler;->upload(ZJLjava/lang/String;)V

    .line 282
    return-void
.end method

.method upload(ZJLjava/lang/String;)V
    .locals 5

    .line 286
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/localytics/android/BaseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 287
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/localytics/android/BaseHandler;->cancelPendingUpload()V

    .line 290
    invoke-virtual {p0, v3}, Lcom/localytics/android/BaseHandler;->queueMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 294
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 295
    const-string v0, "cancel"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 296
    iput-object v3, p0, Lcom/localytics/android/BaseHandler;->pendingUploadMessage:Landroid/os/Message;

    .line 297
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->pendingUploadMessage:Landroid/os/Message;

    invoke-virtual {v0, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 298
    iget-object v0, p0, Lcom/localytics/android/BaseHandler;->pendingUploadMessage:Landroid/os/Message;

    invoke-virtual {p0, v0, p2, p3}, Lcom/localytics/android/BaseHandler;->queueMessageDelayed(Landroid/os/Message;J)Z

    .line 300
    :goto_0
    return-void
.end method
