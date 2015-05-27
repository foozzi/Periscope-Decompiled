.class Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02ca"
.end annotation


# instance fields
.field private final kp:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;->kp:Ljava/io/InputStream;

    .line 331
    return-void
.end method


# virtual methods
.method public read([B)I
    .locals 4

    .line 368
    array-length v2, p1

    .line 370
    :goto_0
    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;->kp:Ljava/io/InputStream;

    array-length v1, p1

    sub-int/2addr v1, v2

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    move v3, v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 371
    sub-int/2addr v2, v3

    goto :goto_0

    .line 373
    :cond_0
    array-length v0, p1

    sub-int/2addr v0, v2

    return v0
.end method

.method public skip(J)J
    .locals 7

    .line 342
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 343
    const-wide/16 v0, 0x0

    return-wide v0

    .line 346
    :cond_0
    move-wide v2, p1

    .line 347
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_3

    .line 348
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;->kp:Ljava/io/InputStream;

    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    .line 349
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_1

    .line 350
    sub-long/2addr v2, v4

    goto :goto_1

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;->kp:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 357
    const/4 v0, -0x1

    if-ne v6, v0, :cond_2

    .line 358
    goto :goto_2

    .line 360
    :cond_2
    const-wide/16 v0, 0x1

    sub-long/2addr v2, v0

    .line 363
    :goto_1
    goto :goto_0

    .line 364
    :cond_3
    :goto_2
    sub-long v0, p1, v2

    return-wide v0
.end method

.method public ĸ()I
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;->kp:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;->kp:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public Ĺ()S
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;->kp:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public Ļ()I
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;->kp:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method
