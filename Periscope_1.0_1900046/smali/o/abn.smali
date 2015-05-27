.class public Lo/abn;
.super Lo/abo;
.source ""


# instance fields
.field private bwF:Landroid/graphics/SurfaceTexture;

.field private volatile bwG:Z

.field private bwH:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/abo;-><init>(Ltv/periscope/android/util/Size;)V

    .line 16
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lo/abn;->bwI:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lo/abn;->bwF:Landroid/graphics/SurfaceTexture;

    .line 17
    return-void
.end method


# virtual methods
.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 59
    iget-object v0, p0, Lo/abn;->bwF:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 39
    iget-object v0, p0, Lo/abn;->bwF:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public vQ()V
    .locals 3

    .line 20
    invoke-super {p0}, Lo/abo;->vQ()V

    .line 21
    iget-object v0, p0, Lo/abn;->bwF:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->releaseTexImage()V

    .line 22
    iget-object v0, p0, Lo/abn;->bwF:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 23
    iget-object v1, p0, Lo/abn;->bwF:Landroid/graphics/SurfaceTexture;

    monitor-enter v1

    .line 24
    :try_start_0
    iget-object v0, p0, Lo/abn;->bwF:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 26
    :goto_0
    return-void
.end method

.method public wt()I
    .locals 3

    .line 53
    iget-object v1, p0, Lo/abn;->bwF:Landroid/graphics/SurfaceTexture;

    monitor-enter v1

    .line 54
    :try_start_0
    iget v0, p0, Lo/abn;->bwH:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 55
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public wu()V
    .locals 3

    .line 63
    iget-object v1, p0, Lo/abn;->bwF:Landroid/graphics/SurfaceTexture;

    monitor-enter v1

    .line 64
    :try_start_0
    iget-object v0, p0, Lo/abn;->bwF:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 66
    :goto_0
    return-void
.end method

.method public wv()Z
    .locals 6

    .line 69
    iget-object v3, p0, Lo/abn;->bwF:Landroid/graphics/SurfaceTexture;

    monitor-enter v3

    .line 70
    :try_start_0
    iget-boolean v0, p0, Lo/abn;->bwG:Z

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/abn;->bwG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit v3

    const/4 v0, 0x1

    return v0

    .line 75
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/abn;->bwF:Landroid/graphics/SurfaceTexture;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    goto :goto_0

    .line 76
    :catch_0
    move-exception v4

    .line 78
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lo/abn;->bwG:Z

    if-eqz v0, :cond_1

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/abn;->bwG:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    monitor-exit v3

    const/4 v0, 0x1

    return v0

    .line 82
    :cond_1
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v3

    throw v5

    .line 83
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public ˊ(Ltv/periscope/android/util/Size;I)V
    .locals 3

    .line 43
    iget-object v1, p0, Lo/abn;->bwF:Landroid/graphics/SurfaceTexture;

    monitor-enter v1

    .line 44
    :try_start_0
    iget-object v0, p0, Lo/abn;->bwF:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 45
    iput-object p1, p0, Lo/abn;->bwJ:Ltv/periscope/android/util/Size;

    .line 46
    iput p2, p0, Lo/abn;->bwH:I

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/abn;->bwG:Z

    .line 48
    iget-object v0, p0, Lo/abn;->bwF:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 50
    :goto_0
    return-void
.end method

.method public ﹼ(II)I
    .locals 2

    .line 30
    iget v0, p0, Lo/abn;->bwI:I

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 31
    const v0, 0x8d65

    const/16 v1, 0x2801

    invoke-static {v0, v1, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 32
    const v0, 0x8d65

    const/16 v1, 0x2800

    invoke-static {v0, v1, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 33
    const v0, 0x8d65

    const/16 v1, 0x2802

    invoke-static {v0, v1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 34
    const v0, 0x8d65

    const/16 v1, 0x2803

    invoke-static {v0, v1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 35
    const/4 v0, 0x3

    return v0
.end method
