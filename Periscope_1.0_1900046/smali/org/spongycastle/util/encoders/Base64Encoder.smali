.class public Lorg/spongycastle/util/encoders/Base64Encoder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/util/encoders/Encoder;


# instance fields
.field protected final bke:[B

.field protected bkf:B

.field protected final bkg:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bke:[B

    .line 28
    const/16 v0, 0x3d

    iput-byte v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bkf:B

    .line 33
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bkg:[B

    .line 50
    invoke-virtual {p0}, Lorg/spongycastle/util/encoders/Base64Encoder;->td()V

    .line 51
    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method private ˊ(Ljava/io/OutputStream;CCCC)I
    .locals 6

    .line 273
    iget-byte v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bkf:B

    if-ne p4, v0, :cond_1

    .line 275
    iget-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bkg:[B

    aget-byte v2, v0, p2

    .line 276
    iget-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bkg:[B

    aget-byte v3, v0, p3

    .line 278
    or-int v0, v2, v3

    if-gez v0, :cond_0

    .line 280
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid characters encountered at end of base64 data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    shl-int/lit8 v0, v2, 0x2

    shr-int/lit8 v1, v3, 0x4

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 285
    const/4 v0, 0x1

    return v0

    .line 287
    :cond_1
    iget-byte v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bkf:B

    if-ne p5, v0, :cond_3

    .line 289
    iget-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bkg:[B

    aget-byte v2, v0, p2

    .line 290
    iget-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bkg:[B

    aget-byte v3, v0, p3

    .line 291
    iget-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bkg:[B

    aget-byte v4, v0, p4

    .line 293
    or-int v0, v2, v3

    or-int/2addr v0, v4

    if-gez v0, :cond_2

    .line 295
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid characters encountered at end of base64 data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_2
    shl-int/lit8 v0, v2, 0x2

    shr-int/lit8 v1, v3, 0x4

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 299
    shl-int/lit8 v0, v3, 0x4

    shr-int/lit8 v1, v4, 0x2

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 301
    const/4 v0, 0x2

    return v0

    .line 305
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bkg:[B

    aget-byte v2, v0, p2

    .line 306
    iget-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bkg:[B

    aget-byte v3, v0, p3

    .line 307
    iget-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bkg:[B

    aget-byte v4, v0, p4

    .line 308
    iget-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bkg:[B

    aget-byte v5, v0, p5

    .line 310
    or-int v0, v2, v3

    or-int/2addr v0, v4

    or-int/2addr v0, v5

    if-gez v0, :cond_4

    .line 312
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid characters encountered at end of base64 data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_4
    shl-int/lit8 v0, v2, 0x2

    shr-int/lit8 v1, v3, 0x4

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 316
    shl-int/lit8 v0, v3, 0x4

    shr-int/lit8 v1, v4, 0x2

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 317
    shl-int/lit8 v0, v4, 0x6

    or-int/2addr v0, v5

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 319
    const/4 v0, 0x3

    return v0
.end method

.method private ˎ(Ljava/lang/String;II)I
    .locals 1

    .line 325
    :goto_0
    if-ge p2, p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/spongycastle/util/encoders/Base64Encoder;->ᐝ(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 329
    :cond_0
    return p2
.end method

.method private ᐝ(C)Z
    .locals 1

    .line 122
    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected td()V
    .locals 4

    .line 37
    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bkg:[B

    array-length v0, v0

    if-ge v3, v0, :cond_0

    .line 39
    iget-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bkg:[B

    const/4 v1, -0x1

    aput-byte v1, v0, v3

    .line 37
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 42
    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bke:[B

    array-length v0, v0

    if-ge v3, v0, :cond_1

    .line 44
    iget-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bkg:[B

    iget-object v1, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bke:[B

    aget-byte v1, v1, v3

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    .line 42
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 46
    :cond_1
    return-void
.end method

.method public ˊ(Ljava/lang/String;Ljava/io/OutputStream;)I
    .locals 15

    .line 214
    const/4 v11, 0x0

    .line 216
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    .line 218
    :goto_0
    if-lez v12, :cond_1

    .line 220
    add-int/lit8 v0, v12, -0x1

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/spongycastle/util/encoders/Base64Encoder;->ᐝ(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    goto :goto_1

    .line 225
    :cond_0
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .line 228
    :cond_1
    :goto_1
    const/4 v13, 0x0

    .line 229
    add-int/lit8 v14, v12, -0x4

    .line 231
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v13, v14}, Lorg/spongycastle/util/encoders/Base64Encoder;->ˎ(Ljava/lang/String;II)I

    move-result v13

    .line 233
    :goto_2
    if-ge v13, v14, :cond_3

    .line 235
    iget-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bkg:[B

    move v1, v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget-byte v7, v0, v1

    .line 237
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v13, v14}, Lorg/spongycastle/util/encoders/Base64Encoder;->ˎ(Ljava/lang/String;II)I

    move-result v13

    .line 239
    iget-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bkg:[B

    move v1, v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget-byte v8, v0, v1

    .line 241
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v13, v14}, Lorg/spongycastle/util/encoders/Base64Encoder;->ˎ(Ljava/lang/String;II)I

    move-result v13

    .line 243
    iget-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bkg:[B

    move v1, v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget-byte v9, v0, v1

    .line 245
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v13, v14}, Lorg/spongycastle/util/encoders/Base64Encoder;->ˎ(Ljava/lang/String;II)I

    move-result v13

    .line 247
    iget-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bkg:[B

    move v1, v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget-byte v10, v0, v1

    .line 249
    or-int v0, v7, v8

    or-int/2addr v0, v9

    or-int/2addr v0, v10

    if-gez v0, :cond_2

    .line 251
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid characters encountered in base64 data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_2
    shl-int/lit8 v0, v7, 0x2

    shr-int/lit8 v1, v8, 0x4

    or-int/2addr v0, v1

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 255
    shl-int/lit8 v0, v8, 0x4

    shr-int/lit8 v1, v9, 0x2

    or-int/2addr v0, v1

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 256
    shl-int/lit8 v0, v9, 0x6

    or-int/2addr v0, v10

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 258
    add-int/lit8 v11, v11, 0x3

    .line 260
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v13, v14}, Lorg/spongycastle/util/encoders/Base64Encoder;->ˎ(Ljava/lang/String;II)I

    move-result v13

    goto/16 :goto_2

    .line 263
    :cond_3
    move-object v0, p0

    move-object/from16 v1, p2

    add-int/lit8 v2, v12, -0x4

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v3, v12, -0x3

    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v4, v12, -0x2

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v5, v12, -0x1

    move-object/from16 v6, p1

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/util/encoders/Base64Encoder;->ˊ(Ljava/io/OutputStream;CCCC)I

    move-result v0

    add-int/2addr v11, v0

    .line 265
    return v11
.end method

.method public ˊ([BIILjava/io/OutputStream;)I
    .locals 13

    .line 65
    rem-int/lit8 v3, p3, 0x3

    .line 66
    sub-int v4, p3, v3

    .line 69
    move v8, p2

    :goto_0
    add-int v0, p2, v4

    if-ge v8, v0, :cond_0

    .line 71
    aget-byte v0, p1, v8

    and-int/lit16 v5, v0, 0xff

    .line 72
    add-int/lit8 v0, v8, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v6, v0, 0xff

    .line 73
    add-int/lit8 v0, v8, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v7, v0, 0xff

    .line 75
    iget-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bke:[B

    ushr-int/lit8 v1, v5, 0x2

    and-int/lit8 v1, v1, 0x3f

    aget-byte v0, v0, v1

    move-object/from16 v1, p4

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 76
    iget-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bke:[B

    shl-int/lit8 v1, v5, 0x4

    ushr-int/lit8 v2, v6, 0x4

    or-int/2addr v1, v2

    and-int/lit8 v1, v1, 0x3f

    aget-byte v0, v0, v1

    move-object/from16 v1, p4

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 77
    iget-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bke:[B

    shl-int/lit8 v1, v6, 0x2

    ushr-int/lit8 v2, v7, 0x6

    or-int/2addr v1, v2

    and-int/lit8 v1, v1, 0x3f

    aget-byte v0, v0, v1

    move-object/from16 v1, p4

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 78
    iget-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bke:[B

    and-int/lit8 v1, v7, 0x3f

    aget-byte v0, v0, v1

    move-object/from16 v1, p4

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 69
    add-int/lit8 v8, v8, 0x3

    goto :goto_0

    .line 87
    :cond_0
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 90
    :pswitch_0
    goto/16 :goto_1

    .line 92
    :pswitch_1
    add-int v0, p2, v4

    aget-byte v0, p1, v0

    and-int/lit16 v11, v0, 0xff

    .line 93
    ushr-int/lit8 v0, v11, 0x2

    and-int/lit8 v8, v0, 0x3f

    .line 94
    shl-int/lit8 v0, v11, 0x4

    and-int/lit8 v9, v0, 0x3f

    .line 96
    iget-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bke:[B

    aget-byte v0, v0, v8

    move-object/from16 v1, p4

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 97
    iget-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bke:[B

    aget-byte v0, v0, v9

    move-object/from16 v1, p4

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 98
    iget-byte v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bkf:B

    move-object/from16 v1, p4

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 99
    iget-byte v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bkf:B

    move-object/from16 v1, p4

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 100
    goto :goto_1

    .line 102
    :pswitch_2
    add-int v0, p2, v4

    aget-byte v0, p1, v0

    and-int/lit16 v11, v0, 0xff

    .line 103
    add-int v0, p2, v4

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v12, v0, 0xff

    .line 105
    ushr-int/lit8 v0, v11, 0x2

    and-int/lit8 v8, v0, 0x3f

    .line 106
    shl-int/lit8 v0, v11, 0x4

    ushr-int/lit8 v1, v12, 0x4

    or-int/2addr v0, v1

    and-int/lit8 v9, v0, 0x3f

    .line 107
    shl-int/lit8 v0, v12, 0x2

    and-int/lit8 v10, v0, 0x3f

    .line 109
    iget-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bke:[B

    aget-byte v0, v0, v8

    move-object/from16 v1, p4

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 110
    iget-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bke:[B

    aget-byte v0, v0, v9

    move-object/from16 v1, p4

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 111
    iget-object v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bke:[B

    aget-byte v0, v0, v10

    move-object/from16 v1, p4

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 112
    iget-byte v0, p0, Lorg/spongycastle/util/encoders/Base64Encoder;->bkf:B

    move-object/from16 v1, p4

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 116
    :goto_1
    div-int/lit8 v0, v4, 0x3

    mul-int/lit8 v0, v0, 0x4

    if-nez v3, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    const/4 v1, 0x4

    :goto_2
    add-int/2addr v0, v1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
