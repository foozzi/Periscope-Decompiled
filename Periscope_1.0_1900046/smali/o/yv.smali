.class Lo/yv;
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

.field final synthetic bqN:Landroid/graphics/SurfaceTexture;


# direct methods
.method constructor <init>(Lo/yq;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lo/yv;->bqL:Lo/yq;

    iput-object p2, p0, Lo/yv;->bqN:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uB()V
    .locals 4

    .line 457
    iget-object v0, p0, Lo/yv;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ˋ(Lo/yq;)Lo/yp$if;

    move-result-object v0

    iget-object v1, p0, Lo/yv;->bqN:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lo/yp$if;->ﹸ(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    iget-object v0, p0, Lo/yv;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ˏ(Lo/yq;)Lo/abn;

    move-result-object v0

    invoke-virtual {v0}, Lo/abn;->wu()V

    goto :goto_0

    .line 460
    :cond_0
    iget-object v0, p0, Lo/yv;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ʽ(Lo/yq;)Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 461
    iget-object v0, p0, Lo/yv;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ˏ(Lo/yq;)Lo/abn;

    move-result-object v0

    iget-object v1, p0, Lo/yv;->bqL:Lo/yq;

    invoke-static {v1}, Lo/yq;->ͺ(Lo/yq;)Ltv/periscope/android/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Ltv/periscope/android/util/Size;->width()I

    move-result v1

    iget-object v2, p0, Lo/yv;->bqL:Lo/yq;

    invoke-static {v2}, Lo/yq;->ͺ(Lo/yq;)Ltv/periscope/android/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Ltv/periscope/android/util/Size;->height()I

    move-result v2

    invoke-static {v1, v2}, Ltv/periscope/android/util/Size;->ﻧ(II)Ltv/periscope/android/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lo/abn;->ˊ(Ltv/periscope/android/util/Size;I)V

    .line 464
    :goto_0
    iget-object v0, p0, Lo/yv;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ι(Lo/yq;)Lo/abl;

    move-result-object v0

    invoke-virtual {v0}, Lo/abl;->requestRender()V

    .line 465
    return-void
.end method
