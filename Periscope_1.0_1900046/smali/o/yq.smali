.class public Lo/yq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lo/yp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/yq$aux;,
        Lo/yq$ˎ;,
        Lo/yq$ᐝ;,
        Lo/yq$if;,
        Lo/yq$ˋ;,
        Lo/yq$ˊ;,
        Lo/yq$ˏ;
    }
.end annotation


# instance fields
.field private bqA:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<Lo/yq$\u02ca;>;"
        }
    .end annotation
.end field

.field private bqB:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<Lo/yq$\u02ca;>;"
        }
    .end annotation
.end field

.field private bqC:Z

.field private bqD:Z

.field private bqE:I

.field private bqF:I

.field private bqG:I

.field private bqH:Ltv/periscope/android/util/Size;

.field private bqI:Ltv/periscope/android/util/Size;

.field private bqJ:Z

.field private bqk:Landroid/hardware/Camera;

.field private bql:Landroid/hardware/Camera$CameraInfo;

.field private bqm:Landroid/media/AudioRecord;

.field private bqn:Landroid/media/MediaCodec;

.field private bqo:Landroid/media/MediaCodec;

.field private bqp:Lo/yp$if;

.field private bqq:Lo/abl;

.field private bqr:Lo/abn;

.field private bqs:Lo/abh;

.field private bqt:Lo/abh;

.field private bqu:Lo/abq;

.field private bqv:Lo/abq;

.field private bqw:Lo/yq$ˎ;

.field private bqx:Lo/yq$ᐝ;

.field private bqy:Lo/yq$ˋ;

.field private bqz:Lo/yq$if;

.field private mHandler:Landroid/os/Handler;

.field private ẛ:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object v0, p0, Lo/yq;->bql:Landroid/hardware/Camera$CameraInfo;

    .line 78
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lo/yq;->bqA:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 80
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lo/yq;->bqB:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 84
    const v0, 0x64000

    iput v0, p0, Lo/yq;->bqE:I

    .line 85
    const/16 v0, 0x18

    iput v0, p0, Lo/yq;->bqF:I

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lo/yq;->bqG:I

    .line 87
    sget-object v0, Ltv/periscope/android/util/Size;->bIt:Ltv/periscope/android/util/Size;

    iput-object v0, p0, Lo/yq;->bqH:Ltv/periscope/android/util/Size;

    .line 88
    sget-object v0, Ltv/periscope/android/util/Size;->bIt:Ltv/periscope/android/util/Size;

    iput-object v0, p0, Lo/yq;->bqI:Ltv/periscope/android/util/Size;

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/yq;->bqJ:Z

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/yq;->mHandler:Landroid/os/Handler;

    .line 748
    return-void
.end method

.method private uv()V
    .locals 8

    .line 238
    const v0, 0xb1800

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 239
    move-object v6, v7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x140

    const/16 v3, 0x238

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 241
    invoke-virtual {v7}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 243
    iget-object v0, p0, Lo/yq;->mHandler:Landroid/os/Handler;

    new-instance v1, Lo/ys;

    invoke-direct {v1, p0, v7}, Lo/ys;-><init>(Lo/yq;Ljava/nio/Buffer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    return-void
.end method

.method private uw()V
    .locals 3

    .line 307
    :try_start_0
    iget-object v0, p0, Lo/yq;->bqk:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lo/yq;->bqk:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 309
    iget-object v0, p0, Lo/yq;->bqk:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lo/yq;->bqk:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :cond_0
    goto :goto_0

    .line 312
    :catch_0
    move-exception v2

    .line 313
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 315
    :goto_0
    iget v0, p0, Lo/yq;->bqG:I

    iget-object v1, p0, Lo/yq;->bql:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v0, v1}, Lo/akf;->ˊ(ILandroid/hardware/Camera$CameraInfo;)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lo/yq;->bqk:Landroid/hardware/Camera;

    .line 316
    return-void
.end method

