.class public final Lo/ผ;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final BA:Ljava/util/regex/Pattern;

.field private static final BB:Ljava/util/regex/Pattern;

.field public static final SDK_INT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lo/ผ;->SDK_INT:I

    .line 62
    const-string v0, "(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)(\\.(\\d+))?([Zz]|((\\+|\\-)(\\d\\d):(\\d\\d)))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/ผ;->BA:Ljava/util/regex/Pattern;

    .line 67
    const-string v0, "^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/ผ;->BB:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static ʻ(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 93
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static ʽ(Ljava/util/List;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Ljava/lang/Integer;>;)[I"
        }
    .end annotation

    .line 455
    if-nez p0, :cond_0

    .line 456
    const/4 v0, 0x0

    return-object v0

    .line 458
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 459
    new-array v2, v1, [I

    .line 460
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 461
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v3

    .line 460
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 463
    :cond_1
    return-object v2
.end method

.method public static ˊ(Ljava/util/List;Ljava/lang/Object;ZZ)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Ljava/util/List<+Ljava/lang/Comparable<-TT;>;>;TT;ZZ)I"
        }
    .end annotation

    .line 260
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 261
    if-gez v1, :cond_0

    add-int/lit8 v0, v1, 0x2

    neg-int v0, v0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, -0x1

    :goto_0
    move v1, v0

    .line 262
    if-eqz p3, :cond_2

    const/4 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method public static ˊ([JJZZ)I
    .locals 2

    .line 218
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    .line 219
    if-gez v1, :cond_0

    add-int/lit8 v0, v1, 0x2

    neg-int v0, v0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, -0x1

    :goto_0
    move v1, v0

    .line 220
    if-eqz p4, :cond_2

    const/4 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method public static ˊ(JJJ)J
    .locals 6

    .line 381
    cmp-long v0, p4, p2

    if-ltz v0, :cond_0

    rem-long v0, p4, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 382
    div-long v4, p4, p2

    .line 383
    div-long v0, p0, v4

    return-wide v0

    .line 384
    :cond_0
    cmp-long v0, p4, p2

    if-gez v0, :cond_1

    rem-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 385
    div-long v4, p2, p4

    .line 386
    mul-long v0, p0, v4

    return-wide v0

    .line 388
    :cond_1
    long-to-double v0, p2

    long-to-double v2, p4

    div-double v4, v0, v2

    .line 389
    long-to-double v0, p0

    mul-double/2addr v0, v4

    double-to-long v0, v0

    return-wide v0
.end method

.method public static ˊ(Lo/к;I)Lo/к;
    .locals 10

    .line 519
    if-nez p1, :cond_0

    .line 520
    return-object p0

    .line 522
    :cond_0
    iget-wide v0, p0, Lo/к;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-wide/16 v8, -0x1

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lo/к;->length:J

    int-to-long v2, p1

    sub-long v8, v0, v2

    .line 524
    :goto_0
    new-instance v0, Lo/к;

    iget-object v1, p0, Lo/к;->uri:Landroid/net/Uri;

    iget-wide v2, p0, Lo/к;->tU:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    iget-object v6, p0, Lo/к;->key:Ljava/lang/String;

    iget v7, p0, Lo/к;->flags:I

    move-wide v4, v8

    invoke-direct/range {v0 .. v7}, Lo/к;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    return-object v0
.end method

.method public static ˊ(Ljava/net/HttpURLConnection;J)V
    .locals 6

    .line 478
    sget v0, Lo/ผ;->SDK_INT:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    sget v0, Lo/ผ;->SDK_INT:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    .line 479
    return-void

    .line 483
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 484
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 486
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 487
    return-void

    .line 489
    :cond_1
    const-wide/16 v0, 0x800

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2

    .line 492
    return-void

    .line 494
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 495
    const-string v0, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 498
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 499
    const-string v0, "unexpectedEndOfInput"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 500
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 501
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v5, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 507
    :cond_4
    goto :goto_0

    .line 503
    :catch_0
    move-exception v2

    .line 507
    goto :goto_0

    .line 505
    :catch_1
    move-exception v2

    .line 508
    :goto_0
    return-void
.end method

.method public static ˊ([JJJ)V
    .locals 7

    .line 430
    cmp-long v0, p3, p1

    if-ltz v0, :cond_1

    rem-long v0, p3, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 431
    div-long v4, p3, p1

    .line 432
    const/4 v6, 0x0

    :goto_0
    array-length v0, p0

    if-ge v6, v0, :cond_0

    .line 433
    aget-wide v0, p0, v6

    div-long/2addr v0, v4

    aput-wide v0, p0, v6

    .line 432
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 435
    :cond_0
    goto :goto_3

    :cond_1
    cmp-long v0, p3, p1

    if-gez v0, :cond_3

    rem-long v0, p1, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 436
    div-long v4, p1, p3

    .line 437
    const/4 v6, 0x0

    :goto_1
    array-length v0, p0

    if-ge v6, v0, :cond_2

    .line 438
    aget-wide v0, p0, v6

    mul-long/2addr v0, v4

    aput-wide v0, p0, v6

    .line 437
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 440
    :cond_2
    goto :goto_3

    .line 441
    :cond_3
    long-to-double v0, p1

    long-to-double v2, p3

    div-double v4, v0, v2

    .line 442
    const/4 v6, 0x0

    :goto_2
    array-length v0, p0

    if-ge v6, v0, :cond_4

    .line 443
    aget-wide v0, p0, v6

    long-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-long v0, v0

    aput-wide v0, p0, v6

    .line 442
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 446
    :cond_4
    :goto_3
    return-void
.end method

.method public static ˊ([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 107
    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_1

    .line 108
    aget-object v0, p0, v1

    invoke-static {v0, p1}, Lo/ผ;->ʻ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x1

    return v0

    .line 107
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static ˋ([JJZZ)I
    .locals 3

    .line 239
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    .line 240
    if-gez v2, :cond_0

    xor-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    :goto_0
    move v2, v0

    .line 241
    if-eqz p4, :cond_2

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    return v0
.end method

.method public static Ꭵ(II)I
    .locals 2

    .line 189
    add-int v0, p0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    return v0
.end method

.method public static ᐣ(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 122
    new-instance v0, Lo/ภ;

    invoke-direct {v0, p0}, Lo/ภ;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static ᐩ(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 178
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static ᑊ(Ljava/lang/String;)I
    .locals 4

    .line 534
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 535
    const/4 v0, 0x4

    if-gt v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ړ;->יּ(Z)V

    .line 536
    const/4 v2, 0x0

    .line 537
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    .line 538
    shl-int/lit8 v2, v2, 0x8

    .line 539
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    or-int/2addr v2, v0

    .line 537
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 541
    :cond_1
    return v2
.end method
