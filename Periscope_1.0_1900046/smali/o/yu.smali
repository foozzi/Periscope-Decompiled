.class Lo/yu;
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

    .line 373
    iput-object p1, p0, Lo/yu;->bqL:Lo/yq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uB()V
    .locals 3

    .line 377
    :try_start_0
    iget-object v0, p0, Lo/yu;->bqL:Lo/yq;

    iget-object v1, p0, Lo/yu;->bqL:Lo/yq;

    invoke-static {v1}, Lo/yq;->ᐝ(Lo/yq;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-static {v0, v1}, Lo/yq;->ˊ(Lo/yq;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    goto :goto_0

    .line 378
    :catch_0
    move-exception v2

    .line 380
    :goto_0
    iget-object v0, p0, Lo/yu;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ʻ(Lo/yq;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v2

    .line 381
    iget-object v0, p0, Lo/yu;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ʼ(Lo/yq;)Lo/abh;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/abh;->ˋ(Landroid/view/Surface;)V

    .line 382
    return-void
.end method
