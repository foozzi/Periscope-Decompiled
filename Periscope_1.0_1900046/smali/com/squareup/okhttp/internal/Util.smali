.class public final Lcom/squareup/okhttp/internal/Util;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/squareup/okhttp/internal/Util;->EMPTY_BYTE_ARRAY:[B

    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/squareup/okhttp/internal/Util;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 49
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static checkOffsetAndCount(JJJ)V
    .locals 4

    .line 73
    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    sub-long v0, p0, p2

    cmp-long v0, v0, p4

    if-gez v0, :cond_1

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 76
    :cond_1
    return-void
.end method

.method public static closeAll(Ljava/io/Closeable;Ljava/io/Closeable;)V
    .locals 3

    .line 133
    const/4 v1, 0x0

    .line 135
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    goto :goto_0

    .line 136
    :catch_0
    move-exception v2

    .line 137
    move-object v1, v2

    .line 140
    :goto_0
    :try_start_1
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 143
    goto :goto_1

    .line 141
    :catch_1
    move-exception v2

    .line 142
    if-nez v1, :cond_0

    move-object v1, v2

    .line 144
    :cond_0
    :goto_1
    if-nez v1, :cond_1

    return-void

    .line 145
    :cond_1
    instance-of v0, v1, Ljava/io/IOException;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 146
    :cond_2
    instance-of v0, v1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 147
    :cond_3
    instance-of v0, v1, Ljava/lang/Error;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 148
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1

    .line 88
    if-eqz p0, :cond_0

    .line 90
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    throw v0

    .line 93
    :catch_1
    move-exception v0

    .line 96
    :cond_0
    :goto_0
    return-void
.end method

.method public static closeQuietly(Ljava/net/ServerSocket;)V
    .locals 1

    .line 118
    if-eqz p0, :cond_0

    .line 120
    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 124
    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    throw v0

    .line 123
    :catch_1
    move-exception v0

    .line 126
    :cond_0
    :goto_0
    return-void
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .locals 1

    .line 103
    if-eqz p0, :cond_0

    .line 105
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    throw v0

    .line 108
    :catch_1
    move-exception v0

    .line 111
    :cond_0
    :goto_0
    return-void
.end method

.method public static discard(Lo/va;ILjava/util/concurrent/TimeUnit;)Z
    .locals 2

    .line 158
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/squareup/okhttp/internal/Util;->skipAll(Lo/va;ILjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 159
    :catch_0
    move-exception v1

    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 80
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getDefaultPort(Ljava/lang/String;)I
    .locals 1

    .line 67
    const-string v0, "http"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x50

    return v0

    .line 68
    :cond_0
    const-string v0, "https"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1bb

    return v0

    .line 69
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static getEffectivePort(Ljava/lang/String;I)I
    .locals 1

    .line 63
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/squareup/okhttp/internal/Util;->getDefaultPort(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static getEffectivePort(Ljava/net/URI;)I
    .locals 2

    .line 55
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URI;->getPort()I

    move-result v1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/Util;->getEffectivePort(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getEffectivePort(Ljava/net/URL;)I
    .locals 2

    .line 59
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/Util;->getEffectivePort(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static immutableList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Ljava/util/List<TT;>;)Ljava/util/List<TT;>;"
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs immutableList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>([TT;)Ljava/util/List<TT;>;"
        }
    .end annotation

    .line 231
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static immutableMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:Ljava/lang/Object;V:Ljava/lang/Object;>(Ljava/util/Map<TK;TV;>;)Ljava/util/Map<TK;TV;>;"
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static intersect([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>([TT;[TT;)Ljava/util/List<TT;>;"
        }
    .end annotation

    .line 264
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 265
    move-object v2, p0

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 266
    move-object v6, p1

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    .line 267
    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    goto :goto_2

    .line 266
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 265
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 273
    :cond_2
    return-object v1
.end method

.method public static intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;[TT;[TT;)[TT;"
        }
    .end annotation

    .line 255
    invoke-static {p1, p2}, Lcom/squareup/okhttp/internal/Util;->intersect([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 256
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static md5Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 194
    const-string v0, "MD5"

    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 195
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 196
    invoke-static {v2}, Lo/uj;->ᐨ([B)Lo/uj;

    move-result-object v0

    invoke-virtual {v0}, Lo/uj;->el()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 197
    :catch_0
    move-exception v1

    .line 198
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static sha1(Lo/uj;)Lo/uj;
    .locals 3

    .line 216
    const-string v0, "SHA-1"

    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 217
    invoke-virtual {p0}, Lo/uj;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 218
    invoke-static {v2}, Lo/uj;->ᐨ([B)Lo/uj;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 219
    :catch_0
    move-exception v1

    .line 220
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static shaBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 205
    const-string v0, "SHA-1"

    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 206
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 207
    invoke-static {v2}, Lo/uj;->ᐨ([B)Lo/uj;

    move-result-object v0

    invoke-virtual {v0}, Lo/uj;->ej()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 208
    :catch_0
    move-exception v1

    .line 209
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static skipAll(Lo/va;ILjava/util/concurrent/TimeUnit;)Z
    .locals 11

    .line 169
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 170
    invoke-interface {p0}, Lo/va;->timeout()Lo/vb;

    move-result-object v0

    invoke-virtual {v0}, Lo/vb;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-interface {p0}, Lo/va;->timeout()Lo/vb;

    move-result-object v0

    invoke-virtual {v0}, Lo/vb;->deadlineNanoTime()J

    move-result-wide v0

    sub-long v6, v0, v4

    goto :goto_0

    :cond_0
    const-wide v6, 0x7fffffffffffffffL

    .line 173
    :goto_0
    invoke-interface {p0}, Lo/va;->timeout()Lo/vb;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {p2, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    add-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lo/vb;->deadlineNanoTime(J)Lo/vb;

    .line 175
    :try_start_0
    new-instance v8, Lo/ue;

    invoke-direct {v8}, Lo/ue;-><init>()V

    .line 176
    :goto_1
    const-wide/16 v0, 0x800

    invoke-interface {p0, v8, v0, v1}, Lo/va;->read(Lo/ue;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {v8}, Lo/ue;->clear()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 179
    :cond_1
    const/4 v9, 0x1

    .line 183
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v6, v0

    if-nez v0, :cond_2

    .line 184
    invoke-interface {p0}, Lo/va;->timeout()Lo/vb;

    move-result-object v0

    invoke-virtual {v0}, Lo/vb;->clearDeadline()Lo/vb;

    goto :goto_2

    .line 186
    :cond_2
    invoke-interface {p0}, Lo/va;->timeout()Lo/vb;

    move-result-object v0

    add-long v1, v4, v6

    invoke-virtual {v0, v1, v2}, Lo/vb;->deadlineNanoTime(J)Lo/vb;

    :goto_2
    return v9

    .line 180
    :catch_0
    move-exception v8

    .line 181
    const/4 v9, 0x0

    .line 183
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v6, v0

    if-nez v0, :cond_3

    .line 184
    invoke-interface {p0}, Lo/va;->timeout()Lo/vb;

    move-result-object v0

    invoke-virtual {v0}, Lo/vb;->clearDeadline()Lo/vb;

    goto :goto_3

    .line 186
    :cond_3
    invoke-interface {p0}, Lo/va;->timeout()Lo/vb;

    move-result-object v0

    add-long v1, v4, v6

    invoke-virtual {v0, v1, v2}, Lo/vb;->deadlineNanoTime(J)Lo/vb;

    :goto_3
    return v9

    .line 183
    :catchall_0
    move-exception v10

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v6, v0

    if-nez v0, :cond_4

    .line 184
    invoke-interface {p0}, Lo/va;->timeout()Lo/vb;

    move-result-object v0

    invoke-virtual {v0}, Lo/vb;->clearDeadline()Lo/vb;

    goto :goto_4

    .line 186
    :cond_4
    invoke-interface {p0}, Lo/va;->timeout()Lo/vb;

    move-result-object v0

    add-long v1, v4, v6

    invoke-virtual {v0, v1, v2}, Lo/vb;->deadlineNanoTime(J)Lo/vb;

    :goto_4
    throw v10
.end method

.method public static threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 240
    new-instance v0, Lcom/squareup/okhttp/internal/Util$1;

    invoke-direct {v0, p0, p1}, Lcom/squareup/okhttp/internal/Util$1;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method