.method private declared-synchronized ux()V
    .locals 3

    monitor-enter p0

    .line 319
    const-string v0, "RTMP"

    const-string v1, "resetCamera"

    :try_start_0
    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lo/yq;->bqt:Lo/abh;

    if-nez v0, :cond_0

    .line 322
    monitor-exit p0

    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lo/yq;->bqt:Lo/abh;

    new-instance v1, Lo/yt;

    invoke-direct {v1, p0}, Lo/yt;-><init>(Lo/yq;)V

    invoke-virtual {v0, v1}, Lo/abh;->ˊ(Lo/abh$ˋ;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private uy()Landroid/media/MediaCodec;
    .locals 5

    .line 396
    new-instance v3, Landroid/media/MediaFormat;

    invoke-direct {v3}, Landroid/media/MediaFormat;-><init>()V

    .line 397
    const-string v0, "mime"

    const-string v1, "audio/mp4a-latm"

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v0, "aac-profile"

    const/4 v1, 0x2

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 399
    const-string v0, "sample-rate"

    const v1, 0xac44

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 400
    const-string v0, "channel-count"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 401
    const-string v0, "bitrate"

    const v1, 0x8000

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 402
    const-string v0, "max-input-size"

    const/16 v1, 0x800

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 404
    const-string v0, "audio/mp4a-latm"

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    .line 405
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v4, v3, v0, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 406
    return-object v4
.end method

.method private uz()Landroid/media/MediaCodec;
    .locals 5

    .line 410
    const-string v0, "video/avc"

    const/16 v1, 0x140

    const/16 v2, 0x238

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    .line 411
    const-string v0, "bitrate"

    iget v1, p0, Lo/yq;->bqE:I

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 412
    const-string v0, "frame-rate"

    iget v1, p0, Lo/yq;->bqF:I

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 413
    const-string v0, "i-frame-interval"

    const/4 v1, 0x2

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 414
    const-string v0, "color-format"

    const v1, 0x7f000789

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 415
    const-string v0, "profile"

    const/4 v1, 0x2

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 416
    const-string v0, "level"

    const/16 v1, 0x40

    invoke-virtual {v3, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 418
    const-string v0, "video/avc"

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    .line 419
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v4, v3, v0, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 420
    return-object v4
.end method

.method static synthetic ʻ(Lo/yq;)Landroid/media/MediaCodec;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/yq;->bqn:Landroid/media/MediaCodec;

    return-object v0
.end method

.method static synthetic ʼ(Lo/yq;)Lo/abh;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/yq;->bqt:Lo/abh;

    return-object v0
.end method

.method static synthetic ʽ(Lo/yq;)Landroid/hardware/Camera$CameraInfo;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/yq;->bql:Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method static synthetic ʾ(Lo/yq;)Landroid/media/AudioRecord;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/yq;->bqm:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic ʿ(Lo/yq;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/yq;->bqA:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object v0
.end method

.method static synthetic ˈ(Lo/yq;)J
    .locals 2

    .line 42
    iget-wide v0, p0, Lo/yq;->ẛ:J

    return-wide v0
.end method

.method static synthetic ˉ(Lo/yq;)Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lo/yq;->bqD:Z

    return v0
.end method

.method static synthetic ˊ(Lo/yq;)Landroid/hardware/Camera;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/yq;->bqk:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic ˊ(Lo/yq;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;
    .locals 0

    .line 42
    iput-object p1, p0, Lo/yq;->bqn:Landroid/media/MediaCodec;

    return-object p1
.end method

.method static synthetic ˊ(Lo/yq;Lo/abn;)Lo/abn;
    .locals 0

    .line 42
    iput-object p1, p0, Lo/yq;->bqr:Lo/abn;

    return-object p1
.end method

.method static synthetic ˊ(Lo/yq;Lo/abq;)Lo/abq;
    .locals 0

    .line 42
    iput-object p1, p0, Lo/yq;->bqu:Lo/abq;

    return-object p1
.end method

.method private ˊ(Lo/yq$ˊ;)V
    .locals 3

    .line 592
    :try_start_0
    iget-object v0, p0, Lo/yq;->bqB:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    goto :goto_0

    .line 593
    :catch_0
    move-exception v2

    .line 594
    const-string v0, "cameraBroadcaster"

    const-string v1, "dropping audio samples"

    invoke-static {v0, v1}, Lo/akk;->ᐧ(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :goto_0
    return-void
.end method

.method static synthetic ˊ(Lo/yq;Lo/yq$ˊ;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lo/yq;->ˊ(Lo/yq$ˊ;)V

    return-void
.end method

.method static synthetic ˊ(Lo/yq;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lo/yq;->bqJ:Z

    return p1
.end method

.method static synthetic ˋ(Lo/yq;Lo/abq;)Lo/abq;
    .locals 0

    .line 42
    iput-object p1, p0, Lo/yq;->bqv:Lo/abq;

    return-object p1
.end method

.method static synthetic ˋ(Lo/yq;)Lo/yp$if;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/yq;->bqp:Lo/yp$if;

    return-object v0
.end method

.method private ˋ(Lo/yq$ˊ;)V
    .locals 3

    .line 600
    :try_start_0
    iget-object v0, p0, Lo/yq;->bqA:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    goto :goto_0

    .line 601
    :catch_0
    move-exception v2

    .line 602
    const-string v0, "cameraBroadcaster"

    const-string v1, "dropping audio samples"

    invoke-static {v0, v1}, Lo/akk;->ᐧ(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    :goto_0
    return-void
.end method

.method static synthetic ˋ(Lo/yq;Lo/yq$ˊ;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lo/yq;->ˋ(Lo/yq$ˊ;)V

    return-void
.end method

.method static synthetic ˌ(Lo/yq;)Landroid/media/MediaCodec;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/yq;->bqo:Landroid/media/MediaCodec;

    return-object v0
.end method

.method static synthetic ˍ(Lo/yq;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/yq;->bqB:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object v0
.end method

.method static synthetic ˎ(Lo/yq;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lo/yq;->uw()V

    return-void
.end method

.method static synthetic ˏ(Lo/yq;)Lo/abn;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/yq;->bqr:Lo/abn;

    return-object v0
.end method

.method static synthetic ˑ(Lo/yq;)Lo/abq;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/yq;->bqu:Lo/abq;

    return-object v0
.end method

.method static synthetic ͺ(Lo/yq;)Ltv/periscope/android/util/Size;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/yq;->bqI:Ltv/periscope/android/util/Size;

    return-object v0
.end method

.method static synthetic ـ(Lo/yq;)Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lo/yq;->bqJ:Z

    return v0
.end method

.method static synthetic ᐝ(Lo/yq;)Landroid/media/MediaCodec;
    .locals 1

    .line 42
    invoke-direct {p0}, Lo/yq;->uz()Landroid/media/MediaCodec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic ᐧ(Lo/yq;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lo/yq;->uv()V

    return-void
.end method

.method static synthetic ᐨ(Lo/yq;)Lo/abq;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/yq;->bqv:Lo/abq;

    return-object v0
.end method

.method static synthetic ι(Lo/yq;)Lo/abl;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/yq;->bqq:Lo/abl;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    monitor-enter p0

    .line 451
    :try_start_0
    iget-object v0, p0, Lo/yq;->bqt:Lo/abh;

    if-nez v0, :cond_0

    .line 452
    monitor-exit p0

    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Lo/yq;->bqt:Lo/abh;

    new-instance v1, Lo/yv;

    invoke-direct {v1, p0, p1}, Lo/yv;-><init>(Lo/yq;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Lo/abh;->ˊ(Lo/abh$ˋ;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopPreview()V
    .locals 3

    monitor-enter p0

    .line 158
    const-string v0, "RTMP"

    const-string v1, "Camera stopPreview"

    :try_start_0
    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lo/yq;->bqk:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lo/yq;->bqk:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 161
    iget-object v0, p0, Lo/yq;->bqk:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lo/yq;->bqk:Landroid/hardware/Camera;

    .line 164
    :cond_0
    iget-object v0, p0, Lo/yq;->bqs:Lo/abh;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lo/yq;->bqs:Lo/abh;

    invoke-virtual {v0}, Lo/abh;->vQ()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lo/yq;->bqs:Lo/abh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public uA()V
    .locals 10

    .line 424
    iget-object v0, p0, Lo/yq;->bqq:Lo/abl;

    invoke-virtual {v0}, Lo/abl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 425
    const-string v0, "window"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    move-object v3, v0

    .line 427
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 428
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 429
    invoke-virtual {v4, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 430
    iget v0, v5, Landroid/graphics/Point;->x:I

    iget v1, v5, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ltv/periscope/android/util/Size;->ﻧ(II)Ltv/periscope/android/util/Size;

    move-result-object v0

    iput-object v0, p0, Lo/yq;->bqH:Ltv/periscope/android/util/Size;

    .line 431
    iget-object v0, p0, Lo/yq;->bqk:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 432
    iget-object v0, p0, Lo/yq;->bqk:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 433
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 434
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x5dc0

    invoke-static {v1, v0}, Lo/akf;->ˊ(ILjava/util/List;)[I

    move-result-object v7

    .line 436
    if-eqz v7, :cond_0

    .line 437
    const/4 v0, 0x0

    aget v0, v7, v0

    const/4 v1, 0x1

    aget v1, v7, v1

    invoke-virtual {v6, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 439
    :cond_0
    iget-object v0, p0, Lo/yq;->bqk:Landroid/hardware/Camera;

    invoke-static {v0, v6}, Lo/akf;->ˊ(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)Z

    .line 440
    iget-object v0, p0, Lo/yq;->bql:Landroid/hardware/Camera$CameraInfo;

    iget v8, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 441
    iget-object v0, p0, Lo/yq;->bqH:Ltv/periscope/android/util/Size;

    invoke-virtual {v0, v8}, Ltv/periscope/android/util/Size;->Ꭸ(I)Ltv/periscope/android/util/Size;

    move-result-object v0

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akf;->ˊ(Ltv/periscope/android/util/Size;Ljava/util/List;)Ltv/periscope/android/util/Size;

    move-result-object v9

    .line 443
    invoke-virtual {v9}, Ltv/periscope/android/util/Size;->width()I

    move-result v0

    invoke-virtual {v9}, Ltv/periscope/android/util/Size;->height()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 444
    iput-object v9, p0, Lo/yq;->bqI:Ltv/periscope/android/util/Size;

    .line 445
    iget-object v0, p0, Lo/yq;->bqk:Landroid/hardware/Camera;

    invoke-virtual {v0, v6}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 446
    iget-object v0, p0, Lo/yq;->bqk:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 447
    return-void
.end method

.method public declared-synchronized uo()V
    .locals 3

    monitor-enter p0

    .line 172
    const-string v0, "RTMP"

    const-string v1, "Camera startEncoding"

    :try_start_0
    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/yq;->bqC:Z

    .line 174
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/yq;->ẛ:J

    .line 175
    iget-object v0, p0, Lo/yq;->bqn:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    .line 177
    const-string v0, "RTMP"

    const-string v1, "Video encoder null in startEncoding"

    invoke-static {v0, v1}, Lo/akk;->ᐨ(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    monitor-exit p0

    return-void

    .line 181
    :cond_0
    new-instance v0, Lo/yq$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/yq$if;-><init>(Lo/yq;Lo/yr;)V

    iput-object v0, p0, Lo/yq;->bqz:Lo/yq$if;

    .line 182
    iget-object v0, p0, Lo/yq;->bqz:Lo/yq$if;

    invoke-virtual {v0}, Lo/yq$if;->start()V

    .line 183
    iget-object v0, p0, Lo/yq;->bqz:Lo/yq$if;

    invoke-virtual {v0}, Lo/yq$if;->uD()V

    .line 185
    new-instance v0, Lo/yq$ˋ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/yq$ˋ;-><init>(Lo/yq;Lo/yr;)V

    iput-object v0, p0, Lo/yq;->bqy:Lo/yq$ˋ;

    .line 186
    iget-object v0, p0, Lo/yq;->bqy:Lo/yq$ˋ;

    invoke-virtual {v0}, Lo/yq$ˋ;->start()V

    .line 188
    new-instance v0, Lo/yq$ᐝ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/yq$ᐝ;-><init>(Lo/yq;Lo/yr;)V

    iput-object v0, p0, Lo/yq;->bqx:Lo/yq$ᐝ;

    .line 189
    iget-object v0, p0, Lo/yq;->bqx:Lo/yq$ᐝ;

    invoke-virtual {v0}, Lo/yq$ᐝ;->start()V

    .line 190
    iget-object v0, p0, Lo/yq;->bqx:Lo/yq$ᐝ;

    invoke-virtual {v0}, Lo/yq$ᐝ;->uD()V

    .line 192
    new-instance v0, Lo/yq$ˎ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/yq$ˎ;-><init>(Lo/yq;Lo/yr;)V

    iput-object v0, p0, Lo/yq;->bqw:Lo/yq$ˎ;

    .line 193
    iget-object v0, p0, Lo/yq;->bqw:Lo/yq$ˎ;

    invoke-virtual {v0}, Lo/yq$ˎ;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized up()V
    .locals 2

    monitor-enter p0

    .line 198
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lo/yq;->bqD:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized uq()V
    .locals 3

    monitor-enter p0

    .line 203
    const-string v0, "RTMP"

    const-string v1, "Camera stopBroadcast"

    :try_start_0
    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/yq;->bqC:Z

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/yq;->bqD:Z

    .line 206
    iget-object v0, p0, Lo/yq;->bqw:Lo/yq$ˎ;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lo/yq;->bqw:Lo/yq$ˎ;

    invoke-virtual {v0}, Lo/yq$ˎ;->join()V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lo/yq;->bqw:Lo/yq$ˎ;

    .line 210
    :cond_0
    iget-object v0, p0, Lo/yq;->bqy:Lo/yq$ˋ;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lo/yq;->bqy:Lo/yq$ˋ;

    invoke-virtual {v0}, Lo/yq$ˋ;->join()V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lo/yq;->bqy:Lo/yq$ˋ;

    .line 214
    :cond_1
    iget-object v0, p0, Lo/yq;->bqz:Lo/yq$if;

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lo/yq;->bqz:Lo/yq$if;

    invoke-virtual {v0}, Lo/yq$if;->join()V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lo/yq;->bqz:Lo/yq$if;

    .line 218
    :cond_2
    iget-object v0, p0, Lo/yq;->bqx:Lo/yq$ᐝ;

    if-eqz v0, :cond_3

    .line 219
    iget-object v0, p0, Lo/yq;->bqx:Lo/yq$ᐝ;

    invoke-virtual {v0}, Lo/yq$ᐝ;->join()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lo/yq;->bqx:Lo/yq$ᐝ;

    .line 222
    :cond_3
    iget-object v0, p0, Lo/yq;->bqn:Landroid/media/MediaCodec;

    if-eqz v0, :cond_4

    .line 223
    iget-object v0, p0, Lo/yq;->bqn:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 224
    iget-object v0, p0, Lo/yq;->bqn:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lo/yq;->bqn:Landroid/media/MediaCodec;

    .line 227
    :cond_4
    iget-object v0, p0, Lo/yq;->bqu:Lo/abq;

    if-eqz v0, :cond_5

    .line 228
    iget-object v0, p0, Lo/yq;->bqu:Lo/abq;

    invoke-virtual {v0}, Lo/abq;->vQ()V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lo/yq;->bqu:Lo/abq;

    .line 231
    :cond_5
    iget-object v0, p0, Lo/yq;->bqt:Lo/abh;

    if-eqz v0, :cond_6

    .line 232
    iget-object v0, p0, Lo/yq;->bqt:Lo/abh;

    invoke-virtual {v0}, Lo/abh;->vQ()V

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lo/yq;->bqt:Lo/abh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public ur()I
    .locals 1

    .line 289
    iget v0, p0, Lo/yq;->bqE:I

    return v0
.end method

.method public us()I
    .locals 1

    .line 302
    iget v0, p0, Lo/yq;->bqG:I

    return v0
.end method

.method public declared-synchronized ut()V
    .locals 4

    monitor-enter p0

    .line 356
    const-string v0, "RTMP"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetVideoEncoder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lo/yq;->bqC:Z

    if-eqz v2, :cond_0

    const-string v2, "Encoding"

    goto :goto_0

    :cond_0
    const-string v2, "Not encoding"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-boolean v0, p0, Lo/yq;->bqC:Z

    if-eqz v0, :cond_3

    .line 358
    iget-object v0, p0, Lo/yq;->bqw:Lo/yq$ˎ;

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lo/yq;->bqw:Lo/yq$ˎ;

    invoke-virtual {v0}, Lo/yq$ˎ;->join()V

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Lo/yq;->bqw:Lo/yq$ˎ;

    .line 362
    :cond_1
    iget-object v0, p0, Lo/yq;->bqx:Lo/yq$ᐝ;

    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lo/yq;->bqx:Lo/yq$ᐝ;

    invoke-virtual {v0}, Lo/yq$ᐝ;->join()V

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lo/yq;->bqx:Lo/yq$ᐝ;

    .line 366
    :cond_2
    iget-object v0, p0, Lo/yq;->bqn:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3

    .line 367
    iget-object v0, p0, Lo/yq;->bqn:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 368
    iget-object v0, p0, Lo/yq;->bqn:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lo/yq;->bqn:Landroid/media/MediaCodec;

    .line 373
    :cond_3
    iget-object v0, p0, Lo/yq;->bqt:Lo/abh;

    new-instance v1, Lo/yu;

    invoke-direct {v1, p0}, Lo/yu;-><init>(Lo/yq;)V

    invoke-virtual {v0, v1}, Lo/abh;->ˊ(Lo/abh$ˋ;)Z

    .line 385
    iget-boolean v0, p0, Lo/yq;->bqC:Z

    if-eqz v0, :cond_4

    .line 386
    new-instance v0, Lo/yq$ᐝ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/yq$ᐝ;-><init>(Lo/yq;Lo/yr;)V

    iput-object v0, p0, Lo/yq;->bqx:Lo/yq$ᐝ;

    .line 387
    iget-object v0, p0, Lo/yq;->bqx:Lo/yq$ᐝ;

    invoke-virtual {v0}, Lo/yq$ᐝ;->start()V

    .line 388
    iget-object v0, p0, Lo/yq;->bqx:Lo/yq$ᐝ;

    invoke-virtual {v0}, Lo/yq$ᐝ;->uD()V

    .line 390
    new-instance v0, Lo/yq$ˎ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/yq$ˎ;-><init>(Lo/yq;Lo/yr;)V

    iput-object v0, p0, Lo/yq;->bqw:Lo/yq$ˎ;

    .line 391
    iget-object v0, p0, Lo/yq;->bqw:Lo/yq$ˎ;

    invoke-virtual {v0}, Lo/yq$ˎ;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public ˊ(Lo/yp$if;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lo/yq;->bqp:Lo/yp$if;

    .line 154
    return-void
.end method

.method public declared-synchronized ˊ(Lo/abl;)Z
    .locals 8

    monitor-enter p0

    .line 94
    const-string v0, "RTMP"

    const-string v1, "Camera startPreview"

    :try_start_0
    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lo/yq;->bqq:Lo/abl;

    .line 96
    invoke-direct {p0}, Lo/yq;->uw()V

    .line 98
    const v0, 0xac44

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    mul-int/lit8 v6, v0, 0x8

    .line 100
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    const v2, 0xac44

    const/16 v3, 0x10

    const/4 v4, 0x2

    move v5, v6

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lo/yq;->bqm:Landroid/media/AudioRecord;

    .line 104
    invoke-direct {p0}, Lo/yq;->uz()Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lo/yq;->bqn:Landroid/media/MediaCodec;

    .line 105
    iget-object v0, p0, Lo/yq;->bqn:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v7

    .line 107
    invoke-direct {p0}, Lo/yq;->uy()Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lo/yq;->bqo:Landroid/media/MediaCodec;

    .line 109
    const-string v0, "RTMP"

    const-string v1, "Encoders created"

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v0, Lo/abh;

    invoke-direct {v0}, Lo/abh;-><init>()V

    iput-object v0, p0, Lo/yq;->bqt:Lo/abh;

    .line 113
    iget-object v0, p0, Lo/yq;->bqt:Lo/abh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v7}, Lo/abh;->ˊ(Lo/abh;Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to create video encoder context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iget-object v0, p0, Lo/yq;->bqt:Lo/abh;

    new-instance v1, Lo/yr;

    invoke-direct {v1, p0, p1}, Lo/yr;-><init>(Lo/yq;Lo/abl;)V

    invoke-virtual {v0, v1}, Lo/abh;->ˊ(Lo/abh$ˋ;)Z

    .line 127
    iget-object v0, p0, Lo/yq;->bqr:Lo/abn;

    invoke-virtual {v0}, Lo/abn;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 128
    iget-object v0, p0, Lo/yq;->bqk:Landroid/hardware/Camera;

    iget-object v1, p0, Lo/yq;->bqr:Lo/abn;

    invoke-virtual {v1}, Lo/abn;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 131
    new-instance v0, Lo/abh;

    invoke-direct {v0}, Lo/abh;-><init>()V

    iput-object v0, p0, Lo/yq;->bqs:Lo/abh;

    .line 132
    iget-object v0, p0, Lo/yq;->bqs:Lo/abh;

    iget-object v1, p0, Lo/yq;->bqt:Lo/abh;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo/abh;->ˊ(Lo/abh;Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to create video render context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    iget-object v0, p0, Lo/yq;->bqq:Lo/abl;

    iget-object v1, p0, Lo/yq;->bqs:Lo/abh;

    invoke-virtual {v1}, Lo/abh;->vV()Lo/abl$aux;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/abl;->setEGLContextFactory(Lo/abl$aux;)V

    .line 136
    iget-object v0, p0, Lo/yq;->bqq:Lo/abl;

    iget-object v1, p0, Lo/yq;->bqs:Lo/abh;

    invoke-virtual {v1}, Lo/abh;->vW()Lo/abl$ˏ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/abl;->setEGLConfigChooser(Lo/abl$ˏ;)V

    .line 137
    iget-object v0, p0, Lo/yq;->bqq:Lo/abl;

    invoke-virtual {v0}, Lo/abl;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 138
    iget-object v0, p0, Lo/yq;->bqq:Lo/abl;

    new-instance v1, Lo/yq$aux;

    invoke-direct {v1, p0}, Lo/yq$aux;-><init>(Lo/yq;)V

    invoke-virtual {v0, v1}, Lo/abl;->setRenderer(Lo/abl$ͺ;)V

    .line 139
    iget-object v0, p0, Lo/yq;->bqq:Lo/abl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/abl;->setRenderMode(I)V

    .line 141
    invoke-virtual {p0}, Lo/yq;->uA()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 144
    :catch_0
    move-exception v6

    .line 145
    const-string v0, "RTMP"

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start camera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {v6}, Lo/ɬ;->ˋ(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public ﻠ(I)V
    .locals 1

    .line 279
    iget v0, p0, Lo/yq;->bqE:I

    if-eq v0, p1, :cond_0

    .line 280
    iput p1, p0, Lo/yq;->bqE:I

    .line 281
    iget-object v0, p0, Lo/yq;->bqn:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lo/yq;->ut()V

    .line 285
    :cond_0
    return-void
.end method

.method public ﻩ(I)V
    .locals 1

    .line 294
    iget v0, p0, Lo/yq;->bqG:I

    if-eq v0, p1, :cond_0

    .line 295
    iput p1, p0, Lo/yq;->bqG:I

    .line 296
    invoke-direct {p0}, Lo/yq;->ux()V

    .line 298
    :cond_0
    return-void
.end method
