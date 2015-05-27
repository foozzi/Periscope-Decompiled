.class public final Lorg/spongycastle/crypto/engines/TwofishEngine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# static fields
.field private static final aMk:[[B


# instance fields
.field private aIY:Z

.field private aIZ:[B

.field private aMl:[I

.field private aMm:[I

.field private aMn:[I

.field private aMo:[I

.field private aMp:[I

.field private aMq:[I

.field private aMr:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/16 v1, 0x100

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x100

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    return-void

    :array_0
    .array-data 1
        -0x57t
        0x67t
        -0x4dt
        -0x18t
        0x4t
        -0x3t
        -0x5dt
        0x76t
        -0x66t
        -0x6et
        -0x80t
        0x78t
        -0x1ct
        -0x23t
        -0x2ft
        0x38t
        0xdt
        -0x3at
        0x35t
        -0x68t
        0x18t
        -0x9t
        -0x14t
        0x6ct
        0x43t
        0x75t
        0x37t
        0x26t
        -0x6t
        0x13t
        -0x6ct
        0x48t
        -0xet
        -0x30t
        -0x75t
        0x30t
        -0x7ct
        0x54t
        -0x21t
        0x23t
        0x19t
        0x5bt
        0x3dt
        0x59t
        -0xdt
        -0x52t
        -0x5et
        -0x7et
        0x63t
        0x1t
        -0x7dt
        0x2et
        -0x27t
        0x51t
        -0x65t
        0x7ct
        -0x5at
        -0x15t
        -0x5bt
        -0x42t
        0x16t
        0xct
        -0x1dt
        0x61t
        -0x40t
        -0x74t
        0x3at
        -0xbt
        0x73t
        0x2ct
        0x25t
        0xbt
        -0x45t
        0x4et
        -0x77t
        0x6bt
        0x53t
        0x6at
        -0x4ct
        -0xft
        -0x1ft
        -0x1at
        -0x43t
        0x45t
        -0x1et
        -0xct
        -0x4at
        0x66t
        -0x34t
        -0x6bt
        0x3t
        0x56t
        -0x2ct
        0x1ct
        0x1et
        -0x29t
        -0x5t
        -0x3dt
        -0x72t
        -0x4bt
        -0x17t
        -0x31t
        -0x41t
        -0x46t
        -0x16t
        0x77t
        0x39t
        -0x51t
        0x33t
        -0x37t
        0x62t
        0x71t
        -0x7ft
        0x79t
        0x9t
        -0x53t
        0x24t
        -0x33t
        -0x7t
        -0x28t
        -0x1bt
        -0x3bt
        -0x47t
        0x4dt
        0x44t
        0x8t
        -0x7at
        -0x19t
        -0x5ft
        0x1dt
        -0x56t
        -0x13t
        0x6t
        0x70t
        -0x4et
        -0x2et
        0x41t
        0x7bt
        -0x60t
        0x11t
        0x31t
        -0x3et
        0x27t
        -0x70t
        0x20t
        -0xat
        0x60t
        -0x1t
        -0x6at
        0x5ct
        -0x4ft
        -0x55t
        -0x62t
        -0x64t
        0x52t
        0x1bt
        0x5ft
        -0x6dt
        0xat
        -0x11t
        -0x6ft
        -0x7bt
        0x49t
        -0x12t
        0x2dt
        0x4ft
        -0x71t
        0x3bt
        0x47t
        -0x79t
        0x6dt
        0x46t
        -0x2at
        0x3et
        0x69t
        0x64t
        0x2at
        -0x32t
        -0x35t
        0x2ft
        -0x4t
        -0x69t
        0x5t
        0x7at
        -0x54t
        0x7ft
        -0x2bt
        0x1at
        0x4bt
        0xet
        -0x59t
        0x5at
        0x28t
        0x14t
        0x3ft
        0x29t
        -0x78t
        0x3ct
        0x4ct
        0x2t
        -0x48t
        -0x26t
        -0x50t
        0x17t
        0x55t
        0x1ft
        -0x76t
        0x7dt
        0x57t
        -0x39t
        -0x73t
        0x74t
        -0x49t
        -0x3ct
        -0x61t
        0x72t
        0x7et
        0x15t
        0x22t
        0x12t
        0x58t
        0x7t
        -0x67t
        0x34t
        0x6et
        0x50t
        -0x22t
        0x68t
        0x65t
        -0x44t
        -0x25t
        -0x8t
        -0x38t
        -0x58t
        0x2bt
        0x40t
        -0x24t
        -0x2t
        0x32t
        -0x5ct
        -0x36t
        0x10t
        0x21t
        -0x10t
        -0x2dt
        0x5dt
        0xft
        0x0t
        0x6ft
        -0x63t
        0x36t
        0x42t
        0x4at
        0x5et
        -0x3ft
        -0x20t
    .end array-data

    :array_1
    .array-data 1
        0x75t
        -0xdt
        -0x3at
        -0xct
        -0x25t
        0x7bt
        -0x5t
        -0x38t
        0x4at
        -0x2dt
        -0x1at
        0x6bt
        0x45t
        0x7dt
        -0x18t
        0x4bt
        -0x2at
        0x32t
        -0x28t
        -0x3t
        0x37t
        0x71t
        -0xft
        -0x1ft
        0x30t
        0xft
        -0x8t
        0x1bt
        -0x79t
        -0x6t
        0x6t
        0x3ft
        0x5et
        -0x46t
        -0x52t
        0x5bt
        -0x76t
        0x0t
        -0x44t
        -0x63t
        0x6dt
        -0x3ft
        -0x4ft
        0xet
        -0x80t
        0x5dt
        -0x2et
        -0x2bt
        -0x60t
        -0x7ct
        0x7t
        0x14t
        -0x4bt
        -0x70t
        0x2ct
        -0x5dt
        -0x4et
        0x73t
        0x4ct
        0x54t
        -0x6et
        0x74t
        0x36t
        0x51t
        0x38t
        -0x50t
        -0x43t
        0x5at
        -0x4t
        0x60t
        0x62t
        -0x6at
        0x6ct
        0x42t
        -0x9t
        0x10t
        0x7ct
        0x28t
        0x27t
        -0x74t
        0x13t
        -0x6bt
        -0x64t
        -0x39t
        0x24t
        0x46t
        0x3bt
        0x70t
        -0x36t
        -0x1dt
        -0x7bt
        -0x35t
        0x11t
        -0x30t
        -0x6dt
        -0x48t
        -0x5at
        -0x7dt
        0x20t
        -0x1t
        -0x61t
        0x77t
        -0x3dt
        -0x34t
        0x3t
        0x6ft
        0x8t
        -0x41t
        0x40t
        -0x19t
        0x2bt
        -0x1et
        0x79t
        0xct
        -0x56t
        -0x7et
        0x41t
        0x3at
        -0x16t
        -0x47t
        -0x1ct
        -0x66t
        -0x5ct
        -0x69t
        0x7et
        -0x26t
        0x7at
        0x17t
        0x66t
        -0x6ct
        -0x5ft
        0x1dt
        0x3dt
        -0x10t
        -0x22t
        -0x4dt
        0xbt
        0x72t
        -0x59t
        0x1ct
        -0x11t
        -0x2ft
        0x53t
        0x3et
        -0x71t
        0x33t
        0x26t
        0x5ft
        -0x14t
        0x76t
        0x2at
        0x49t
        -0x7ft
        -0x78t
        -0x12t
        0x21t
        -0x3ct
        0x1at
        -0x15t
        -0x27t
        -0x3bt
        0x39t
        -0x67t
        -0x33t
        -0x53t
        0x31t
        -0x75t
        0x1t
        0x18t
        0x23t
        -0x23t
        0x1ft
        0x4et
        0x2dt
        -0x7t
        0x48t
        0x4ft
        -0xet
        0x65t
        -0x72t
        0x78t
        0x5ct
        0x58t
        0x19t
        -0x73t
        -0x1bt
        -0x68t
        0x57t
        0x67t
        0x7ft
        0x5t
        0x64t
        -0x51t
        0x63t
        -0x4at
        -0x2t
        -0xbt
        -0x49t
        0x3ct
        -0x5bt
        -0x32t
        -0x17t
        0x68t
        0x44t
        -0x20t
        0x4dt
        0x43t
        0x69t
        0x29t
        0x2et
        -0x54t
        0x15t
        0x59t
        -0x58t
        0xat
        -0x62t
        0x6et
        0x47t
        -0x21t
        0x34t
        0x35t
        0x6at
        -0x31t
        -0x24t
        0x22t
        -0x37t
        -0x40t
        -0x65t
        -0x77t
        -0x2ct
        -0x13t
        -0x55t
        0x12t
        -0x5et
        0xdt
        0x52t
        -0x45t
        0x2t
        0x2ft
        -0x57t
        -0x29t
        0x61t
        0x1et
        -0x4ct
        0x50t
        0x4t
        -0xat
        -0x3et
        0x16t
        0x25t
        -0x7at
        0x56t
        0x55t
        0x9t
        -0x42t
        -0x6ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 9

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aIY:Z

    .line 209
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMl:[I

    .line 210
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMm:[I

    .line 211
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMn:[I

    .line 212
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMo:[I

    .line 221
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMr:I

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aIZ:[B

    .line 228
    const/4 v0, 0x2

    new-array v4, v0, [I

    .line 229
    const/4 v0, 0x2

    new-array v5, v0, [I

    .line 230
    const/4 v0, 0x2

    new-array v6, v0, [I

    .line 233
    const/4 v8, 0x0

    :goto_0
    const/16 v0, 0x100

    if-ge v8, v0, :cond_0

    .line 235
    sget-object v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    aget-byte v0, v0, v8

    and-int/lit16 v7, v0, 0xff

    .line 236
    const/4 v0, 0x0

    aput v7, v4, v0

    .line 237
    invoke-direct {p0, v7}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Ī(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    aput v0, v5, v1

    .line 238
    invoke-direct {p0, v7}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Ĭ(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    aput v0, v6, v1

    .line 240
    sget-object v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v1, 0x1

    aget-object v0, v0, v1

    aget-byte v0, v0, v8

    and-int/lit16 v7, v0, 0xff

    .line 241
    const/4 v0, 0x1

    aput v7, v4, v0

    .line 242
    invoke-direct {p0, v7}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Ī(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aput v0, v5, v1

    .line 243
    invoke-direct {p0, v7}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Ĭ(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aput v0, v6, v1

    .line 245
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMl:[I

    const/4 v1, 0x1

    aget v1, v4, v1

    const/4 v2, 0x1

    aget v2, v5, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x1

    aget v2, v6, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x1

    aget v2, v6, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    aput v1, v0, v8

    .line 248
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMm:[I

    const/4 v1, 0x0

    aget v1, v6, v1

    const/4 v2, 0x0

    aget v2, v6, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x0

    aget v2, v5, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x0

    aget v2, v4, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    aput v1, v0, v8

    .line 251
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMn:[I

    const/4 v1, 0x1

    aget v1, v5, v1

    const/4 v2, 0x1

    aget v2, v6, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x1

    aget v2, v4, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x1

    aget v2, v6, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    aput v1, v0, v8

    .line 254
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMo:[I

    const/4 v1, 0x0

    aget v1, v5, v1

    const/4 v2, 0x0

    aget v2, v4, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x0

    aget v2, v6, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x0

    aget v2, v5, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    aput v1, v0, v8

    .line 233
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 257
    :cond_0
    return-void
.end method

.method private Ī(I)I
    .locals 1

    .line 621
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ｭ(I)I

    move-result v0

    xor-int/2addr v0, p1

    return v0
.end method

.method private Ĭ(I)I
    .locals 2

    .line 626
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ｊ(I)I

    move-result v0

    xor-int/2addr v0, p1

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ｭ(I)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private Į(I)I
    .locals 1

    .line 631
    and-int/lit16 v0, p1, 0xff

    return v0
.end method

.method private į(I)I
    .locals 2

    .line 636
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private ŕ(I)I
    .locals 2

    .line 641
    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private ȉ(I)I
    .locals 2

    .line 646
    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private ȓ(I)I
    .locals 4

    .line 651
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMq:[I

    and-int/lit16 v1, p1, 0xff

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMq:[I

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMq:[I

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x200

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMq:[I

    ushr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x201

    aget v1, v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private ɭ(I)I
    .locals 4

    .line 659
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMq:[I

    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMq:[I

    and-int/lit16 v2, p1, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMq:[I

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x200

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMq:[I

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x201

    aget v1, v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private ˇ([B)V
    .locals 21

    .line 341
    const/4 v0, 0x4

    new-array v6, v0, [I

    .line 342
    const/4 v0, 0x4

    new-array v7, v0, [I

    .line 344
    const/4 v0, 0x4

    new-array v8, v0, [I

    .line 345
    const/16 v0, 0x28

    new-array v0, v0, [I

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMp:[I

    .line 347
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMr:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 349
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key size less than 64 bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMr:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    .line 354
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key size larger than 256 bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_1
    const/4 v9, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMr:I

    if-ge v9, v0, :cond_2

    .line 365
    mul-int/lit8 v10, v9, 0x8

    .line 367
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lorg/spongycastle/crypto/engines/TwofishEngine;->י([BI)I

    move-result v0

    aput v0, v6, v9

    .line 368
    add-int/lit8 v0, v10, 0x4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/crypto/engines/TwofishEngine;->י([BI)I

    move-result v0

    aput v0, v7, v9

    .line 370
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMr:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v9

    aget v1, v6, v9

    aget v2, v7, v9

    move-object/from16 v3, p0

    invoke-direct {v3, v1, v2}, Lorg/spongycastle/crypto/engines/TwofishEngine;->৲(II)I

    move-result v1

    aput v1, v8, v0

    .line 363
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 374
    :cond_2
    const/4 v12, 0x0

    :goto_1
    const/16 v0, 0x14

    if-ge v12, v0, :cond_3

    .line 376
    const v0, 0x2020202

    mul-int v9, v12, v0

    .line 377
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v6}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ˊ(I[I)I

    move-result v10

    .line 378
    const v0, 0x1010101

    add-int/2addr v0, v9

    move-object/from16 v1, p0

    invoke-direct {v1, v0, v7}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ˊ(I[I)I

    move-result v11

    .line 379
    shl-int/lit8 v0, v11, 0x8

    ushr-int/lit8 v1, v11, 0x18

    or-int v11, v0, v1

    .line 380
    add-int/2addr v10, v11

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMp:[I

    mul-int/lit8 v1, v12, 0x2

    aput v10, v0, v1

    .line 382
    add-int/2addr v10, v11

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMp:[I

    mul-int/lit8 v1, v12, 0x2

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v2, v10, 0x9

    ushr-int/lit8 v3, v10, 0x17

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 374
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 389
    :cond_3
    const/4 v0, 0x0

    aget v12, v8, v0

    .line 390
    const/4 v0, 0x1

    aget v13, v8, v0

    .line 391
    const/4 v0, 0x2

    aget v14, v8, v0

    .line 392
    const/4 v0, 0x3

    aget v15, v8, v0

    .line 394
    const/16 v0, 0x400

    new-array v0, v0, [I

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMq:[I

    .line 395
    const/16 v20, 0x0

    :goto_2
    move/from16 v0, v20

    const/16 v1, 0x100

    if-ge v0, v1, :cond_4

    .line 397
    move/from16 v19, v20

    move/from16 v18, v20

    move/from16 v17, v20

    move/from16 v16, v20

    .line 398
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMr:I

    and-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 401
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMq:[I

    mul-int/lit8 v1, v20, 0x2

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMl:[I

    sget-object v3, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v4, 0x0

    aget-object v3, v3, v4

    aget-byte v3, v3, v16

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v4, p0

    invoke-direct {v4, v12}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Į(I)I

    move-result v4

    xor-int/2addr v3, v4

    aget v2, v2, v3

    aput v2, v0, v1

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMq:[I

    mul-int/lit8 v1, v20, 0x2

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMm:[I

    sget-object v3, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v4, 0x0

    aget-object v3, v3, v4

    aget-byte v3, v3, v17

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v4, p0

    invoke-direct {v4, v12}, Lorg/spongycastle/crypto/engines/TwofishEngine;->į(I)I

    move-result v4

    xor-int/2addr v3, v4

    aget v2, v2, v3

    aput v2, v0, v1

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMq:[I

    mul-int/lit8 v1, v20, 0x2

    add-int/lit16 v1, v1, 0x200

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMn:[I

    sget-object v3, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    aget-byte v3, v3, v18

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v4, p0

    invoke-direct {v4, v12}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ŕ(I)I

    move-result v4

    xor-int/2addr v3, v4

    aget v2, v2, v3

    aput v2, v0, v1

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMq:[I

    mul-int/lit8 v1, v20, 0x2

    add-int/lit16 v1, v1, 0x201

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMo:[I

    sget-object v3, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    aget-byte v3, v3, v19

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v4, p0

    invoke-direct {v4, v12}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ȉ(I)I

    move-result v4

    xor-int/2addr v3, v4

    aget v2, v2, v3

    aput v2, v0, v1

    .line 405
    goto/16 :goto_3

    .line 407
    :pswitch_1
    sget-object v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v1, 0x1

    aget-object v0, v0, v1

    aget-byte v0, v0, v16

    and-int/lit16 v0, v0, 0xff

    move-object/from16 v1, p0

    invoke-direct {v1, v15}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Į(I)I

    move-result v1

    xor-int v16, v0, v1

    .line 408
    sget-object v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    aget-byte v0, v0, v17

    and-int/lit16 v0, v0, 0xff

    move-object/from16 v1, p0

    invoke-direct {v1, v15}, Lorg/spongycastle/crypto/engines/TwofishEngine;->į(I)I

    move-result v1

    xor-int v17, v0, v1

    .line 409
    sget-object v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    aget-byte v0, v0, v18

    and-int/lit16 v0, v0, 0xff

    move-object/from16 v1, p0

    invoke-direct {v1, v15}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ŕ(I)I

    move-result v1

    xor-int v18, v0, v1

    .line 410
    sget-object v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v1, 0x1

    aget-object v0, v0, v1

    aget-byte v0, v0, v19

    and-int/lit16 v0, v0, 0xff

    move-object/from16 v1, p0

    invoke-direct {v1, v15}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ȉ(I)I

    move-result v1

    xor-int v19, v0, v1

    .line 413
    :pswitch_2
    sget-object v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v1, 0x1

    aget-object v0, v0, v1

    aget-byte v0, v0, v16

    and-int/lit16 v0, v0, 0xff

    move-object/from16 v1, p0

    invoke-direct {v1, v14}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Į(I)I

    move-result v1

    xor-int v16, v0, v1

    .line 414
    sget-object v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v1, 0x1

    aget-object v0, v0, v1

    aget-byte v0, v0, v17

    and-int/lit16 v0, v0, 0xff

    move-object/from16 v1, p0

    invoke-direct {v1, v14}, Lorg/spongycastle/crypto/engines/TwofishEngine;->į(I)I

    move-result v1

    xor-int v17, v0, v1

    .line 415
    sget-object v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    aget-byte v0, v0, v18

    and-int/lit16 v0, v0, 0xff

    move-object/from16 v1, p0

    invoke-direct {v1, v14}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ŕ(I)I

    move-result v1

    xor-int v18, v0, v1

    .line 416
    sget-object v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    aget-byte v0, v0, v19

    and-int/lit16 v0, v0, 0xff

    move-object/from16 v1, p0

    invoke-direct {v1, v14}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ȉ(I)I

    move-result v1

    xor-int v19, v0, v1

    .line 419
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMq:[I

    mul-int/lit8 v1, v20, 0x2

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMl:[I

    sget-object v3, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sget-object v4, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aget-byte v4, v4, v16

    and-int/lit16 v4, v4, 0xff

    move-object/from16 v5, p0

    invoke-direct {v5, v13}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Į(I)I

    move-result v5

    xor-int/2addr v4, v5

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v4, p0

    invoke-direct {v4, v12}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Į(I)I

    move-result v4

    xor-int/2addr v3, v4

    aget v2, v2, v3

    aput v2, v0, v1

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMq:[I

    mul-int/lit8 v1, v20, 0x2

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMm:[I

    sget-object v3, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sget-object v4, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    aget-byte v4, v4, v17

    and-int/lit16 v4, v4, 0xff

    move-object/from16 v5, p0

    invoke-direct {v5, v13}, Lorg/spongycastle/crypto/engines/TwofishEngine;->į(I)I

    move-result v5

    xor-int/2addr v4, v5

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v4, p0

    invoke-direct {v4, v12}, Lorg/spongycastle/crypto/engines/TwofishEngine;->į(I)I

    move-result v4

    xor-int/2addr v3, v4

    aget v2, v2, v3

    aput v2, v0, v1

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMq:[I

    mul-int/lit8 v1, v20, 0x2

    add-int/lit16 v1, v1, 0x200

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMn:[I

    sget-object v3, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    sget-object v4, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aget-byte v4, v4, v18

    and-int/lit16 v4, v4, 0xff

    move-object/from16 v5, p0

    invoke-direct {v5, v13}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ŕ(I)I

    move-result v5

    xor-int/2addr v4, v5

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v4, p0

    invoke-direct {v4, v12}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ŕ(I)I

    move-result v4

    xor-int/2addr v3, v4

    aget v2, v2, v3

    aput v2, v0, v1

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMq:[I

    mul-int/lit8 v1, v20, 0x2

    add-int/lit16 v1, v1, 0x201

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMo:[I

    sget-object v3, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    sget-object v4, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v5, 0x1

    aget-object v4, v4, v5

    aget-byte v4, v4, v19

    and-int/lit16 v4, v4, 0xff

    move-object/from16 v5, p0

    invoke-direct {v5, v13}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ȉ(I)I

    move-result v5

    xor-int/2addr v4, v5

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    move-object/from16 v4, p0

    invoke-direct {v4, v12}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ȉ(I)I

    move-result v4

    xor-int/2addr v3, v4

    aget v2, v2, v3

    aput v2, v0, v1

    .line 395
    :goto_3
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_2

    .line 435
    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private ˊ(I[I)I
    .locals 14

    .line 525
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Į(I)I

    move-result v5

    .line 526
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/engines/TwofishEngine;->į(I)I

    move-result v6

    .line 527
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ŕ(I)I

    move-result v7

    .line 528
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ȉ(I)I

    move-result v8

    .line 529
    const/4 v0, 0x0

    aget v9, p2, v0

    .line 530
    const/4 v0, 0x1

    aget v10, p2, v0

    .line 531
    const/4 v0, 0x2

    aget v11, p2, v0

    .line 532
    const/4 v0, 0x3

    aget v12, p2, v0

    .line 534
    const/4 v13, 0x0

    .line 535
    iget v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMr:I

    and-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 538
    :pswitch_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMl:[I

    sget-object v1, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v9}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Į(I)I

    move-result v2

    xor-int/2addr v1, v2

    aget v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMm:[I

    sget-object v2, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v9}, Lorg/spongycastle/crypto/engines/TwofishEngine;->į(I)I

    move-result v3

    xor-int/2addr v2, v3

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMn:[I

    sget-object v2, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    aget-byte v2, v2, v7

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v9}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ŕ(I)I

    move-result v3

    xor-int/2addr v2, v3

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMo:[I

    sget-object v2, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    aget-byte v2, v2, v8

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v9}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ȉ(I)I

    move-result v3

    xor-int/2addr v2, v3

    aget v1, v1, v2

    xor-int v13, v0, v1

    .line 542
    goto/16 :goto_0

    .line 544
    :pswitch_1
    sget-object v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v1, 0x1

    aget-object v0, v0, v1

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v12}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Į(I)I

    move-result v1

    xor-int v5, v0, v1

    .line 545
    sget-object v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    aget-byte v0, v0, v6

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v12}, Lorg/spongycastle/crypto/engines/TwofishEngine;->į(I)I

    move-result v1

    xor-int v6, v0, v1

    .line 546
    sget-object v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    aget-byte v0, v0, v7

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v12}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ŕ(I)I

    move-result v1

    xor-int v7, v0, v1

    .line 547
    sget-object v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v1, 0x1

    aget-object v0, v0, v1

    aget-byte v0, v0, v8

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v12}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ȉ(I)I

    move-result v1

    xor-int v8, v0, v1

    .line 549
    :pswitch_2
    sget-object v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v1, 0x1

    aget-object v0, v0, v1

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v11}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Į(I)I

    move-result v1

    xor-int v5, v0, v1

    .line 550
    sget-object v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v1, 0x1

    aget-object v0, v0, v1

    aget-byte v0, v0, v6

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v11}, Lorg/spongycastle/crypto/engines/TwofishEngine;->į(I)I

    move-result v1

    xor-int v6, v0, v1

    .line 551
    sget-object v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    aget-byte v0, v0, v7

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v11}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ŕ(I)I

    move-result v1

    xor-int v7, v0, v1

    .line 552
    sget-object v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    aget-byte v0, v0, v8

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v11}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ȉ(I)I

    move-result v1

    xor-int v8, v0, v1

    .line 554
    :pswitch_3
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMl:[I

    sget-object v1, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v2, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v10}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Į(I)I

    move-result v3

    xor-int/2addr v2, v3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v9}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Į(I)I

    move-result v2

    xor-int/2addr v1, v2

    aget v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMm:[I

    sget-object v2, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v3, 0x0

    aget-object v2, v2, v3

    sget-object v3, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    invoke-direct {p0, v10}, Lorg/spongycastle/crypto/engines/TwofishEngine;->į(I)I

    move-result v4

    xor-int/2addr v3, v4

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v9}, Lorg/spongycastle/crypto/engines/TwofishEngine;->į(I)I

    move-result v3

    xor-int/2addr v2, v3

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMn:[I

    sget-object v2, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    sget-object v3, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v4, 0x0

    aget-object v3, v3, v4

    aget-byte v3, v3, v7

    and-int/lit16 v3, v3, 0xff

    invoke-direct {p0, v10}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ŕ(I)I

    move-result v4

    xor-int/2addr v3, v4

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v9}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ŕ(I)I

    move-result v3

    xor-int/2addr v2, v3

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMo:[I

    sget-object v2, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    sget-object v3, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMk:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    aget-byte v3, v3, v8

    and-int/lit16 v3, v3, 0xff

    invoke-direct {p0, v10}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ȉ(I)I

    move-result v4

    xor-int/2addr v3, v4

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v9}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ȉ(I)I

    move-result v3

    xor-int/2addr v2, v3

    aget v1, v1, v2

    xor-int v13, v0, v1

    .line 561
    :goto_0
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private ˋ(I[BI)V
    .locals 2

    .line 675
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 676
    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 677
    add-int/lit8 v0, p3, 0x2

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 678
    add-int/lit8 v0, p3, 0x3

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 679
    return-void
.end method

.method private ˋ([BI[BI)V
    .locals 12

    .line 451
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/TwofishEngine;->י([BI)I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMp:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    xor-int v4, v0, v1

    .line 452
    add-int/lit8 v0, p2, 0x4

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/TwofishEngine;->י([BI)I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMp:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    xor-int v5, v0, v1

    .line 453
    add-int/lit8 v0, p2, 0x8

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/TwofishEngine;->י([BI)I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMp:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    xor-int v6, v0, v1

    .line 454
    add-int/lit8 v0, p2, 0xc

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/TwofishEngine;->י([BI)I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMp:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    xor-int v7, v0, v1

    .line 456
    const/16 v8, 0x8

    .line 458
    const/4 v11, 0x0

    :goto_0
    const/16 v0, 0x10

    if-ge v11, v0, :cond_0

    .line 460
    invoke-direct {p0, v4}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ȓ(I)I

    move-result v9

    .line 461
    invoke-direct {p0, v5}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ɭ(I)I

    move-result v10

    .line 462
    add-int v0, v9, v10

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMp:[I

    move v2, v8

    add-int/lit8 v8, v8, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    xor-int/2addr v6, v0

    .line 463
    ushr-int/lit8 v0, v6, 0x1

    shl-int/lit8 v1, v6, 0x1f

    or-int v6, v0, v1

    .line 464
    shl-int/lit8 v0, v7, 0x1

    ushr-int/lit8 v1, v7, 0x1f

    or-int/2addr v0, v1

    mul-int/lit8 v1, v10, 0x2

    add-int/2addr v1, v9

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMp:[I

    move v3, v8

    add-int/lit8 v8, v8, 0x1

    aget v2, v2, v3

    add-int/2addr v1, v2

    xor-int v7, v0, v1

    .line 466
    invoke-direct {p0, v6}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ȓ(I)I

    move-result v9

    .line 467
    invoke-direct {p0, v7}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ɭ(I)I

    move-result v10

    .line 468
    add-int v0, v9, v10

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMp:[I

    move v2, v8

    add-int/lit8 v8, v8, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    xor-int/2addr v4, v0

    .line 469
    ushr-int/lit8 v0, v4, 0x1

    shl-int/lit8 v1, v4, 0x1f

    or-int v4, v0, v1

    .line 470
    shl-int/lit8 v0, v5, 0x1

    ushr-int/lit8 v1, v5, 0x1f

    or-int/2addr v0, v1

    mul-int/lit8 v1, v10, 0x2

    add-int/2addr v1, v9

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMp:[I

    move v3, v8

    add-int/lit8 v8, v8, 0x1

    aget v2, v2, v3

    add-int/2addr v1, v2

    xor-int v5, v0, v1

    .line 458
    add-int/lit8 v11, v11, 0x2

    goto/16 :goto_0

    .line 473
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMp:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    xor-int/2addr v0, v6

    move/from16 v1, p4

    invoke-direct {p0, v0, p3, v1}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ˋ(I[BI)V

    .line 474
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMp:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    xor-int/2addr v0, v7

    add-int/lit8 v1, p4, 0x4

    invoke-direct {p0, v0, p3, v1}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ˋ(I[BI)V

    .line 475
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMp:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    xor-int/2addr v0, v4

    add-int/lit8 v1, p4, 0x8

    invoke-direct {p0, v0, p3, v1}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ˋ(I[BI)V

    .line 476
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMp:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    xor-int/2addr v0, v5

    add-int/lit8 v1, p4, 0xc

    invoke-direct {p0, v0, p3, v1}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ˋ(I[BI)V

    .line 477
    return-void
.end method

.method private ˎ([BI[BI)V
    .locals 12

    .line 490
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/TwofishEngine;->י([BI)I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMp:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    xor-int v4, v0, v1

    .line 491
    add-int/lit8 v0, p2, 0x4

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/TwofishEngine;->י([BI)I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMp:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    xor-int v5, v0, v1

    .line 492
    add-int/lit8 v0, p2, 0x8

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/TwofishEngine;->י([BI)I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMp:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    xor-int v6, v0, v1

    .line 493
    add-int/lit8 v0, p2, 0xc

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/TwofishEngine;->י([BI)I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMp:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    xor-int v7, v0, v1

    .line 495
    const/16 v8, 0x27

    .line 497
    const/4 v11, 0x0

    :goto_0
    const/16 v0, 0x10

    if-ge v11, v0, :cond_0

    .line 499
    invoke-direct {p0, v4}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ȓ(I)I

    move-result v9

    .line 500
    invoke-direct {p0, v5}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ɭ(I)I

    move-result v10

    .line 501
    mul-int/lit8 v0, v10, 0x2

    add-int/2addr v0, v9

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMp:[I

    move v2, v8

    add-int/lit8 v8, v8, -0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    xor-int/2addr v7, v0

    .line 502
    shl-int/lit8 v0, v6, 0x1

    ushr-int/lit8 v1, v6, 0x1f

    or-int/2addr v0, v1

    add-int v1, v9, v10

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMp:[I

    move v3, v8

    add-int/lit8 v8, v8, -0x1

    aget v2, v2, v3

    add-int/2addr v1, v2

    xor-int v6, v0, v1

    .line 503
    ushr-int/lit8 v0, v7, 0x1

    shl-int/lit8 v1, v7, 0x1f

    or-int v7, v0, v1

    .line 505
    invoke-direct {p0, v6}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ȓ(I)I

    move-result v9

    .line 506
    invoke-direct {p0, v7}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ɭ(I)I

    move-result v10

    .line 507
    mul-int/lit8 v0, v10, 0x2

    add-int/2addr v0, v9

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMp:[I

    move v2, v8

    add-int/lit8 v8, v8, -0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    xor-int/2addr v5, v0

    .line 508
    shl-int/lit8 v0, v4, 0x1

    ushr-int/lit8 v1, v4, 0x1f

    or-int/2addr v0, v1

    add-int v1, v9, v10

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMp:[I

    move v3, v8

    add-int/lit8 v8, v8, -0x1

    aget v2, v2, v3

    add-int/2addr v1, v2

    xor-int v4, v0, v1

    .line 509
    ushr-int/lit8 v0, v5, 0x1

    shl-int/lit8 v1, v5, 0x1f

    or-int v5, v0, v1

    .line 497
    add-int/lit8 v11, v11, 0x2

    goto/16 :goto_0

    .line 512
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMp:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    xor-int/2addr v0, v6

    move/from16 v1, p4

    invoke-direct {p0, v0, p3, v1}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ˋ(I[BI)V

    .line 513
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMp:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    xor-int/2addr v0, v7

    add-int/lit8 v1, p4, 0x4

    invoke-direct {p0, v0, p3, v1}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ˋ(I[BI)V

    .line 514
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMp:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    xor-int/2addr v0, v4

    add-int/lit8 v1, p4, 0x8

    invoke-direct {p0, v0, p3, v1}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ˋ(I[BI)V

    .line 515
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMp:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    xor-int/2addr v0, v5

    add-int/lit8 v1, p4, 0xc

    invoke-direct {p0, v0, p3, v1}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ˋ(I[BI)V

    .line 516
    return-void
.end method

.method private י([BI)I
    .locals 3

    .line 667
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private ৲(II)I
    .locals 3

    .line 575
    move v1, p2

    .line 576
    const/4 v2, 0x0

    :goto_0
    const/4 v0, 0x4

    if-ge v2, v0, :cond_0

    .line 578
    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ﺭ(I)I

    move-result v1

    .line 576
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 580
    :cond_0
    xor-int/2addr v1, p1

    .line 581
    const/4 v2, 0x0

    :goto_1
    const/4 v0, 0x4

    if-ge v2, v0, :cond_1

    .line 583
    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ﺭ(I)I

    move-result v1

    .line 581
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 586
    :cond_1
    return v1
.end method

.method private ﺭ(I)I
    .locals 5

    .line 598
    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v2, v0, 0xff

    .line 599
    shl-int/lit8 v0, v2, 0x1

    and-int/lit16 v1, v2, 0x80

    if-eqz v1, :cond_0

    const/16 v1, 0x14d

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v0, v1

    and-int/lit16 v3, v0, 0xff

    .line 601
    ushr-int/lit8 v0, v2, 0x1

    and-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_1

    const/16 v1, 0xa6

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    xor-int/2addr v0, v1

    xor-int v4, v0, v3

    .line 603
    shl-int/lit8 v0, p1, 0x8

    shl-int/lit8 v1, v4, 0x18

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v3, 0x10

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v4, 0x8

    xor-int/2addr v0, v1

    xor-int/2addr v0, v2

    return v0
.end method

.method private ｊ(I)I
    .locals 2

    .line 608
    shr-int/lit8 v0, p1, 0x1

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0xb4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method private ｭ(I)I
    .locals 2

    .line 614
    shr-int/lit8 v0, p1, 0x2

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0xb4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v0, v1

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    const/16 v1, 0x5a

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 332
    const/16 v0, 0x10

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 1

    .line 286
    const-string v0, "Twofish"

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 324
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aIZ:[B

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aIZ:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ˇ([B)V

    .line 328
    :cond_0
    return-void
.end method

.method public ˊ([BI[BI)I
    .locals 2

    .line 295
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aIZ:[B

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Twofish not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_0
    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 302
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_1
    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 307
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_2
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aIY:Z

    if-eqz v0, :cond_3

    .line 312
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ˋ([BI[BI)V

    goto :goto_0

    .line 316
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ˎ([BI[BI)V

    .line 319
    :goto_0
    const/16 v0, 0x10

    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3

    .line 271
    instance-of v0, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 273
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aIY:Z

    .line 274
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aIZ:[B

    .line 275
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aIZ:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aMr:I

    .line 276
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->aIZ:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/TwofishEngine;->ˇ([B)V

    .line 278
    return-void

    .line 281
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to Twofish init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
