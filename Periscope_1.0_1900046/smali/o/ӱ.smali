.class public Lo/ӱ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/չ;


# static fields
.field private static AA:Ljava/net/CookieManager;

.field private static final An:Ljava/util/regex/Pattern;

.field private static final Ao:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final Ap:Z

.field private final Aq:I

.field private final Ar:I

.field private final As:Ljava/lang/String;

.field private final At:Lo/র;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u09b0<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private final Au:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private Av:Ljava/net/HttpURLConnection;

.field private Aw:J

.field private Ax:J

.field private Ay:J

.field private Az:J

.field private tE:Lo/к;

.field private final zR:Lo/ף;

.field private zT:Ljava/io/InputStream;

.field private zU:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 67
    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/ӱ;->An:Ljava/util/regex/Pattern;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lo/ӱ;->Ao:Ljava/util/concurrent/atomic/AtomicReference;

    .line 90
    new-instance v0, Ljava/net/CookieManager;

    new-instance v1, Lo/any;

    invoke-direct {v1}, Lo/any;-><init>()V

    new-instance v2, Lo/anx;

    invoke-direct {v2}, Lo/anx;-><init>()V

    invoke-direct {v0, v1, v2}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    sput-object v0, Lo/ӱ;->AA:Ljava/net/CookieManager;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lo/র;Lo/ף;IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Lo/\u09b0<Ljava/lang/String;>;Lo/\u05e3;IIZ)V"
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-static {p1}, Lo/ړ;->ʳ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ӱ;->As:Ljava/lang/String;

    .line 150
    iput-object p2, p0, Lo/ӱ;->At:Lo/র;

    .line 151
    iput-object p3, p0, Lo/ӱ;->zR:Lo/ף;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ӱ;->Au:Ljava/util/HashMap;

    .line 153
    iput p4, p0, Lo/ӱ;->Aq:I

    .line 154
    iput p5, p0, Lo/ӱ;->Ar:I

    .line 155
    iput-boolean p6, p0, Lo/ӱ;->Ap:Z

    .line 156
    return-void
.end method

.method private closeConnection()V
    .locals 1

    .line 575
    iget-object v0, p0, Lo/ӱ;->Av:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lo/ӱ;->Av:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 577
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ӱ;->Av:Ljava/net/HttpURLConnection;

    .line 579
    :cond_0
    return-void
.end method

