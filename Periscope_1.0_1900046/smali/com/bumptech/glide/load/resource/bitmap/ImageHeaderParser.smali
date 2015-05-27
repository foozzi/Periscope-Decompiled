.class public Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;,
        Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$if;,
        Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    }
.end annotation


# static fields
.field private static final kk:[B

.field private static final kl:[I


# instance fields
.field private final km:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 62
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->kl:[I

    .line 67
    const/4 v0, 0x0

    new-array v3, v0, [B

    .line 69
    const-string v0, "Exif\u0000\u0000"

    const-string v1, "UTF-8"

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 72
    goto :goto_0

    .line 70
    :catch_0
    move-exception v4

    .line 73
    :goto_0
    sput-object v3, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->kk:[B

    .line 74
    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->km:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;

    .line 78
    return-void
.end method

.method private ĵ()[B
    .locals 8

    .line 150
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->km:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;->Ĺ()S

    move-result v3

    .line 152
    const/16 v0, 0xff

    if-eq v3, v0, :cond_1

    .line 153
    const-string v0, "ImageHeaderParser"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "ImageHeaderParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown segmentId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->km:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;->Ĺ()S

    move-result v4

    .line 161
    const/16 v0, 0xda

    if-ne v4, v0, :cond_2

    .line 162
    const/4 v0, 0x0

    return-object v0

    .line 163
    :cond_2
    const/16 v0, 0xd9

    if-ne v4, v0, :cond_4

    .line 164
    const-string v0, "ImageHeaderParser"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    const-string v0, "ImageHeaderParser"

    const-string v1, "Found MARKER_EOI in exif segment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_3
    const/4 v0, 0x0

    return-object v0

    .line 171
    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->km:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;->ĸ()I

    move-result v0

    add-int/lit8 v5, v0, -0x2

    .line 173
    const/16 v0, 0xe1

    if-eq v4, v0, :cond_7

    .line 174
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->km:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;

    int-to-long v1, v5

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;->skip(J)J

    move-result-wide v6

    .line 175
    int-to-long v0, v5

    cmp-long v0, v6, v0

    if-eqz v0, :cond_6

    .line 176
    const-string v0, "ImageHeaderParser"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 177
    const-string v0, "ImageHeaderParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to skip enough data, type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wanted to skip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but actually skipped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_5
    const/4 v0, 0x0

    return-object v0

    .line 184
    :cond_6
    goto/16 :goto_0

    .line 185
    :cond_7
    new-array v6, v5, [B

    .line 186
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->km:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;

    invoke-virtual {v0, v6}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;->read([B)I

    move-result v7

    .line 187
    if-eq v7, v5, :cond_9

    .line 188
    const-string v0, "ImageHeaderParser"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 189
    const-string v0, "ImageHeaderParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read segment data, type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actually read: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_8
    const/4 v0, 0x0

    return-object v0

    .line 196
    :cond_9
    return-object v6
.end method

.method private static ˊ(Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$if;)I
    .locals 15

    .line 203
    const-string v0, "Exif\u0000\u0000"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 205
    invoke-virtual {p0, v3}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$if;->ᓪ(I)S

    move-result v4

    .line 207
    const/16 v0, 0x4d4d

    if-ne v4, v0, :cond_0

    .line 208
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    .line 209
    :cond_0
    const/16 v0, 0x4949

    if-ne v4, v0, :cond_1

    .line 210
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    .line 212
    :cond_1
    const-string v0, "ImageHeaderParser"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    const-string v0, "ImageHeaderParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown endianness = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_2
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 218
    :goto_0
    invoke-virtual {p0, v5}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$if;->ˊ(Ljava/nio/ByteOrder;)V

    .line 220
    add-int/lit8 v0, v3, 0x4

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$if;->ᒾ(I)I

    move-result v0

    add-int v6, v0, v3

    .line 221
    invoke-virtual {p0, v6}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$if;->ᓪ(I)S

    move-result v7

    .line 224
    const/4 v12, 0x0

    :goto_1
    if-ge v12, v7, :cond_e

    .line 225
    invoke-static {v6, v12}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->ᗮ(II)I

    move-result v8

    .line 227
    invoke-virtual {p0, v8}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$if;->ᓪ(I)S

    move-result v9

    .line 230
    const/16 v0, 0x112

    if-eq v9, v0, :cond_3

    .line 231
    goto/16 :goto_2

    .line 234
    :cond_3
    add-int/lit8 v0, v8, 0x2

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$if;->ᓪ(I)S

    move-result v10

    .line 237
    const/4 v0, 0x1

    if-lt v10, v0, :cond_4

    const/16 v0, 0xc

    if-le v10, v0, :cond_5

    .line 238
    :cond_4
    const-string v0, "ImageHeaderParser"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 239
    const-string v0, "ImageHeaderParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got invalid format code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 244
    :cond_5
    add-int/lit8 v0, v8, 0x4

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$if;->ᒾ(I)I

    move-result v11

    .line 246
    if-gez v11, :cond_6

    .line 247
    const-string v0, "ImageHeaderParser"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 248
    const-string v0, "ImageHeaderParser"

    const-string v1, "Negative tiff component count"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 253
    :cond_6
    const-string v0, "ImageHeaderParser"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 254
    const-string v0, "ImageHeaderParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got tagIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tagType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " formatCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " componentCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_7
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->kl:[I

    aget v0, v0, v10

    add-int v13, v11, v0

    .line 260
    const/4 v0, 0x4

    if-le v13, v0, :cond_8

    .line 261
    const-string v0, "ImageHeaderParser"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 262
    const-string v0, "ImageHeaderParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got byte count > 4, not orientation, continuing, formatCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 267
    :cond_8
    add-int/lit8 v14, v8, 0x8

    .line 269
    if-ltz v14, :cond_9

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$if;->length()I

    move-result v0

    if-le v14, v0, :cond_a

    .line 270
    :cond_9
    const-string v0, "ImageHeaderParser"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 271
    const-string v0, "ImageHeaderParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal tagValueOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tagType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 276
    :cond_a
    if-ltz v13, :cond_b

    add-int v0, v14, v13

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$if;->length()I

    move-result v1

    if-le v0, v1, :cond_c

    .line 277
    :cond_b
    const-string v0, "ImageHeaderParser"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 278
    const-string v0, "ImageHeaderParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal number of bytes for TI tag data tagType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 284
    :cond_c
    invoke-virtual {p0, v14}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$if;->ᓪ(I)S

    move-result v0

    return v0

    .line 224
    :cond_d
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 287
    :cond_e
    const/4 v0, -0x1

    return v0
.end method

.method private static ᑦ(I)Z
    .locals 2

    .line 295
    const v0, 0xffd8

    and-int/2addr v0, p0

    const v1, 0xffd8

    if-eq v0, v1, :cond_0

    const/16 v0, 0x4d4d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4949

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static ᗮ(II)I
    .locals 2

    .line 291
    add-int/lit8 v0, p0, 0x2

    mul-int/lit8 v1, p1, 0xc

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getOrientation()I
    .locals 6

    .line 120
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->km:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;->ĸ()I

    move-result v2

    .line 122
    invoke-static {v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->ᑦ(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    const/4 v0, -0x1

    return v0

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->ĵ()[B

    move-result-object v3

    .line 126
    if-eqz v3, :cond_1

    array-length v0, v3

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->kk:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 129
    :goto_0
    if-eqz v4, :cond_3

    .line 130
    const/4 v5, 0x0

    :goto_1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->kk:[B

    array-length v0, v0

    if-ge v5, v0, :cond_3

    .line 131
    aget-byte v0, v3, v5

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->kk:[B

    aget-byte v1, v1, v5

    if-eq v0, v1, :cond_2

    .line 132
    const/4 v4, 0x0

    .line 133
    goto :goto_2

    .line 130
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 138
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 139
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$if;

    invoke-direct {v0, v3}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$if;-><init>([B)V

    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->ˊ(Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$if;)I

    move-result v0

    return v0

    .line 141
    :cond_4
    const/4 v0, -0x1

    return v0
.end method

.method public hasAlpha()Z
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->ﾝ()Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->hasAlpha()Z

    move-result v0

    return v0
.end method

.method public ﾝ()Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    .locals 6

    .line 87
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->km:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;->ĸ()I

    move-result v3

    .line 90
    const v0, 0xffd8

    if-ne v3, v0, :cond_0

    .line 91
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    return-object v0

    .line 94
    :cond_0
    shl-int/lit8 v0, v3, 0x10

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->km:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;->ĸ()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int v4, v0, v1

    .line 96
    const v0, -0x76afb1b9

    if-ne v4, v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->km:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;

    const-wide/16 v1, 0x15

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;->skip(J)J

    .line 99
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->km:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ˊ;->Ļ()I

    move-result v5

    .line 101
    const/4 v0, 0x3

    if-lt v5, v0, :cond_1

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    :goto_0
    return-object v0

    .line 105
    :cond_2
    shr-int/lit8 v0, v4, 0x8

    const v1, 0x474946

    if-ne v0, v1, :cond_3

    .line 106
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    return-object v0

    .line 109
    :cond_3
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    return-object v0
.end method
