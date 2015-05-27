.class public Lo/ẋ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ﺀ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\ufe80<Lo/\uff8c;Landroid/graphics/Bitmap;>;"
    }
.end annotation


# instance fields
.field private final kq:Lo/ﺀ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufe80<Ljava/io/InputStream;Landroid/graphics/Bitmap;>;"
        }
    .end annotation
.end field

.field private final kr:Lo/ﺀ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufe80<Landroid/os/ParcelFileDescriptor;Landroid/graphics/Bitmap;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/ﺀ;Lo/ﺀ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufe80<Ljava/io/InputStream;Landroid/graphics/Bitmap;>;Lo/\ufe80<Landroid/os/ParcelFileDescriptor;Landroid/graphics/Bitmap;>;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lo/ẋ;->kq:Lo/ﺀ;

    .line 28
    iput-object p2, p0, Lo/ẋ;->kr:Lo/ﺀ;

    .line 29
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 58
    const-string v0, "ImageVideoBitmapDecoder.com.bumptech.glide.load.resource.bitmap"

    return-object v0
.end method

.method public ˊ(Lo/ﾌ;II)Lo/ڔ;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\uff8c;II)Lo/\u0694<Landroid/graphics/Bitmap;>;"
        }
    .end annotation

    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {p1}, Lo/ﾌ;->冫()Ljava/io/InputStream;

    move-result-object v3

    .line 37
    if-eqz v3, :cond_0

    .line 39
    :try_start_0
    iget-object v0, p0, Lo/ẋ;->kq:Lo/ﺀ;

    invoke-interface {v0, v3, p2, p3}, Lo/ﺀ;->ˋ(Ljava/lang/Object;II)Lo/ڔ;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 44
    goto :goto_0

    .line 40
    :catch_0
    move-exception v4

    .line 41
    const-string v0, "ImageVideoDecoder"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const-string v0, "ImageVideoDecoder"

    const-string v1, "Failed to load image from stream, trying FileDescriptor"

    invoke-static {v0, v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 48
    invoke-virtual {p1}, Lo/ﾌ;->לּ()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 49
    if-eqz v4, :cond_1

    .line 50
    iget-object v0, p0, Lo/ẋ;->kr:Lo/ﺀ;

    invoke-interface {v0, v4, p2, p3}, Lo/ﺀ;->ˋ(Ljava/lang/Object;II)Lo/ڔ;

    move-result-object v2

    .line 53
    :cond_1
    return-object v2
.end method

.method public synthetic ˋ(Ljava/lang/Object;II)Lo/ڔ;
    .locals 1

    .line 20
    move-object v0, p1

    check-cast v0, Lo/ﾌ;

    invoke-virtual {p0, v0, p2, p3}, Lo/ẋ;->ˊ(Lo/ﾌ;II)Lo/ڔ;

    move-result-object v0

    return-object v0
.end method
