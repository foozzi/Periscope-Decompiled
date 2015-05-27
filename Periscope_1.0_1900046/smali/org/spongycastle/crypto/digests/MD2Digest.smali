.class public Lorg/spongycastle/crypto/digests/MD2Digest;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/ExtendedDigest;
.implements Lorg/spongycastle/util/Memoable;


# static fields
.field private static final aGd:[B


# instance fields
.field private aFT:[B

.field private aGv:[B

.field private aGw:I

.field private aGx:I

.field private aGy:[B

.field private aGz:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 200
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGd:[B

    return-void

    :array_0
    .array-data 1
        0x29t
        0x2et
        0x43t
        -0x37t
        -0x5et
        -0x28t
        0x7ct
        0x1t
        0x3dt
        0x36t
        0x54t
        -0x5ft
        -0x14t
        -0x10t
        0x6t
        0x13t
        0x62t
        -0x59t
        0x5t
        -0xdt
        -0x40t
        -0x39t
        0x73t
        -0x74t
        -0x68t
        -0x6dt
        0x2bt
        -0x27t
        -0x44t
        0x4ct
        -0x7et
        -0x36t
        0x1et
        -0x65t
        0x57t
        0x3ct
        -0x3t
        -0x2ct
        -0x20t
        0x16t
        0x67t
        0x42t
        0x6ft
        0x18t
        -0x76t
        0x17t
        -0x1bt
        0x12t
        -0x42t
        0x4et
        -0x3ct
        -0x2at
        -0x26t
        -0x62t
        -0x22t
        0x49t
        -0x60t
        -0x5t
        -0xbt
        -0x72t
        -0x45t
        0x2ft
        -0x12t
        0x7at
        -0x57t
        0x68t
        0x79t
        -0x6ft
        0x15t
        -0x4et
        0x7t
        0x3ft
        -0x6ct
        -0x3et
        0x10t
        -0x77t
        0xbt
        0x22t
        0x5ft
        0x21t
        -0x80t
        0x7ft
        0x5dt
        -0x66t
        0x5at
        -0x70t
        0x32t
        0x27t
        0x35t
        0x3et
        -0x34t
        -0x19t
        -0x41t
        -0x9t
        -0x69t
        0x3t
        -0x1t
        0x19t
        0x30t
        -0x4dt
        0x48t
        -0x5bt
        -0x4bt
        -0x2ft
        -0x29t
        0x5et
        -0x6et
        0x2at
        -0x54t
        0x56t
        -0x56t
        -0x3at
        0x4ft
        -0x48t
        0x38t
        -0x2et
        -0x6at
        -0x5ct
        0x7dt
        -0x4at
        0x76t
        -0x4t
        0x6bt
        -0x1et
        -0x64t
        0x74t
        0x4t
        -0xft
        0x45t
        -0x63t
        0x70t
        0x59t
        0x64t
        0x71t
        -0x79t
        0x20t
        -0x7at
        0x5bt
        -0x31t
        0x65t
        -0x1at
        0x2dt
        -0x58t
        0x2t
        0x1bt
        0x60t
        0x25t
        -0x53t
        -0x52t
        -0x50t
        -0x47t
        -0xat
        0x1ct
        0x46t
        0x61t
        0x69t
        0x34t
        0x40t
        0x7et
        0xft
        0x55t
        0x47t
        -0x5dt
        0x23t
        -0x23t
        0x51t
        -0x51t
        0x3at
        -0x3dt
        0x5ct
        -0x7t
        -0x32t
        -0x46t
        -0x3bt
        -0x16t
        0x26t
        0x2ct
        0x53t
        0xdt
        0x6et
        -0x7bt
        0x28t
        -0x7ct
        0x9t
        -0x2dt
        -0x21t
        -0x33t
        -0xct
        0x41t
        -0x7ft
        0x4dt
        0x52t
        0x6at
        -0x24t
        0x37t
        -0x38t
        0x6ct
        -0x3ft
        -0x55t
        -0x6t
        0x24t
        -0x1ft
        0x7bt
        0x8t
        0xct
        -0x43t
        -0x4ft
        0x4at
        0x78t
        -0x78t
        -0x6bt
        -0x75t
        -0x1dt
        0x63t
        -0x18t
        0x6dt
        -0x17t
        -0x35t
        -0x2bt
        -0x2t
        0x3bt
        0x0t
        0x1dt
        0x39t
        -0xet
        -0x11t
        -0x49t
        0xet
        0x66t
        0x58t
        -0x30t
        -0x1ct
        -0x5at
        0x77t
        0x72t
        -0x8t
        -0x15t
        0x75t
        0x4bt
        0xat
        0x31t
        0x44t
        0x50t
        -0x4ct
        -0x71t
        -0x13t
        0x1ft
        0x1at
        -0x25t
        -0x67t
        -0x73t
        0x33t
        -0x61t
        0x11t
        -0x7dt
        0x14t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0x30

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGv:[B

    .line 19
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aFT:[B

    .line 22
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGy:[B

    .line 27
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/MD2Digest;->reset()V

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/MD2Digest;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0x30

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGv:[B

    .line 19
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aFT:[B

    .line 22
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGy:[B

    .line 32
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/MD2Digest;->ˊ(Lorg/spongycastle/crypto/digests/MD2Digest;)V

    .line 33
    return-void
.end method

.method private ˊ(Lorg/spongycastle/crypto/digests/MD2Digest;)V
    .locals 5

    .line 37
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/MD2Digest;->aGv:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGv:[B

    iget-object v2, p1, Lorg/spongycastle/crypto/digests/MD2Digest;->aGv:[B

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    iget v0, p1, Lorg/spongycastle/crypto/digests/MD2Digest;->aGw:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGw:I

    .line 39
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/MD2Digest;->aFT:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aFT:[B

    iget-object v2, p1, Lorg/spongycastle/crypto/digests/MD2Digest;->aFT:[B

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    iget v0, p1, Lorg/spongycastle/crypto/digests/MD2Digest;->aGx:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGx:I

    .line 41
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/MD2Digest;->aGy:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGy:[B

    iget-object v2, p1, Lorg/spongycastle/crypto/digests/MD2Digest;->aGy:[B

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    iget v0, p1, Lorg/spongycastle/crypto/digests/MD2Digest;->aGz:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGz:I

    .line 43
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 5

    .line 73
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aFT:[B

    array-length v0, v0

    iget v1, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGx:I

    sub-int/2addr v0, v1

    int-to-byte v3, v0

    .line 74
    iget v4, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGx:I

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aFT:[B

    array-length v0, v0

    if-ge v4, v0, :cond_0

    .line 76
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aFT:[B

    aput-byte v3, v0, v4

    .line 74
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aFT:[B

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/MD2Digest;->ｰ([B)V

    .line 81
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aFT:[B

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/MD2Digest;->ʳ([B)V

    .line 83
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGy:[B

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/MD2Digest;->ʳ([B)V

    .line 85
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGv:[B

    iget v1, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGw:I

    const/16 v2, 0x10

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/MD2Digest;->reset()V

    .line 89
    const/16 v0, 0x10

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 1

    .line 52
    const-string v0, "MD2"

    return-object v0
.end method

.method public iJ()I
    .locals 1

    .line 61
    const/16 v0, 0x10

    return v0
.end method

.method public iM()I
    .locals 1

    .line 242
    const/16 v0, 0x10

    return v0
.end method

.method public iU()Lorg/spongycastle/util/Memoable;
    .locals 1

    .line 247
    new-instance v0, Lorg/spongycastle/crypto/digests/MD2Digest;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/digests/MD2Digest;-><init>(Lorg/spongycastle/crypto/digests/MD2Digest;)V

    return-object v0
.end method

.method public reset()V
    .locals 3

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGw:I

    .line 97
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGv:[B

    array-length v0, v0

    if-eq v2, v0, :cond_0

    .line 99
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGv:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v2

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGx:I

    .line 102
    const/4 v2, 0x0

    :goto_1
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aFT:[B

    array-length v0, v0

    if-eq v2, v0, :cond_1

    .line 104
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aFT:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v2

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 106
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGz:I

    .line 107
    const/4 v2, 0x0

    :goto_2
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGy:[B

    array-length v0, v0

    if-eq v2, v0, :cond_2

    .line 109
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGy:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v2

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 111
    :cond_2
    return-void
.end method

.method public update(B)V
    .locals 3

    .line 119
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aFT:[B

    iget v1, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGx:I

    aput-byte p1, v0, v1

    .line 121
    iget v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGx:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aFT:[B

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/MD2Digest;->ｰ([B)V

    .line 124
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aFT:[B

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/MD2Digest;->ʳ([B)V

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGx:I

    .line 127
    :cond_0
    return-void
.end method

.method public update([BII)V
    .locals 3

    .line 141
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGx:I

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    .line 143
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/MD2Digest;->update(B)V

    .line 144
    add-int/lit8 p2, p2, 0x1

    .line 145
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 151
    :cond_0
    :goto_1
    const/16 v0, 0x10

    if-le p3, v0, :cond_1

    .line 153
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aFT:[B

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aFT:[B

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/MD2Digest;->ｰ([B)V

    .line 155
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aFT:[B

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/MD2Digest;->ʳ([B)V

    .line 156
    add-int/lit8 p3, p3, -0x10

    .line 157
    add-int/lit8 p2, p2, 0x10

    goto :goto_1

    .line 163
    :cond_1
    :goto_2
    if-lez p3, :cond_2

    .line 165
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/MD2Digest;->update(B)V

    .line 166
    add-int/lit8 p2, p2, 0x1

    .line 167
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    .line 169
    :cond_2
    return-void
.end method

.method protected ʳ([B)V
    .locals 7

    .line 181
    const/4 v4, 0x0

    :goto_0
    const/16 v0, 0x10

    if-ge v4, v0, :cond_0

    .line 183
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGv:[B

    add-int/lit8 v1, v4, 0x10

    aget-byte v2, p1, v4

    aput-byte v2, v0, v1

    .line 184
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGv:[B

    add-int/lit8 v1, v4, 0x20

    aget-byte v2, p1, v4

    iget-object v3, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGv:[B

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 181
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 187
    :cond_0
    const/4 v4, 0x0

    .line 189
    const/4 v5, 0x0

    :goto_1
    const/16 v0, 0x12

    if-ge v5, v0, :cond_2

    .line 191
    const/4 v6, 0x0

    :goto_2
    const/16 v0, 0x30

    if-ge v6, v0, :cond_1

    .line 193
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGv:[B

    aget-byte v1, v0, v6

    sget-object v2, Lorg/spongycastle/crypto/digests/MD2Digest;->aGd:[B

    aget-byte v2, v2, v4

    xor-int/2addr v1, v2

    int-to-byte v4, v1

    aput-byte v4, v0, v6

    .line 194
    and-int/lit16 v4, v4, 0xff

    .line 191
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 196
    :cond_1
    add-int v0, v4, v5

    rem-int/lit16 v4, v0, 0x100

    .line 189
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 198
    :cond_2
    return-void
.end method

.method public ˊ(Lorg/spongycastle/util/Memoable;)V
    .locals 2

    .line 252
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/digests/MD2Digest;

    move-object v1, v0

    .line 254
    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/digests/MD2Digest;->ˊ(Lorg/spongycastle/crypto/digests/MD2Digest;)V

    .line 255
    return-void
.end method

.method protected ｰ([B)V
    .locals 7

    .line 172
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGy:[B

    const/16 v1, 0xf

    aget-byte v5, v0, v1

    .line 173
    const/4 v6, 0x0

    :goto_0
    const/16 v0, 0x10

    if-ge v6, v0, :cond_0

    .line 175
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGy:[B

    aget-byte v1, v0, v6

    sget-object v2, Lorg/spongycastle/crypto/digests/MD2Digest;->aGd:[B

    aget-byte v3, p1, v6

    xor-int/2addr v3, v5

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    .line 176
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/MD2Digest;->aGy:[B

    aget-byte v5, v0, v6

    .line 173
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 178
    :cond_0
    return-void
.end method
