.class Lo/yt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/abh$ˋ;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bqL:Lo/yq;


# direct methods
.method constructor <init>(Lo/yq;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lo/yt;->bqL:Lo/yq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uB()V
    .locals 3

    .line 328
    :try_start_0
    iget-object v0, p0, Lo/yt;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ˎ(Lo/yq;)V

    .line 329
    iget-object v0, p0, Lo/yt;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ˏ(Lo/yq;)Lo/abn;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    :try_start_1
    iget-object v0, p0, Lo/yt;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ˏ(Lo/yq;)Lo/abn;

    move-result-object v0

    invoke-virtual {v0}, Lo/abn;->vQ()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 341
    goto :goto_0

    .line 335
    :catch_0
    move-exception v2

    .line 340
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 343
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/yt;->bqL:Lo/yq;

    new-instance v1, Lo/abn;

    invoke-direct {v1}, Lo/abn;-><init>()V

    invoke-static {v0, v1}, Lo/yq;->ˊ(Lo/yq;Lo/abn;)Lo/abn;

    .line 344
    iget-object v0, p0, Lo/yt;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ˏ(Lo/yq;)Lo/abn;

    move-result-object v0

    invoke-virtual {v0}, Lo/abn;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lo/yt;->bqL:Lo/yq;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 345
    iget-object v0, p0, Lo/yt;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ˊ(Lo/yq;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lo/yt;->bqL:Lo/yq;

    invoke-static {v1}, Lo/yq;->ˏ(Lo/yq;)Lo/abn;

    move-result-object v1

    invoke-virtual {v1}, Lo/abn;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 347
    iget-object v0, p0, Lo/yt;->bqL:Lo/yq;

    invoke-virtual {v0}, Lo/yq;->uA()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 350
    goto :goto_1

    .line 348
    :catch_1
    move-exception v2

    .line 349
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 351
    :goto_1
    return-void
.end method
