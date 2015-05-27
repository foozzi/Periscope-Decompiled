.class public Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/sg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$if;,
        Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;
    }
.end annotation


# static fields
.field private static final RQ:[B

.field private static final RR:[B

.field private static final RS:[B


# instance fields
.field private final PU:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field private final RF:Lo/ny;

.field private final RT:J

.field private final RU:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<Lretrofit/RestAdapter;>;"
        }
    .end annotation
.end field

.field private final Rx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/mh<+Lo/mg;>;>;"
        }
    .end annotation
.end field

.field private final dV:Landroid/content/Context;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final ok:Lo/qr;

.field private final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->RQ:[B

    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->RR:[B

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->RS:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x5bt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2ct
    .end array-data

    nop

    :array_2
    .array-data 1
        0x5dt
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lo/ny;JLcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/util/List;Ljavax/net/ssl/SSLSocketFactory;Ljava/util/concurrent/ExecutorService;Lo/qr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;Lo/ny;JLcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/util/List<Lo/mh<+Lo/mg;>;>;Ljavax/net/ssl/SSLSocketFactory;Ljava/util/concurrent/ExecutorService;Lo/qr;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->dV:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->RF:Lo/ny;

    .line 70
    iput-wide p3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->RT:J

    .line 71
    iput-object p5, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->PU:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 72
    iput-object p6, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->Rx:Ljava/util/List;

    .line 73
    iput-object p7, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 74
    iput-object p8, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 75
    iput-object p9, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->ok:Lo/qr;

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->RU:Ljava/util/concurrent/atomic/AtomicReference;

    .line 77
    return-void
.end method

.method public static synthetic access$000()[B
    .locals 1

    .line 38
    sget-object v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->RR:[B

    return-object v0
.end method

.method private bV()Z
    .locals 1

    .line 144
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->bR()Lretrofit/RestAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ʻ(Lo/mg;)Z
    .locals 1

    .line 191
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/mg;->aX()Lo/lw;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ᑊ(J)Lo/mg;
    .locals 4

    .line 180
    const/4 v1, 0x0

    .line 181
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->Rx:Ljava/util/List;

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

    .line 182
    invoke-interface {v3, p1, p2}, Lo/mh;->ᑊ(J)Lo/mg;

    move-result-object v1

    .line 183
    if-eqz v1, :cond_0

    .line 184
    goto :goto_1

    .line 186
    :cond_0
    goto :goto_0

    .line 187
    :cond_1
    :goto_1
    return-object v1
.end method


# virtual methods
.method declared-synchronized bR()Lretrofit/RestAdapter;
    .locals 7

    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->RU:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 159
    iget-wide v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->RT:J

    invoke-direct {p0, v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->ᑊ(J)Lo/mg;

    move-result-object v5

    .line 160
    new-instance v6, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$if;

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->RF:Lo/ny;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->ok:Lo/qr;

    invoke-direct {v6, v0, v1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$if;-><init>(Lo/ny;Lo/qr;)V

    .line 162
    invoke-direct {p0, v5}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->ʻ(Lo/mg;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->RU:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lretrofit/RestAdapter$Builder;

    invoke-direct {v1}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->RF:Lo/ny;

    iget-object v2, v2, Lo/ny;->baseUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lretrofit/android/MainThreadExecutor;

    invoke-direct {v3}, Lretrofit/android/MainThreadExecutor;-><init>()V

    invoke-virtual {v1, v2, v3}, Lretrofit/RestAdapter$Builder;->setExecutors(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)Lretrofit/RestAdapter$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lretrofit/RestAdapter$Builder;->setRequestInterceptor(Lretrofit/RequestInterceptor;)Lretrofit/RestAdapter$Builder;

    move-result-object v1

    new-instance v2, Lo/ly;

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->PU:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iget-object v4, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-direct {v2, v3, v5, v4}, Lo/ly;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lo/mg;Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-virtual {v1, v2}, Lretrofit/RestAdapter$Builder;->setClient(Lretrofit/client/Client;)Lretrofit/RestAdapter$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->dV:Landroid/content/Context;

    const-string v1, "No valid session at this time"

    invoke-static {v0, v1}, Lo/qh;->ᐝ(Landroid/content/Context;Ljava/lang/String;)V

    .line 176
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->RU:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit/RestAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public ʼ(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Ljava/io/File;>;)Z"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->bV()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->ˉ(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 84
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->dV:Landroid/content/Context;

    invoke-static {v0, v3}, Lo/qh;->ᐝ(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, v3}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->ﻧ(Ljava/lang/String;)Lretrofit/client/Response;

    move-result-object v4

    .line 87
    invoke-virtual {v4}, Lretrofit/client/Response;->getStatus()I
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 88
    const/4 v0, 0x1

    return v0

    .line 90
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->dV:Landroid/content/Context;

    const-string v1, "Failed sending files"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/qh;->ˊ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Lretrofit/RetrofitError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    goto :goto_0

    .line 92
    :catch_0
    move-exception v3

    .line 93
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->dV:Landroid/content/Context;

    const-string v1, "Failed sending files"

    invoke-static {v0, v1, v3}, Lo/qh;->ˊ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    invoke-virtual {v3}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    const/16 v1, 0x1f4

    if-eq v0, v1, :cond_1

    invoke-virtual {v3}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_2

    .line 97
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 101
    :cond_2
    goto :goto_0

    .line 99
    :catch_1
    move-exception v3

    .line 100
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->dV:Landroid/content/Context;

    const-string v1, "Failed sending files"

    invoke-static {v0, v1, v3}, Lo/qh;->ˊ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    goto :goto_0

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->dV:Landroid/content/Context;

    const-string v1, "Cannot attempt upload at this time"

    invoke-static {v0, v1}, Lo/qh;->ᐝ(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method ˉ(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Ljava/io/File;>;)Ljava/lang/String;"
        }
    .end annotation

    .line 109
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x400

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 110
    const/4 v0, 0x1

    new-array v2, v0, [Z

    .line 111
    sget-object v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->RQ:[B

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 112
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    move-object v4, v0

    .line 113
    const/4 v5, 0x0

    .line 115
    :try_start_0
    new-instance v0, Lo/qu;

    invoke-direct {v0, v4}, Lo/qu;-><init>(Ljava/io/File;)V

    move-object v5, v0

    .line 116
    new-instance v0, Lo/ob;

    invoke-direct {v0, p0, v2, v1}, Lo/ob;-><init>(Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;[ZLjava/io/ByteArrayOutputStream;)V

    invoke-virtual {v5, v0}, Lo/qu;->ˊ(Lo/qu$ˋ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-static {v5}, Lo/qh;->closeQuietly(Ljava/io/Closeable;)V

    .line 133
    goto :goto_1

    .line 132
    :catchall_0
    move-exception v6

    invoke-static {v5}, Lo/qh;->closeQuietly(Ljava/io/Closeable;)V

    throw v6

    .line 134
    :goto_1
    goto :goto_0

    .line 135
    :cond_0
    sget-object v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->RS:[B

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 137
    const-string v0, "UTF-8"

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method ﻧ(Ljava/lang/String;)Lretrofit/client/Response;
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->RU:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit/RestAdapter;

    const-class v1, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;

    move-object v2, v0

    .line 199
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->RF:Lo/ny;

    iget-object v0, v0, Lo/ny;->RK:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->RF:Lo/ny;

    iget-object v0, v0, Lo/ny;->RK:Ljava/lang/String;

    invoke-interface {v2, v0, p1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;->uploadSequence(Ljava/lang/String;Ljava/lang/String;)Lretrofit/client/Response;

    move-result-object v0

    return-object v0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->RF:Lo/ny;

    iget-object v0, v0, Lo/ny;->RI:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->RF:Lo/ny;

    iget-object v1, v1, Lo/ny;->RJ:Ljava/lang/String;

    invoke-interface {v2, v0, v1, p1}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender$ScribeService;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/client/Response;

    move-result-object v0

    return-object v0
.end method
