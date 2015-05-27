.class public abstract Lo/abd;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Lo/ი;Landroid/graphics/Bitmap$Config;II)Landroid/graphics/Bitmap;
    .locals 2

    .line 9
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 10
    :goto_0
    invoke-interface {p0, p2, p3, v0}, Lo/ი;->ˋ(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 14
    :cond_1
    return-object v1
.end method
