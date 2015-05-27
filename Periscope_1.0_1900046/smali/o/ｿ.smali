.class public Lo/ｿ;
.super Ljava/io/FilterInputStream;
.source ""


# instance fields
.field private nh:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 17
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 14
    const/high16 v0, -0x80000000

    iput v0, p0, Lo/ｿ;->nh:I

    .line 18
    return-void
.end method

.method private ˏ(J)J
    .locals 2

    .line 73
    iget v0, p0, Lo/ｿ;->nh:I

    if-nez v0, :cond_0

    .line 74
    const-wide/16 v0, -0x1

    return-wide v0

    .line 75
    :cond_0
    iget v0, p0, Lo/ｿ;->nh:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    iget v0, p0, Lo/ｿ;->nh:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 76
    iget v0, p0, Lo/ｿ;->nh:I

    int-to-long v0, v0

    return-wide v0

    .line 78
    :cond_1
    return-wide p1
.end method

.method private ᐝ(J)V
    .locals 2

    .line 83
    iget v0, p0, Lo/ｿ;->nh:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 84
    iget v0, p0, Lo/ｿ;->nh:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lo/ｿ;->nh:I

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 69
    iget v0, p0, Lo/ｿ;->nh:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lo/ｿ;->nh:I

    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public mark(I)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    .line 23
    iput p1, p0, Lo/ｿ;->nh:I

    .line 24
    return-void
.end method

.method public read()I
    .locals 5

    .line 28
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Lo/ｿ;->ˏ(J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 29
    const/4 v0, -0x1

    return v0

    .line 32
    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v4

    .line 33
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Lo/ｿ;->ᐝ(J)V

    .line 34
    return v4
.end method

.method public read([BII)I
    .locals 4

    .line 39
    int-to-long v0, p3

    invoke-direct {p0, v0, v1}, Lo/ｿ;->ˏ(J)J

    move-result-wide v0

    long-to-int v2, v0

    .line 40
    const/4 v0, -0x1

    if-ne v2, v0, :cond_0

    .line 41
    const/4 v0, -0x1

    return v0

    .line 44
    :cond_0
    invoke-super {p0, p1, p2, v2}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v3

    .line 45
    int-to-long v0, v3

    invoke-direct {p0, v0, v1}, Lo/ｿ;->ᐝ(J)V

    .line 46
    return v3
.end method

.method public reset()V
    .locals 1

    .line 51
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    .line 52
    const/high16 v0, -0x80000000

    iput v0, p0, Lo/ｿ;->nh:I

    .line 53
    return-void
.end method

.method public skip(J)J
    .locals 6

    .line 57
    invoke-direct {p0, p1, p2}, Lo/ｿ;->ˏ(J)J

    move-result-wide v2

    .line 58
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 59
    const-wide/16 v0, -0x1

    return-wide v0

    .line 62
    :cond_0
    invoke-super {p0, v2, v3}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v4

    .line 63
    invoke-direct {p0, v4, v5}, Lo/ｿ;->ᐝ(J)V

    .line 64
    return-wide v4
.end method
