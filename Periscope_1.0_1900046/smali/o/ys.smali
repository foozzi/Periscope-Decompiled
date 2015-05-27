.class Lo/ys;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bqL:Lo/yq;

.field final synthetic bqM:Ljava/nio/Buffer;


# direct methods
.method constructor <init>(Lo/yq;Ljava/nio/Buffer;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lo/ys;->bqL:Lo/yq;

    iput-object p2, p0, Lo/ys;->bqM:Ljava/nio/Buffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 246
    iget-object v0, p0, Lo/ys;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ˊ(Lo/yq;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    .line 248
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x140

    const/16 v2, 0x238

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 249
    iget-object v0, p0, Lo/ys;->bqM:Ljava/nio/Buffer;

    invoke-virtual {v8, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 251
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 252
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 254
    move-object v0, v8

    move-object v5, v9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x140

    const/16 v4, 0x238

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 255
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 256
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getJpegQuality()I

    move-result v1

    invoke-virtual {v10, v0, v1, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 258
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 259
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 261
    iget-object v0, p0, Lo/ys;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ˋ(Lo/yq;)Lo/yp$if;

    move-result-object v0

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lo/yp$if;->ᒾ([B)V

    .line 262
    return-void
.end method
