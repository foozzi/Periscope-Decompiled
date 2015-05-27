.class final Lo/ŧ;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final np:Lo/ŧ;


# instance fields
.field private final bytes:[B

.field private volatile nq:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 85
    new-instance v0, Lo/ŧ;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lo/ŧ;-><init>([B)V

    sput-object v0, Lo/ŧ;->np:Lo/ŧ;

    return-void
.end method

.method private constructor <init>([B)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    const/4 v0, 0x0

    iput v0, p0, Lo/ŧ;->nq:I

    .line 53
    iput-object p1, p0, Lo/ŧ;->bytes:[B

    .line 54
    return-void
.end method

.method public static ˈ(Ljava/lang/String;)Lo/ŧ;
    .locals 3

    .line 137
    :try_start_0
    new-instance v0, Lo/ŧ;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ŧ;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 138
    :catch_0
    move-exception v2

    .line 139
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 not supported."

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static ˋ([BII)Lo/ŧ;
    .locals 2

    .line 92
    new-array v1, p2, [B

    .line 93
    const/4 v0, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    new-instance v0, Lo/ŧ;

    invoke-direct {v0, v1}, Lo/ŧ;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 254
    if-ne p1, p0, :cond_0

    .line 255
    const/4 v0, 0x1

    return v0

    .line 258
    :cond_0
    instance-of v0, p1, Lo/ŧ;

    if-nez v0, :cond_1

    .line 259
    const/4 v0, 0x0

    return v0

    .line 262
    :cond_1
    move-object v0, p1

    check-cast v0, Lo/ŧ;

    move-object v2, v0

    .line 263
    iget-object v0, p0, Lo/ŧ;->bytes:[B

    array-length v3, v0

    .line 264
    iget-object v0, v2, Lo/ŧ;->bytes:[B

    array-length v0, v0

    if-eq v3, v0, :cond_2

    .line 265
    const/4 v0, 0x0

    return v0

    .line 268
    :cond_2
    iget-object v4, p0, Lo/ŧ;->bytes:[B

    .line 269
    iget-object v5, v2, Lo/ŧ;->bytes:[B

    .line 270
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_4

    .line 271
    aget-byte v0, v4, v6

    aget-byte v1, v5, v6

    if-eq v0, v1, :cond_3

    .line 272
    const/4 v0, 0x0

    return v0

    .line 270
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 276
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 283
    iget v2, p0, Lo/ŧ;->nq:I

    .line 285
    if-nez v2, :cond_2

    .line 286
    iget-object v3, p0, Lo/ŧ;->bytes:[B

    .line 287
    iget-object v0, p0, Lo/ŧ;->bytes:[B

    array-length v4, v0

    .line 289
    move v2, v4

    .line 290
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    .line 291
    mul-int/lit8 v0, v2, 0x1f

    aget-byte v1, v3, v5

    add-int v2, v0, v1

    .line 290
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 293
    :cond_0
    if-nez v2, :cond_1

    .line 294
    const/4 v2, 0x1

    .line 297
    :cond_1
    iput v2, p0, Lo/ŧ;->nq:I

    .line 300
    :cond_2
    return v2
.end method

.method public size()I
    .locals 1

    .line 69
    iget-object v0, p0, Lo/ŧ;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public ˊ([BIII)V
    .locals 1

    .line 195
    iget-object v0, p0, Lo/ŧ;->bytes:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    return-void
.end method

.method public ﮊ()Ljava/io/InputStream;
    .locals 2

    .line 310
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lo/ŧ;->bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method
