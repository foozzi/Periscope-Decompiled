.class public Lo/ᙇ;
.super Lo/ᘇ;
.source ""


# direct methods
.method public constructor <init>(Lo/ი;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lo/ᘇ;-><init>(Lo/ი;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 39
    const-string v0, "CenterCrop.com.bumptech.glide.load.resource.bitmap"

    return-object v0
.end method

.method protected ˊ(Lo/ი;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 3

    .line 28
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-interface {p1, p3, p4, v0}, Lo/ი;->ˋ(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 30
    invoke-static {v1, p2, p3, p4}, Lo/亅;->ˊ(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 31
    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_1

    invoke-interface {p1, v1}, Lo/ი;->ʽ(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 32
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 34
    :cond_1
    return-object v2
.end method
