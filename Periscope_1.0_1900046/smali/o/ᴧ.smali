.class public abstract Lo/ᴧ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᒨ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\u14a8<Ljava/io/InputStream;>;"
    }
.end annotation


# static fields
.field private static final jV:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;>;"
        }
    .end annotation
.end field

.field private static final jW:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<Landroid/graphics/BitmapFactory$Options;>;"
        }
    .end annotation
.end field

.field public static final jX:Lo/ᴧ;

.field public static final jY:Lo/ᴧ;

.field public static final jZ:Lo/ᴧ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lo/ᴧ;->jV:Ljava/util/Set;

    .line 32
    const/4 v0, 0x0

    invoke-static {v0}, Lo/ﾕ;->ᵘ(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lo/ᴧ;->jW:Ljava/util/Queue;

    .line 38
    new-instance v0, Lo/ᴮ;

    invoke-direct {v0}, Lo/ᴮ;-><init>()V

    sput-object v0, Lo/ᴧ;->jX:Lo/ᴧ;

    .line 54
    new-instance v0, Lo/ᴳ;

    invoke-direct {v0}, Lo/ᴳ;-><init>()V

    sput-object v0, Lo/ᴧ;->jY:Lo/ᴧ;

    .line 72
    new-instance v0, Lo/ᴼ;

    invoke-direct {v0}, Lo/ᴼ;-><init>()V

    sput-object v0, Lo/ᴧ;->jZ:Lo/ᴧ;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ʻ(IIIII)I
    .locals 5

    .line 184
    const/high16 v0, -0x80000000

    if-ne p5, v0, :cond_0

    move v1, p3

    goto :goto_0

    :cond_0
    move v1, p5

    .line 185
    :goto_0
    const/high16 v0, -0x80000000

    if-ne p4, v0, :cond_1

    move v2, p2

    goto :goto_1

    :cond_1
    move v2, p4

    .line 188
    :goto_1
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_3

    .line 192
    :cond_2
    invoke-virtual {p0, p3, p2, v2, v1}, Lo/ᴧ;->ʽ(IIII)I

    move-result v3

    goto :goto_2

    .line 194
    :cond_3
    invoke-virtual {p0, p2, p3, v2, v1}, Lo/ᴧ;->ʽ(IIII)I

    move-result v3

    .line 201
    :goto_2
    if-nez v3, :cond_4

    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v4

    .line 204
    :goto_3
    const/4 v0, 0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static ˊ(Ljava/io/InputStream;Lo/ﭝ;)Landroid/graphics/Bitmap$Config;
    .locals 7

    .line 254
    sget-object v0, Lo/ﭝ;->gP:Lo/ﭝ;

    if-eq p1, v0, :cond_0

    sget-object v0, Lo/ﭝ;->gQ:Lo/ﭝ;

    if-eq p1, v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 256
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object v0

    .line 259
    :cond_1
    const/4 v3, 0x0

    .line 261
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 263
    :try_start_0
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->hasAlpha()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    move v3, v0

    .line 270
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 275
    goto :goto_1

    .line 271
    :catch_0
    move-exception v4

    .line 272
    const-string v0, "Downsampler"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    const-string v0, "Downsampler"

    const-string v1, "Cannot reset the input stream"

    invoke-static {v0, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    :cond_2
    goto :goto_1

    .line 264
    :catch_1
    move-exception v4

    .line 265
    const-string v0, "Downsampler"

    const/4 v1, 0x5

    :try_start_2
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 266
    const-string v0, "Downsampler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot determine whether the image has alpha or not from header for format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 270
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 275
    goto :goto_1

    .line 271
    :catch_2
    move-exception v4

    .line 272
    const-string v0, "Downsampler"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 273
    const-string v0, "Downsampler"

    const-string v1, "Cannot reset the input stream"

    invoke-static {v0, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    :cond_4
    goto :goto_1

    .line 269
    :catchall_0
    move-exception v5

    .line 270
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 275
    goto :goto_0

    .line 271
    :catch_3
    move-exception v6

    .line 272
    const-string v0, "Downsampler"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 273
    const-string v0, "Downsampler"

    const-string v1, "Cannot reset the input stream"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    :cond_5
    :goto_0
    throw v5

    .line 278
    :goto_1
    if-eqz v3, :cond_6

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_2

    :cond_6
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_2
    return-object v0
.end method

.method private ˊ(Lo/ｿ;Lo/〳;Landroid/graphics/BitmapFactory$Options;Lo/ი;IIILo/ﭝ;)Landroid/graphics/Bitmap;
    .locals 7

    .line 211
    invoke-static {p1, p8}, Lo/ᴧ;->ˊ(Ljava/io/InputStream;Lo/ﭝ;)Landroid/graphics/Bitmap$Config;

    move-result-object v4

    .line 212
    iput p7, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 213
    iput-object v4, p3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 214
    iget v0, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v1, v0, :cond_1

    :cond_0
    invoke-static {p1}, Lo/ᴧ;->ˋ(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    int-to-double v0, p5

    int-to-double v2, p7

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v5, v0

    .line 216
    int-to-double v0, p6

    int-to-double v2, p7

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v6, v0

    .line 218
    invoke-interface {p4, v5, v6, v4}, Lo/ი;->ʽ(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p3, v0}, Lo/ᴧ;->ˊ(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;)V

    .line 220
    :cond_1
    invoke-static {p1, p2, p3}, Lo/ᴧ;->ˋ(Lo/ｿ;Lo/〳;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static ˊ(Landroid/graphics/BitmapFactory$Options;)V
    .locals 3

    .line 367
    invoke-static {p0}, Lo/ᴧ;->ˋ(Landroid/graphics/BitmapFactory$Options;)V

    .line 368
    sget-object v1, Lo/ᴧ;->jW:Ljava/util/Queue;

    monitor-enter v1

    .line 369
    :try_start_0
    sget-object v0, Lo/ᴧ;->jW:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 371
    :goto_0
    return-void
.end method

.method private static ˊ(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 347
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-gt v1, v0, :cond_0

    .line 348
    iput-object p1, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 350
    :cond_0
    return-void
.end method

.method private static ˋ(Lo/ｿ;Lo/〳;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5

    .line 315
    iget-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v0, :cond_0

    .line 321
    const/high16 v0, 0x500000

    invoke-virtual {p0, v0}, Lo/ｿ;->mark(I)V

    goto :goto_0

    .line 326
    :cond_0
    invoke-virtual {p1}, Lo/〳;->ř()V

    .line 329
    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 332
    :try_start_0
    iget-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {p0}, Lo/ｿ;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :cond_1
    goto :goto_1

    .line 335
    :catch_0
    move-exception v4

    .line 336
    const-string v0, "Downsampler"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    const-string v0, "Downsampler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception loading inDecodeBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sample="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    :cond_2
    :goto_1
    return-object v3
.end method

.method private static ˋ(Landroid/graphics/BitmapFactory$Options;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 376
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 377
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 378
    const/4 v0, 0x1

    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 380
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 381
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 382
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 385
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-gt v1, v0, :cond_0

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 389
    :cond_0
    return-void
.end method

.method private static ˋ(Ljava/io/InputStream;)Z
    .locals 7

    .line 225
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v1, v0, :cond_0

    .line 226
    const/4 v0, 0x1

    return v0

    .line 229
    :cond_0
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 231
    :try_start_0
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->ﾝ()Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    move-result-object v2

    .line 234
    sget-object v0, Lo/ᴧ;->jV:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 241
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 246
    goto :goto_0

    .line 242
    :catch_0
    move-exception v4

    .line 243
    const-string v0, "Downsampler"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    const-string v0, "Downsampler"

    const-string v1, "Cannot reset the input stream"

    invoke-static {v0, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    :cond_1
    :goto_0
    return v3

    .line 235
    :catch_1
    move-exception v2

    .line 236
    const-string v0, "Downsampler"

    const/4 v1, 0x5

    :try_start_2
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    const-string v0, "Downsampler"

    const-string v1, "Cannot determine the image type from header"

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 246
    goto :goto_2

    .line 242
    :catch_2
    move-exception v2

    .line 243
    const-string v0, "Downsampler"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    const-string v0, "Downsampler"

    const-string v1, "Cannot reset the input stream"

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    :cond_3
    goto :goto_2

    .line 240
    :catchall_0
    move-exception v5

    .line 241
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 246
    goto :goto_1

    .line 242
    :catch_3
    move-exception v6

    .line 243
    const-string v0, "Downsampler"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 244
    const-string v0, "Downsampler"

    const-string v1, "Cannot reset the input stream"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    :cond_4
    :goto_1
    throw v5

    .line 248
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method private static declared-synchronized ﻠ()Landroid/graphics/BitmapFactory$Options;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const-class v4, Lo/ᴧ;

    monitor-enter v4

    .line 355
    :try_start_0
    sget-object v2, Lo/ᴧ;->jW:Ljava/util/Queue;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 356
    :try_start_1
    sget-object v0, Lo/ᴧ;->jW:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapFactory$Options;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    .line 357
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2

    :try_start_2
    throw v3

    .line 358
    :goto_0
    if-nez v1, :cond_0

    .line 359
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 360
    invoke-static {v1}, Lo/ᴧ;->ˋ(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 363
    :cond_0
    monitor-exit v4

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v4

    throw v1
.end method


# virtual methods
.method protected abstract ʽ(IIII)I
.end method

.method public ˊ(Ljava/io/InputStream;Lo/ი;IILo/ﭝ;)Landroid/graphics/Bitmap;
    .locals 27

    .line 108
    invoke-static {}, Lo/ﮣ;->ῖ()Lo/ﮣ;

    move-result-object v9

    .line 109
    invoke-virtual {v9}, Lo/ﮣ;->getBytes()[B

    move-result-object v10

    .line 110
    invoke-virtual {v9}, Lo/ﮣ;->getBytes()[B

    move-result-object v11

    .line 111
    invoke-static {}, Lo/ᴧ;->ﻠ()Landroid/graphics/BitmapFactory$Options;

    move-result-object v12

    .line 114
    new-instance v13, Lo/〳;

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v11}, Lo/〳;-><init>(Ljava/io/InputStream;[B)V

    .line 119
    invoke-static {v13}, Lo/ﻪ;->ᐝ(Ljava/io/InputStream;)Lo/ﻪ;

    move-result-object v14

    .line 124
    new-instance v15, Lo/ｿ;

    invoke-direct {v15, v14}, Lo/ｿ;-><init>(Ljava/io/InputStream;)V

    .line 126
    const/high16 v0, 0x500000

    :try_start_0
    invoke-virtual {v14, v0}, Lo/ﻪ;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 127
    const/16 v16, 0x0

    .line 129
    :try_start_1
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;

    invoke-direct {v0, v14}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->getOrientation()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    move/from16 v16, v0

    .line 136
    :try_start_2
    invoke-virtual {v14}, Lo/ﻪ;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 141
    goto :goto_1

    .line 137
    :catch_0
    move-exception v17

    .line 138
    const-string v0, "Downsampler"

    const/4 v1, 0x5

    :try_start_3
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "Downsampler"

    const-string v1, "Cannot reset the input stream"

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 142
    :cond_0
    goto :goto_1

    .line 130
    :catch_1
    move-exception v17

    .line 131
    const-string v0, "Downsampler"

    const/4 v1, 0x5

    :try_start_4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    const-string v0, "Downsampler"

    const-string v1, "Cannot determine the image orientation from header"

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 136
    :cond_1
    :try_start_5
    invoke-virtual {v14}, Lo/ﻪ;->reset()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 141
    goto :goto_1

    .line 137
    :catch_2
    move-exception v17

    .line 138
    const-string v0, "Downsampler"

    const/4 v1, 0x5

    :try_start_6
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    const-string v0, "Downsampler"

    const-string v1, "Cannot reset the input stream"

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 142
    :cond_2
    goto :goto_1

    .line 135
    :catchall_0
    move-exception v18

    .line 136
    :try_start_7
    invoke-virtual {v14}, Lo/ﻪ;->reset()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 141
    goto :goto_0

    .line 137
    :catch_3
    move-exception v19

    .line 138
    const-string v0, "Downsampler"

    const/4 v1, 0x5

    :try_start_8
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    const-string v0, "Downsampler"

    const-string v1, "Cannot reset the input stream"

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    :cond_3
    :goto_0
    throw v18

    .line 144
    :goto_1
    iput-object v10, v12, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 146
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v13, v12}, Lo/ᴧ;->ˊ(Lo/ｿ;Lo/〳;Landroid/graphics/BitmapFactory$Options;)[I

    move-result-object v17

    .line 147
    const/4 v0, 0x0

    aget v18, v17, v0

    .line 148
    const/4 v0, 0x1

    aget v19, v17, v0

    .line 150
    invoke-static/range {v16 .. v16}, Lo/亅;->ᓫ(I)I

    move-result v20

    .line 151
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lo/ᴧ;->ʻ(IIIII)I

    move-result v21

    .line 153
    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v13

    move-object v3, v12

    move-object/from16 v4, p2

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v21

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lo/ᴧ;->ˊ(Lo/ｿ;Lo/〳;Landroid/graphics/BitmapFactory$Options;Lo/ი;IIILo/ﭝ;)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 160
    invoke-virtual {v14}, Lo/ﻪ;->ℐ()Ljava/io/IOException;

    move-result-object v23

    .line 161
    if-eqz v23, :cond_4

    .line 162
    new-instance v0, Ljava/lang/RuntimeException;

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 165
    :cond_4
    const/16 v24, 0x0

    .line 166
    if-eqz v22, :cond_5

    .line 167
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lo/亅;->ˊ(Landroid/graphics/Bitmap;Lo/ი;I)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 169
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lo/ი;->ʽ(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 170
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 174
    :cond_5
    move-object/from16 v25, v24

    .line 176
    invoke-virtual {v9, v10}, Lo/ﮣ;->ˏ([B)Z

    .line 177
    invoke-virtual {v9, v11}, Lo/ﮣ;->ˏ([B)Z

    .line 178
    invoke-virtual {v14}, Lo/ﻪ;->release()V

    .line 179
    invoke-static {v12}, Lo/ᴧ;->ˊ(Landroid/graphics/BitmapFactory$Options;)V

    return-object v25

    .line 176
    :catchall_1
    move-exception v26

    invoke-virtual {v9, v10}, Lo/ﮣ;->ˏ([B)Z

    .line 177
    invoke-virtual {v9, v11}, Lo/ﮣ;->ˏ([B)Z

    .line 178
    invoke-virtual {v14}, Lo/ﻪ;->release()V

    .line 179
    invoke-static {v12}, Lo/ᴧ;->ˊ(Landroid/graphics/BitmapFactory$Options;)V

    throw v26
.end method

.method public ˊ(Lo/ｿ;Lo/〳;Landroid/graphics/BitmapFactory$Options;)[I
    .locals 3

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 308
    invoke-static {p1, p2, p3}, Lo/ᴧ;->ˋ(Lo/ｿ;Lo/〳;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 310
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method
