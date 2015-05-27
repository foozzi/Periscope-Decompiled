.class public Lo/ᒫ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ﺪ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\ufeaa<Landroid/graphics/Bitmap;>;"
    }
.end annotation


# instance fields
.field private jT:Landroid/graphics/Bitmap$CompressFormat;

.field private quality:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    const/4 v0, 0x0

    const/16 v1, 0x5a

    invoke-direct {p0, v0, v1}, Lo/ᒫ;-><init>(Landroid/graphics/Bitmap$CompressFormat;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lo/ᒫ;->jT:Landroid/graphics/Bitmap$CompressFormat;

    .line 37
    iput p2, p0, Lo/ᒫ;->quality:I

    .line 38
    return-void
.end method

.method private ʾ(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .line 60
    iget-object v0, p0, Lo/ᒫ;->jT:Landroid/graphics/Bitmap$CompressFormat;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lo/ᒫ;->jT:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0

    .line 65
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 56
    const-string v0, "BitmapEncoder.com.bumptech.glide.load.resource.bitmap"

    return-object v0
.end method

.method public bridge synthetic ˊ(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 1

    .line 25
    move-object v0, p1

    check-cast v0, Lo/ڔ;

    invoke-virtual {p0, v0, p2}, Lo/ᒫ;->ˊ(Lo/ڔ;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method

.method public ˊ(Lo/ڔ;Ljava/io/OutputStream;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u0694<Landroid/graphics/Bitmap;>;Ljava/io/OutputStream;)Z"
        }
    .end annotation

    .line 42
    invoke-interface {p1}, Lo/ڔ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v4, v0

    .line 44
    invoke-static {}, Lo/ｯ;->〱()J

    move-result-wide v5

    .line 45
    invoke-direct {p0, v4}, Lo/ᒫ;->ʾ(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v7

    .line 46
    iget v0, p0, Lo/ᒫ;->quality:I

    invoke-virtual {v4, v7, v0, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 47
    const-string v0, "BitmapEncoder"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "BitmapEncoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Compressed with type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lo/ﾕ;->ˉ(Landroid/graphics/Bitmap;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5, v6}, Lo/ｯ;->ˎ(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
