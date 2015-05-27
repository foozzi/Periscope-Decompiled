.class Lo/yq$ˊ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/yq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02ca"
.end annotation


# instance fields
.field private bqO:[B

.field private bqP:I

.field private bqQ:J


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lo/yq$ˊ;->bqO:[B

    .line 539
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 562
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lo/yq$ˊ;->bqO:[B

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 563
    iget-object v0, p0, Lo/yq$ˊ;->bqO:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v2

    .line 562
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 565
    :cond_0
    return-void
.end method

.method public uC()J
    .locals 2

    .line 552
    iget-wide v0, p0, Lo/yq$ˊ;->bqQ:J

    return-wide v0
.end method

.method public ˊ(Landroid/media/AudioRecord;J)I
    .locals 3

    .line 542
    iget-object v0, p0, Lo/yq$ˊ;->bqO:[B

    iget-object v1, p0, Lo/yq$ˊ;->bqO:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    iput v0, p0, Lo/yq$ˊ;->bqP:I

    .line 543
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lo/yq$ˊ;->bqQ:J

    .line 544
    iget v0, p0, Lo/yq$ˊ;->bqP:I

    return v0
.end method

.method public ˊ(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 556
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 557
    iget-object v0, p0, Lo/yq$ˊ;->bqO:[B

    iget v1, p0, Lo/yq$ˊ;->bqP:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 558
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 559
    return-void
.end method
