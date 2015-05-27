.class public Lorg/spongycastle/util/encoders/HexEncoder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/util/encoders/Encoder;


# instance fields
.field protected final bke:[B

.field protected final bkg:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/spongycastle/util/encoders/HexEncoder;->bke:[B

    .line 21
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/util/encoders/HexEncoder;->bkg:[B

    .line 45
    invoke-virtual {p0}, Lorg/spongycastle/util/encoders/HexEncoder;->td()V

    .line 46
    return-void

    :array_0
    .array-data 1
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
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method private static ᐝ(C)Z
    .locals 1

    .line 74
    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_1

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

    .line 25
    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/util/encoders/HexEncoder;->bkg:[B

    array-length v0, v0

    if-ge v3, v0, :cond_0

    .line 27
    iget-object v0, p0, Lorg/spongycastle/util/encoders/HexEncoder;->bkg:[B

    const/4 v1, -0x1

    aput-byte v1, v0, v3

    .line 25
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 30
    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget-object v0, p0, Lorg/spongycastle/util/encoders/HexEncoder;->bke:[B

    array-length v0, v0

    if-ge v3, v0, :cond_1

    .line 32
    iget-object v0, p0, Lorg/spongycastle/util/encoders/HexEncoder;->bkg:[B

    iget-object v1, p0, Lorg/spongycastle/util/encoders/HexEncoder;->bke:[B

    aget-byte v1, v1, v3

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    .line 30
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 35
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/util/encoders/HexEncoder;->bkg:[B

    iget-object v1, p0, Lorg/spongycastle/util/encoders/HexEncoder;->bkg:[B

    const/16 v2, 0x61

    aget-byte v1, v1, v2

    const/16 v2, 0x41

    aput-byte v1, v0, v2

    .line 36
    iget-object v0, p0, Lorg/spongycastle/util/encoders/HexEncoder;->bkg:[B

    iget-object v1, p0, Lorg/spongycastle/util/encoders/HexEncoder;->bkg:[B

    const/16 v2, 0x62

    aget-byte v1, v1, v2

    const/16 v2, 0x42

    aput-byte v1, v0, v2

    .line 37
    iget-object v0, p0, Lorg/spongycastle/util/encoders/HexEncoder;->bkg:[B

    iget-object v1, p0, Lorg/spongycastle/util/encoders/HexEncoder;->bkg:[B

    const/16 v2, 0x63

    aget-byte v1, v1, v2

    const/16 v2, 0x43

    aput-byte v1, v0, v2

    .line 38
    iget-object v0, p0, Lorg/spongycastle/util/encoders/HexEncoder;->bkg:[B

    iget-object v1, p0, Lorg/spongycastle/util/encoders/HexEncoder;->bkg:[B

    const/16 v2, 0x64

    aget-byte v1, v1, v2

    const/16 v2, 0x44

    aput-byte v1, v0, v2

    .line 39
    iget-object v0, p0, Lorg/spongycastle/util/encoders/HexEncoder;->bkg:[B

    iget-object v1, p0, Lorg/spongycastle/util/encoders/HexEncoder;->bkg:[B

    const/16 v2, 0x65

    aget-byte v1, v1, v2

    const/16 v2, 0x45

    aput-byte v1, v0, v2

    .line 40
    iget-object v0, p0, Lorg/spongycastle/util/encoders/HexEncoder;->bkg:[B

    iget-object v1, p0, Lorg/spongycastle/util/encoders/HexEncoder;->bkg:[B

    const/16 v2, 0x66

    aget-byte v1, v1, v2

    const/16 v2, 0x46

    aput-byte v1, v0, v2

    .line 41
    return-void
.end method

.method public ˊ(Ljava/lang/String;Ljava/io/OutputStream;)I
    .locals 7

    .line 147
    const/4 v4, 0x0

    .line 149
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 151
    :goto_0
    if-lez v5, :cond_1

    .line 153
    add-int/lit8 v0, v5, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/spongycastle/util/encoders/HexEncoder;->ᐝ(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    goto :goto_1

    .line 158
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 161
    :cond_1
    :goto_1
    const/4 v6, 0x0

    .line 162
    :goto_2
    if-ge v6, v5, :cond_5

    .line 164
    :goto_3
    if-ge v6, v5, :cond_2

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/spongycastle/util/encoders/HexEncoder;->ᐝ(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 169
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/util/encoders/HexEncoder;->bkg:[B

    move v1, v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget-byte v2, v0, v1

    .line 171
    :goto_4
    if-ge v6, v5, :cond_3

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/spongycastle/util/encoders/HexEncoder;->ᐝ(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 176
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/util/encoders/HexEncoder;->bkg:[B

    move v1, v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget-byte v3, v0, v1

    .line 178
    or-int v0, v2, v3

    if-gez v0, :cond_4

    .line 180
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid characters encountered in Hex string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_4
    shl-int/lit8 v0, v2, 0x4

    or-int/2addr v0, v3

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 185
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 188
    :cond_5
    return v4
.end method

.method public ˊ([BIILjava/io/OutputStream;)I
    .locals 4

    .line 60
    move v2, p2

    :goto_0
    add-int v0, p2, p3

    if-ge v2, v0, :cond_0

    .line 62
    aget-byte v0, p1, v2

    and-int/lit16 v3, v0, 0xff

    .line 64
    iget-object v0, p0, Lorg/spongycastle/util/encoders/HexEncoder;->bke:[B

    ushr-int/lit8 v1, v3, 0x4

    aget-byte v0, v0, v1

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    .line 65
    iget-object v0, p0, Lorg/spongycastle/util/encoders/HexEncoder;->bke:[B

    and-int/lit8 v1, v3, 0xf

    aget-byte v0, v0, v1

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_0
    mul-int/lit8 v0, p3, 0x2

    return v0
.end method
