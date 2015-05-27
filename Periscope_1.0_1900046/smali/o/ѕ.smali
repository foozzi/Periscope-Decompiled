.class public final Lo/ѕ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ʎ;


# instance fields
.field private Aa:I

.field private Ab:[Lo/ɢ;

.field private final zY:I

.field private zZ:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ړ;->יּ(Z)V

    .line 43
    iput p1, p0, Lo/ѕ;->zY:I

    .line 44
    const/16 v0, 0x64

    new-array v0, v0, [Lo/ɢ;

    iput-object v0, p0, Lo/ѕ;->Ab:[Lo/ɢ;

    .line 45
    return-void
.end method


# virtual methods
.method public declared-synchronized Ȉ(I)V
    .locals 5

    monitor-enter p0

    .line 69
    :try_start_0
    iget v0, p0, Lo/ѕ;->zY:I

    invoke-static {p1, v0}, Lo/ผ;->Ꭵ(II)I

    move-result v3

    .line 70
    iget v0, p0, Lo/ѕ;->zZ:I

    sub-int v0, v3, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 71
    iget v0, p0, Lo/ѕ;->Aa:I

    if-ge v4, v0, :cond_0

    .line 72
    iget-object v0, p0, Lo/ѕ;->Ab:[Lo/ɢ;

    iget v1, p0, Lo/ѕ;->Aa:I

    const/4 v2, 0x0

    invoke-static {v0, v4, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 73
    iput v4, p0, Lo/ѕ;->Aa:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ȋ(I)V
    .locals 1

    monitor-enter p0

    .line 93
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lo/ѕ;->ｱ()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 96
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ˊ(Lo/ɢ;)V
    .locals 3

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p1, Lo/ɢ;->fw:[B

    array-length v0, v0

    iget v1, p0, Lo/ѕ;->zY:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ړ;->יּ(Z)V

    .line 58
    iget v0, p0, Lo/ѕ;->zZ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/ѕ;->zZ:I

    .line 59
    iget v0, p0, Lo/ѕ;->Aa:I

    iget-object v1, p0, Lo/ѕ;->Ab:[Lo/ɢ;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 60
    iget-object v0, p0, Lo/ѕ;->Ab:[Lo/ɢ;

    iget-object v1, p0, Lo/ѕ;->Ab:[Lo/ɢ;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/ɢ;

    iput-object v0, p0, Lo/ѕ;->Ab:[Lo/ɢ;

    .line 62
    :cond_1
    iget-object v0, p0, Lo/ѕ;->Ab:[Lo/ɢ;

    iget v1, p0, Lo/ѕ;->Aa:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/ѕ;->Aa:I

    aput-object p1, v0, v1

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ｮ()Lo/ɢ;
    .locals 4

    monitor-enter p0

    .line 49
    :try_start_0
    iget v0, p0, Lo/ѕ;->zZ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/ѕ;->zZ:I

    .line 50
    iget v0, p0, Lo/ѕ;->Aa:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lo/ѕ;->Ab:[Lo/ɢ;

    iget v1, p0, Lo/ѕ;->Aa:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lo/ѕ;->Aa:I

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Lo/ɢ;

    iget v1, p0, Lo/ѕ;->zY:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/ɢ;-><init>([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized ｱ()I
    .locals 3

    monitor-enter p0

    .line 79
    :try_start_0
    iget v0, p0, Lo/ѕ;->zZ:I

    iget v1, p0, Lo/ѕ;->zY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public ﾏ()I
    .locals 1

    .line 84
    iget v0, p0, Lo/ѕ;->zY:I

    return v0
.end method
