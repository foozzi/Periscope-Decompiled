.class public Lo/akz;
.super Ljava/lang/Object;
.source ""


# instance fields
.field bKG:Lo/aky;

.field public buffer:[B

.field public length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lo/akz;->buffer:[B

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lo/akz;->length:I

    .line 14
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lo/akz;->buffer:[B

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lo/akz;->length:I

    .line 18
    iput-object p1, p0, Lo/akz;->buffer:[B

    .line 19
    array-length v0, p1

    iput v0, p0, Lo/akz;->length:I

    .line 20
    return-void
.end method


# virtual methods
.method public declared-synchronized Bo()Lo/aky;
    .locals 2

    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lo/akz;->bKG:Lo/aky;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public ˉ(B)V
    .locals 2

    .line 55
    iget v0, p0, Lo/akz;->length:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lo/akz;->ᔀ(I)V

    .line 56
    iget-object v0, p0, Lo/akz;->buffer:[B

    iget v1, p0, Lo/akz;->length:I

    aput-byte p1, v0, v1

    .line 57
    iget v0, p0, Lo/akz;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/akz;->length:I

    .line 58
    return-void
.end method

.method public declared-synchronized ˊ(Lo/aky;)V
    .locals 0

    monitor-enter p0

    .line 63
    :try_start_0
    iput-object p1, p0, Lo/akz;->bKG:Lo/aky;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public ᔀ(I)V
    .locals 7

    .line 24
    iget-object v0, p0, Lo/akz;->buffer:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/akz;->buffer:[B

    array-length v0, v0

    if-ge v0, p1, :cond_3

    .line 26
    :cond_0
    const/16 v4, 0x1064

    .line 27
    const/16 v0, 0x800

    if-gt p1, v0, :cond_1

    .line 29
    const/16 v4, 0x20

    .line 31
    :cond_1
    add-int v0, p1, v4

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v4

    mul-int v5, v0, v4

    .line 32
    new-array v6, v5, [B

    .line 33
    iget v0, p0, Lo/akz;->length:I

    if-lez v0, :cond_2

    .line 35
    iget-object v0, p0, Lo/akz;->buffer:[B

    iget v1, p0, Lo/akz;->length:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v6, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    :cond_2
    iput-object v6, p0, Lo/akz;->buffer:[B

    .line 39
    :cond_3
    return-void
.end method

.method public ᴶ([BI)V
    .locals 1

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lo/akz;->ᵣ([BII)V

    .line 44
    return-void
.end method

.method public ᵣ([BII)V
    .locals 2

    .line 48
    iget v0, p0, Lo/akz;->length:I

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Lo/akz;->ᔀ(I)V

    .line 49
    iget-object v0, p0, Lo/akz;->buffer:[B

    iget v1, p0, Lo/akz;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    iget v0, p0, Lo/akz;->length:I

    add-int/2addr v0, p3

    iput v0, p0, Lo/akz;->length:I

    .line 51
    return-void
.end method
