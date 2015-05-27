.class public Lo/abc;
.super Lo/ᘇ;
.source ""


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lo/ᘇ;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p1, p0, Lo/abc;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 37
    const-string v0, "Blur"

    return-object v0
.end method

.method protected ˊ(Lo/ი;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6

    .line 24
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 25
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 26
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 28
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 29
    array-length v0, v3

    const/4 v1, 0x0

    invoke-static {v3, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 30
    iget-object v0, p0, Lo/abc;->mContext:Landroid/content/Context;

    const/16 v1, 0x19

    invoke-static {v0, v4, v1}, Lo/akh;->ˊ(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 32
    iget-object v0, p0, Lo/abc;->mContext:Landroid/content/Context;

    const/16 v1, 0xa

    invoke-static {v0, v5, v1}, Lo/akh;->ˊ(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