.method private ż()V
    .locals 7

    .line 504
    iget-wide v0, p0, Lo/ӱ;->Ay:J

    iget-wide v2, p0, Lo/ӱ;->Aw:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 505
    return-void

    .line 509
    :cond_0
    sget-object v0, Lo/ӱ;->Ao:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v4, v0

    .line 510
    if-nez v4, :cond_1

    .line 511
    const/16 v0, 0x1000

    new-array v4, v0, [B

    .line 514
    :cond_1
    :goto_0
    iget-wide v0, p0, Lo/ӱ;->Ay:J

    iget-wide v2, p0, Lo/ӱ;->Aw:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 515
    iget-wide v0, p0, Lo/ӱ;->Aw:J

    iget-wide v2, p0, Lo/ӱ;->Ay:J

    sub-long/2addr v0, v2

    array-length v2, v4

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v5, v0

    .line 516
    iget-object v0, p0, Lo/ӱ;->zT:Ljava/io/InputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 517
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 518
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 520
    :cond_2
    const/4 v0, -0x1

    if-ne v6, v0, :cond_3

    .line 521
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 523
    :cond_3
    iget-wide v0, p0, Lo/ӱ;->Ay:J

    int-to-long v2, v6

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ӱ;->Ay:J

    .line 524
    iget-object v0, p0, Lo/ӱ;->zR:Lo/ף;

    if-eqz v0, :cond_4

    .line 525
    iget-object v0, p0, Lo/ӱ;->zR:Lo/ף;

    invoke-interface {v0, v6}, Lo/ף;->ɨ(I)V

    .line 527
    :cond_4
    goto :goto_0

    .line 530
    :cond_5
    sget-object v0, Lo/ӱ;->Ao:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 531
    return-void
.end method

.method private ʽ([BII)I
    .locals 7

    .line 548
    iget-wide v0, p0, Lo/ӱ;->Ax:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    move v0, p3

    goto :goto_0

    :cond_0
    int-to-long v0, p3

    iget-wide v2, p0, Lo/ӱ;->Ax:J

    iget-wide v4, p0, Lo/ӱ;->Az:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    move p3, v0

    .line 550
    if-nez p3, :cond_1

    .line 552
    const/4 v0, -0x1

    return v0

    .line 555
    :cond_1
    iget-object v0, p0, Lo/ӱ;->zT:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 556
    const/4 v0, -0x1

    if-ne v6, v0, :cond_3

    .line 557
    iget-wide v0, p0, Lo/ӱ;->Ax:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lo/ӱ;->Ax:J

    iget-wide v2, p0, Lo/ӱ;->Az:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 559
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 561
    :cond_2
    const/4 v0, -0x1

    return v0

    .line 564
    :cond_3
    iget-wide v0, p0, Lo/ӱ;->Az:J

    int-to-long v2, v6

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ӱ;->Az:J

    .line 565
    iget-object v0, p0, Lo/ӱ;->zR:Lo/ף;

    if-eqz v0, :cond_4

    .line 566
    iget-object v0, p0, Lo/ӱ;->zR:Lo/ף;

    invoke-interface {v0, v6}, Lo/ף;->ɨ(I)V

    .line 568
    :cond_4
    return v6
.end method

.method private ˊ(Ljava/net/URL;JJZ)Ljava/net/HttpURLConnection;
    .locals 10

    .line 390
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 391
    iget v0, p0, Lo/ӱ;->Aq:I

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 392
    iget v0, p0, Lo/ӱ;->Ar:I

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 393
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 394
    iget-object v6, p0, Lo/ӱ;->Au:Ljava/util/HashMap;

    monitor-enter v6

    .line 395
    :try_start_0
    iget-object v0, p0, Lo/ӱ;->Au:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v8, v0

    .line 396
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    goto :goto_0

    .line 398
    :cond_0
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v9

    monitor-exit v6

    throw v9

    .line 399
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    if-eqz v0, :cond_3

    .line 400
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 401
    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    if-eqz v0, :cond_2

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-long v1, p2, p4

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 404
    :cond_2
    const-string v0, "Range"

    invoke-virtual {v5, v0, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :cond_3
    const-string v0, "User-Agent"

    iget-object v1, p0, Lo/ӱ;->As:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    if-nez p6, :cond_4

    .line 408
    const-string v0, "Accept-Encoding"

    const-string v1, "identity"

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_4
    :try_start_1
    sget-object v0, Lo/ӱ;->AA:Ljava/net/CookieManager;

    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/CookieManager;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    .line 413
    const-string v0, "Cookie"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 414
    const-string v0, "Cookie"

    const-string v1, "Cookie"

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 418
    :cond_5
    goto :goto_2

    .line 416
    :catch_0
    move-exception v6

    .line 417
    const-string v0, "HttpDataSource"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 419
    :goto_2
    return-object v5
.end method

.method private static ˊ(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 5

    .line 431
    if-nez p1, :cond_0

    .line 432
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Null location redirect"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 437
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    .line 438
    const-string v0, "https"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 439
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported protocol redirect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_1
    return-object v3
.end method

.method private static ˋ(Ljava/net/HttpURLConnection;)J
    .locals 11

    .line 458
    const-wide/16 v4, -0x1

    .line 459
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 460
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    :try_start_0
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    move-wide v4, v0

    .line 465
    goto :goto_0

    .line 463
    :catch_0
    move-exception v7

    .line 464
    const-string v0, "HttpDataSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Content-Length ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_0
    :goto_0
    const-string v0, "Content-Range"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 468
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 469
    sget-object v0, Lo/ӱ;->An:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 470
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 472
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long v9, v0, v2

    .line 474
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gez v0, :cond_1

    .line 477
    move-wide v4, v9

    goto :goto_1

    .line 478
    :cond_1
    cmp-long v0, v4, v9

    if-eqz v0, :cond_2

    .line 483
    const-string v0, "HttpDataSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistent headers ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    move-wide v4, v0

    .line 489
    :cond_2
    :goto_1
    goto :goto_2

    .line 487
    :catch_1
    move-exception v9

    .line 488
    const-string v0, "HttpDataSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Content-Range ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_3
    :goto_2
    return-wide v4
.end method

.method private ˋ(Lo/к;)Ljava/net/HttpURLConnection;
    .locals 19

    .line 334
    new-instance v7, Ljava/net/URL;

    move-object/from16 v0, p1

    iget-object v0, v0, Lo/к;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 335
    move-object/from16 v0, p1

    iget-wide v8, v0, Lo/к;->tU:J

    .line 336
    move-object/from16 v0, p1

    iget-wide v10, v0, Lo/к;->length:J

    .line 337
    move-object/from16 v0, p1

    iget v0, v0, Lo/к;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    .line 339
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/ӱ;->Ap:Z

    if-nez v0, :cond_1

    .line 342
    move-object/from16 v0, p0

    move-object v1, v7

    move-wide v2, v8

    move-wide v4, v10

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lo/ӱ;->ˊ(Ljava/net/URL;JJZ)Ljava/net/HttpURLConnection;

    move-result-object v13

    .line 343
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->connect()V

    .line 344
    return-object v13

    .line 348
    :cond_1
    const/4 v13, 0x0

    .line 349
    :goto_1
    move v0, v13

    add-int/lit8 v13, v13, 0x1

    const/16 v1, 0x14

    if-gt v0, v1, :cond_4

    .line 350
    move-object/from16 v0, p0

    move-object v1, v7

    move-wide v2, v8

    move-wide v4, v10

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lo/ӱ;->ˊ(Ljava/net/URL;JJZ)Ljava/net/HttpURLConnection;

    move-result-object v14

    .line 351
    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 352
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->connect()V

    .line 353
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    .line 354
    const/16 v0, 0x12c

    if-eq v15, v0, :cond_2

    const/16 v0, 0x12d

    if-eq v15, v0, :cond_2

    const/16 v0, 0x12e

    if-eq v15, v0, :cond_2

    const/16 v0, 0x12f

    if-eq v15, v0, :cond_2

    const/16 v0, 0x133

    if-eq v15, v0, :cond_2

    const/16 v0, 0x134

    if-ne v15, v0, :cond_3

    .line 360
    :cond_2
    const-string v0, "Location"

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 361
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v17

    .line 362
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 363
    move-object/from16 v0, v16

    invoke-static {v7, v0}, Lo/ӱ;->ˊ(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v7

    .line 366
    :try_start_0
    sget-object v0, Lo/ӱ;->AA:Ljava/net/CookieManager;

    invoke-virtual {v7}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    goto :goto_2

    .line 367
    :catch_0
    move-exception v18

    .line 368
    const-string v0, "HttpDataSource"

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    invoke-virtual/range {v18 .. v18}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 371
    :goto_2
    goto :goto_3

    .line 372
    :cond_3
    return-object v14

    .line 374
    :goto_3
    goto/16 :goto_1

    .line 377
    :cond_4
    new-instance v0, Ljava/net/NoRouteToHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many redirects: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 269
    :try_start_0
    iget-object v0, p0, Lo/ӱ;->zT:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lo/ӱ;->Av:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Lo/ӱ;->Ŷ()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lo/ผ;->ˊ(Ljava/net/HttpURLConnection;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :try_start_1
    iget-object v0, p0, Lo/ӱ;->zT:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    goto :goto_0

    .line 273
    :catch_0
    move-exception v3

    .line 274
    :try_start_2
    new-instance v0, Lo/չ$if;

    iget-object v1, p0, Lo/ӱ;->tE:Lo/к;

    invoke-direct {v0, v3, v1}, Lo/չ$if;-><init>(Ljava/io/IOException;Lo/к;)V

    throw v0

    .line 276
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ӱ;->zT:Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 279
    :cond_0
    iget-boolean v0, p0, Lo/ӱ;->zU:Z

    if-eqz v0, :cond_4

    .line 280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ӱ;->zU:Z

    .line 281
    iget-object v0, p0, Lo/ӱ;->zR:Lo/ף;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lo/ӱ;->zR:Lo/ף;

    invoke-interface {v0}, Lo/ף;->č()V

    .line 284
    :cond_1
    invoke-direct {p0}, Lo/ӱ;->closeConnection()V

    goto :goto_1

    .line 279
    :catchall_0
    move-exception v4

    iget-boolean v0, p0, Lo/ӱ;->zU:Z

    if-eqz v0, :cond_3

    .line 280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ӱ;->zU:Z

    .line 281
    iget-object v0, p0, Lo/ӱ;->zR:Lo/ף;

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lo/ӱ;->zR:Lo/ף;

    invoke-interface {v0}, Lo/ף;->č()V

    .line 284
    :cond_2
    invoke-direct {p0}, Lo/ӱ;->closeConnection()V

    :cond_3
    throw v4

    .line 287
    :cond_4
    :goto_1
    return-void
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lo/ӱ;->Av:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/ӱ;->Av:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public read([BII)I
    .locals 3

    .line 259
    :try_start_0
    invoke-direct {p0}, Lo/ӱ;->ż()V

    .line 260
    invoke-direct {p0, p1, p2, p3}, Lo/ӱ;->ʽ([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 261
    :catch_0
    move-exception v2

    .line 262
    new-instance v0, Lo/չ$if;

    iget-object v1, p0, Lo/ӱ;->tE:Lo/к;

    invoke-direct {v0, v2, v1}, Lo/չ$if;-><init>(Ljava/io/IOException;Lo/к;)V

    throw v0
.end method

.method protected final Ŷ()J
    .locals 4

    .line 327
    iget-wide v0, p0, Lo/ӱ;->Ax:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lo/ӱ;->Ax:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lo/ӱ;->Ax:J

    iget-wide v2, p0, Lo/ӱ;->Az:J

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public ˊ(Lo/к;)J
    .locals 8

    .line 189
    iput-object p1, p0, Lo/ӱ;->tE:Lo/к;

    .line 190
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/ӱ;->Az:J

    .line 191
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/ӱ;->Ay:J

    .line 193
    :try_start_0
    invoke-direct {p0, p1}, Lo/ӱ;->ˋ(Lo/к;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lo/ӱ;->Av:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    goto :goto_0

    .line 194
    :catch_0
    move-exception v4

    .line 195
    new-instance v0, Lo/չ$if;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to connect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lo/к;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4, p1}, Lo/չ$if;-><init>(Ljava/lang/String;Ljava/io/IOException;Lo/к;)V

    throw v0

    .line 201
    :goto_0
    :try_start_1
    iget-object v0, p0, Lo/ӱ;->Av:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 206
    goto :goto_1

    .line 202
    :catch_1
    move-exception v5

    .line 203
    invoke-direct {p0}, Lo/ӱ;->closeConnection()V

    .line 204
    new-instance v0, Lo/չ$if;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to connect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lo/к;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5, p1}, Lo/չ$if;-><init>(Ljava/lang/String;Ljava/io/IOException;Lo/к;)V

    throw v0

    .line 209
    :goto_1
    const/16 v0, 0xc8

    if-lt v4, v0, :cond_0

    const/16 v0, 0x12b

    if-le v4, v0, :cond_1

    .line 210
    :cond_0
    iget-object v0, p0, Lo/ӱ;->Av:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    .line 211
    invoke-direct {p0}, Lo/ӱ;->closeConnection()V

    .line 212
    new-instance v0, Lo/չ$ˋ;

    invoke-direct {v0, v4, v5, p1}, Lo/չ$ˋ;-><init>(ILjava/util/Map;Lo/к;)V

    throw v0

    .line 216
    :cond_1
    iget-object v0, p0, Lo/ӱ;->Av:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v5

    .line 217
    iget-object v0, p0, Lo/ӱ;->At:Lo/র;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/ӱ;->At:Lo/র;

    invoke-interface {v0, v5}, Lo/র;->יִ(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 218
    invoke-direct {p0}, Lo/ӱ;->closeConnection()V

    .line 219
    new-instance v0, Lo/չ$ˊ;

    invoke-direct {v0, v5, p1}, Lo/չ$ˊ;-><init>(Ljava/lang/String;Lo/к;)V

    throw v0

    .line 225
    :cond_2
    const/16 v0, 0xc8

    if-ne v4, v0, :cond_3

    iget-wide v0, p1, Lo/к;->tU:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p1, Lo/к;->tU:J

    goto :goto_2

    :cond_3
    const-wide/16 v0, 0x0

    :goto_2
    iput-wide v0, p0, Lo/ӱ;->Aw:J

    .line 228
    iget v0, p1, Lo/к;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_6

    .line 229
    iget-object v0, p0, Lo/ӱ;->Av:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lo/ӱ;->ˋ(Ljava/net/HttpURLConnection;)J

    move-result-wide v6

    .line 230
    iget-wide v0, p1, Lo/к;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    iget-wide v0, p1, Lo/к;->length:J

    goto :goto_3

    :cond_4
    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lo/ӱ;->Aw:J

    sub-long v0, v6, v0

    goto :goto_3

    :cond_5
    const-wide/16 v0, -0x1

    :goto_3
    iput-wide v0, p0, Lo/ӱ;->Ax:J

    .line 233
    goto :goto_4

    .line 238
    :cond_6
    iget-wide v0, p1, Lo/к;->length:J

    iput-wide v0, p0, Lo/ӱ;->Ax:J

    .line 242
    :goto_4
    :try_start_2
    iget-object v0, p0, Lo/ӱ;->Av:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lo/ӱ;->zT:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 246
    goto :goto_5

    .line 243
    :catch_2
    move-exception v6

    .line 244
    invoke-direct {p0}, Lo/ӱ;->closeConnection()V

    .line 245
    new-instance v0, Lo/չ$if;

    invoke-direct {v0, v6, p1}, Lo/չ$if;-><init>(Ljava/io/IOException;Lo/к;)V

    throw v0

    .line 248
    :goto_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ӱ;->zU:Z

    .line 249
    iget-object v0, p0, Lo/ӱ;->zR:Lo/ף;

    if-eqz v0, :cond_7

    .line 250
    iget-object v0, p0, Lo/ӱ;->zR:Lo/ף;

    invoke-interface {v0}, Lo/ף;->ĉ()V

    .line 253
    :cond_7
    iget-wide v0, p0, Lo/ӱ;->Ax:J

    return-wide v0
.end method
