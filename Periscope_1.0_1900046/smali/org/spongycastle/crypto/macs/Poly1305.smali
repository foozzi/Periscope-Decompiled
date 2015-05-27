.class public Lorg/spongycastle/crypto/macs/Poly1305;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# instance fields
.field private final aEX:Lorg/spongycastle/crypto/BlockCipher;

.field private final aHB:[B

.field private final aHz:[B

.field private aNU:I

.field private aNV:I

.field private aNW:I

.field private aNX:I

.field private aNY:I

.field private aNZ:I

.field private aOa:I

.field private aOb:I

.field private aOc:I

.field private aOd:I

.field private aOe:I

.field private aOf:I

.field private aOg:I

.field private aOh:I

.field private aOi:I

.field private aOj:I

.field private aOk:I

.field private aOl:I

.field private aOm:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aHz:[B

    .line 47
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aHB:[B

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aOh:I

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aHz:[B

    .line 47
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aHB:[B

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aOh:I

    .line 68
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Poly1305 requires a 128 bit block cipher."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    .line 73
    return-void
.end method

.method private iV()V
    .locals 26

    .line 198
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOh:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aHB:[B

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aOh:I

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 201
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOh:I

    add-int/lit8 v6, v0, 0x1

    :goto_0
    const/16 v0, 0x10

    if-ge v6, v0, :cond_0

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aHB:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v6

    .line 201
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 207
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aHB:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->ᐟ([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v6, v2, v0

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aHB:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->ᐟ([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v8, v2, v0

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aHB:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->ᐟ([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v10, v2, v0

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aHB:[B

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->ᐟ([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v12, v2, v0

    .line 212
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOi:I

    int-to-long v0, v0

    const-wide/32 v2, 0x3ffffff

    and-long/2addr v2, v6

    add-long/2addr v0, v2

    long-to-int v0, v0

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aOi:I

    .line 213
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOj:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long v2, v8, v2

    or-long/2addr v2, v6

    const/16 v4, 0x1a

    ushr-long/2addr v2, v4

    const-wide/32 v4, 0x3ffffff

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aOj:I

    .line 214
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOk:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long v2, v10, v2

    or-long/2addr v2, v8

    const/16 v4, 0x14

    ushr-long/2addr v2, v4

    const-wide/32 v4, 0x3ffffff

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aOk:I

    .line 215
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOl:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long v2, v12, v2

    or-long/2addr v2, v10

    const/16 v4, 0xe

    ushr-long/2addr v2, v4

    const-wide/32 v4, 0x3ffffff

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aOl:I

    .line 216
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOm:I

    int-to-long v0, v0

    const/16 v2, 0x8

    ushr-long v2, v12, v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aOm:I

    .line 218
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOh:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 220
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOm:I

    const/high16 v1, 0x1000000

    add-int/2addr v0, v1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aOm:I

    .line 223
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOi:I

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aNU:I

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/macs/Poly1305;->ᔅ(II)J

    move-result-wide v0

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/crypto/macs/Poly1305;->aOj:I

    move-object/from16 v3, p0

    iget v3, v3, Lorg/spongycastle/crypto/macs/Poly1305;->aOc:I

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/macs/Poly1305;->ᔅ(II)J

    move-result-wide v2

    add-long/2addr v0, v2

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/crypto/macs/Poly1305;->aOk:I

    move-object/from16 v3, p0

    iget v3, v3, Lorg/spongycastle/crypto/macs/Poly1305;->aOb:I

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/macs/Poly1305;->ᔅ(II)J

    move-result-wide v2

    add-long/2addr v0, v2

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/crypto/macs/Poly1305;->aOl:I

    move-object/from16 v3, p0

    iget v3, v3, Lorg/spongycastle/crypto/macs/Poly1305;->aOa:I

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/macs/Poly1305;->ᔅ(II)J

    move-result-wide v2

    add-long/2addr v0, v2

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/crypto/macs/Poly1305;->aOm:I

    move-object/from16 v3, p0

    iget v3, v3, Lorg/spongycastle/crypto/macs/Poly1305;->aNZ:I

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/macs/Poly1305;->ᔅ(II)J

    move-result-wide v2

    add-long v14, v0, v2

    .line 224
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOi:I

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aNV:I

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/macs/Poly1305;->ᔅ(II)J

    move-result-wide v0

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/crypto/macs/Poly1305;->aOj:I

    move-object/from16 v3, p0

    iget v3, v3, Lorg/spongycastle/crypto/macs/Poly1305;->aNU:I

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/macs/Poly1305;->ᔅ(II)J

    move-result-wide v2

    add-long/2addr v0, v2

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/crypto/macs/Poly1305;->aOk:I

    move-object/from16 v3, p0

    iget v3, v3, Lorg/spongycastle/crypto/macs/Poly1305;->aOc:I

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/macs/Poly1305;->ᔅ(II)J

    move-result-wide v2

    add-long/2addr v0, v2

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/crypto/macs/Poly1305;->aOl:I

    move-object/from16 v3, p0

    iget v3, v3, Lorg/spongycastle/crypto/macs/Poly1305;->aOb:I

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/macs/Poly1305;->ᔅ(II)J

    move-result-wide v2

    add-long/2addr v0, v2

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/crypto/macs/Poly1305;->aOm:I

    move-object/from16 v3, p0

    iget v3, v3, Lorg/spongycastle/crypto/macs/Poly1305;->aOa:I

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/macs/Poly1305;->ᔅ(II)J

    move-result-wide v2

    add-long v16, v0, v2

    .line 225
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOi:I

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aNW:I

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/macs/Poly1305;->ᔅ(II)J

    move-result-wide v0

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/crypto/macs/Poly1305;->aOj:I

    move-object/from16 v3, p0

    iget v3, v3, Lorg/spongycastle/crypto/macs/Poly1305;->aNV:I

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/macs/Poly1305;->ᔅ(II)J

    move-result-wide v2

    add-long/2addr v0, v2

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/crypto/macs/Poly1305;->aOk:I

    move-object/from16 v3, p0

    iget v3, v3, Lorg/spongycastle/crypto/macs/Poly1305;->aNU:I

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/macs/Poly1305;->ᔅ(II)J

    move-result-wide v2

    add-long/2addr v0, v2

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/crypto/macs/Poly1305;->aOl:I

    move-object/from16 v3, p0

    iget v3, v3, Lorg/spongycastle/crypto/macs/Poly1305;->aOc:I

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/macs/Poly1305;->ᔅ(II)J

    move-result-wide v2

    add-long/2addr v0, v2

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/crypto/macs/Poly1305;->aOm:I

    move-object/from16 v3, p0

    iget v3, v3, Lorg/spongycastle/crypto/macs/Poly1305;->aOb:I

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/macs/Poly1305;->ᔅ(II)J

    move-result-wide v2

    add-long v18, v0, v2

    .line 226
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOi:I

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aNX:I

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/macs/Poly1305;->ᔅ(II)J

    move-result-wide v0

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/crypto/macs/Poly1305;->aOj:I

    move-object/from16 v3, p0

    iget v3, v3, Lorg/spongycastle/crypto/macs/Poly1305;->aNW:I

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/macs/Poly1305;->ᔅ(II)J

    move-result-wide v2

    add-long/2addr v0, v2

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/crypto/macs/Poly1305;->aOk:I

    move-object/from16 v3, p0

    iget v3, v3, Lorg/spongycastle/crypto/macs/Poly1305;->aNV:I

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/macs/Poly1305;->ᔅ(II)J

    move-result-wide v2

    add-long/2addr v0, v2

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/crypto/macs/Poly1305;->aOl:I

    move-object/from16 v3, p0

    iget v3, v3, Lorg/spongycastle/crypto/macs/Poly1305;->aNU:I

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/macs/Poly1305;->ᔅ(II)J

    move-result-wide v2

    add-long/2addr v0, v2

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/crypto/macs/Poly1305;->aOm:I

    move-object/from16 v3, p0

    iget v3, v3, Lorg/spongycastle/crypto/macs/Poly1305;->aOc:I

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/macs/Poly1305;->ᔅ(II)J

    move-result-wide v2

    add-long v20, v0, v2

    .line 227
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOi:I

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aNY:I

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/macs/Poly1305;->ᔅ(II)J

    move-result-wide v0

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/crypto/macs/Poly1305;->aOj:I

    move-object/from16 v3, p0

    iget v3, v3, Lorg/spongycastle/crypto/macs/Poly1305;->aNX:I

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/macs/Poly1305;->ᔅ(II)J

    move-result-wide v2

    add-long/2addr v0, v2

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/crypto/macs/Poly1305;->aOk:I

    move-object/from16 v3, p0

    iget v3, v3, Lorg/spongycastle/crypto/macs/Poly1305;->aNW:I

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/macs/Poly1305;->ᔅ(II)J

    move-result-wide v2

    add-long/2addr v0, v2

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/crypto/macs/Poly1305;->aOl:I

    move-object/from16 v3, p0

    iget v3, v3, Lorg/spongycastle/crypto/macs/Poly1305;->aNV:I

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/macs/Poly1305;->ᔅ(II)J

    move-result-wide v2

    add-long/2addr v0, v2

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/crypto/macs/Poly1305;->aOm:I

    move-object/from16 v3, p0

    iget v3, v3, Lorg/spongycastle/crypto/macs/Poly1305;->aNU:I

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/macs/Poly1305;->ᔅ(II)J

    move-result-wide v2

    add-long v22, v0, v2

    .line 230
    long-to-int v0, v14

    const v1, 0x3ffffff

    and-int/2addr v0, v1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aOi:I

    const/16 v0, 0x1a

    ushr-long v24, v14, v0

    .line 231
    add-long v16, v16, v24

    move-wide/from16 v0, v16

    long-to-int v0, v0

    const v1, 0x3ffffff

    and-int/2addr v0, v1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aOj:I

    const/16 v0, 0x1a

    ushr-long v0, v16, v0

    const-wide/16 v2, -0x1

    and-long v24, v0, v2

    .line 232
    add-long v18, v18, v24

    move-wide/from16 v0, v18

    long-to-int v0, v0

    const v1, 0x3ffffff

    and-int/2addr v0, v1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aOk:I

    const/16 v0, 0x1a

    ushr-long v0, v18, v0

    const-wide/16 v2, -0x1

    and-long v24, v0, v2

    .line 233
    add-long v20, v20, v24

    move-wide/from16 v0, v20

    long-to-int v0, v0

    const v1, 0x3ffffff

    and-int/2addr v0, v1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aOl:I

    const/16 v0, 0x1a

    ushr-long v24, v20, v0

    .line 234
    add-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    const v1, 0x3ffffff

    and-int/2addr v0, v1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aOm:I

    const/16 v0, 0x1a

    ushr-long v24, v22, v0

    .line 235
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOi:I

    int-to-long v0, v0

    const-wide/16 v2, 0x5

    mul-long v2, v2, v24

    add-long/2addr v0, v2

    long-to-int v0, v0

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aOi:I

    .line 236
    return-void
.end method

.method private ˏ([B[B)V
    .locals 9

    .line 114
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    array-length v0, p2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Poly1305 requires a 128 bit IV."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1
    invoke-static {p1}, Lorg/spongycastle/crypto/generators/Poly1305KeyGenerator;->ᐟ([B)V

    .line 122
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->ᐟ([BI)I

    move-result v4

    .line 123
    const/16 v0, 0x14

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->ᐟ([BI)I

    move-result v5

    .line 124
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->ᐟ([BI)I

    move-result v6

    .line 125
    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->ᐟ([BI)I

    move-result v7

    .line 127
    const v0, 0x3ffffff

    and-int/2addr v0, v4

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aNU:I

    ushr-int/lit8 v4, v4, 0x1a

    shl-int/lit8 v0, v5, 0x6

    or-int/2addr v4, v0

    .line 128
    const v0, 0x3ffff03

    and-int/2addr v0, v4

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aNV:I

    ushr-int/lit8 v5, v5, 0x14

    shl-int/lit8 v0, v6, 0xc

    or-int/2addr v5, v0

    .line 129
    const v0, 0x3ffc0ff

    and-int/2addr v0, v5

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aNW:I

    ushr-int/lit8 v6, v6, 0xe

    shl-int/lit8 v0, v7, 0x12

    or-int/2addr v6, v0

    .line 130
    const v0, 0x3f03fff

    and-int/2addr v0, v6

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aNX:I

    ushr-int/lit8 v7, v7, 0x8

    .line 131
    const v0, 0xfffff

    and-int/2addr v0, v7

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aNY:I

    .line 134
    iget v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aNV:I

    mul-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aNZ:I

    .line 135
    iget v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aNW:I

    mul-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aOa:I

    .line 136
    iget v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aNX:I

    mul-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aOb:I

    .line 137
    iget v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aNY:I

    mul-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aOc:I

    .line 140
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    if-nez v0, :cond_2

    .line 142
    move-object v8, p1

    goto :goto_0

    .line 147
    :cond_2
    const/16 v0, 0x10

    new-array v8, v0, [B

    .line 148
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-direct {v1, p1, v2, v3}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 149
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p2, v1, v8, v2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 152
    :goto_0
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lorg/spongycastle/util/Pack;->ᐟ([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aOd:I

    .line 153
    const/4 v0, 0x4

    invoke-static {v8, v0}, Lorg/spongycastle/util/Pack;->ᐟ([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aOe:I

    .line 154
    const/16 v0, 0x8

    invoke-static {v8, v0}, Lorg/spongycastle/util/Pack;->ᐟ([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aOf:I

    .line 155
    const/16 v0, 0xc

    invoke-static {v8, v0}, Lorg/spongycastle/util/Pack;->ᐟ([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aOg:I

    .line 156
    return-void
.end method

.method private static final ᔅ(II)J
    .locals 4

    .line 304
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 21

    .line 242
    add-int/lit8 v0, p2, 0x10

    move-object/from16 v1, p1

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 244
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "Output buffer is too short."

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOh:I

    if-lez v0, :cond_1

    .line 250
    invoke-direct/range {p0 .. p0}, Lorg/spongycastle/crypto/macs/Poly1305;->iV()V

    .line 255
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOi:I

    ushr-int/lit8 v14, v0, 0x1a

    .line 256
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOi:I

    const v1, 0x3ffffff

    and-int/2addr v0, v1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aOi:I

    .line 257
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOj:I

    add-int/2addr v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aOj:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOj:I

    ushr-int/lit8 v14, v0, 0x1a

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOj:I

    const v1, 0x3ffffff

    and-int/2addr v0, v1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aOj:I

    .line 258
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOk:I

    add-int/2addr v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aOk:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOk:I

    ushr-int/lit8 v14, v0, 0x1a

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOk:I

    const v1, 0x3ffffff

    and-int/2addr v0, v1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aOk:I

    .line 259
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOl:I

    add-int/2addr v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aOl:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOl:I

    ushr-int/lit8 v14, v0, 0x1a

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOl:I

    const v1, 0x3ffffff

    and-int/2addr v0, v1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aOl:I

    .line 260
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOm:I

    add-int/2addr v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aOm:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOm:I

    ushr-int/lit8 v14, v0, 0x1a

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOm:I

    const v1, 0x3ffffff

    and-int/2addr v0, v1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aOm:I

    .line 261
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOi:I

    mul-int/lit8 v1, v14, 0x5

    add-int/2addr v0, v1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aOi:I

    .line 264
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOi:I

    add-int/lit8 v15, v0, 0x5

    ushr-int/lit8 v14, v15, 0x1a

    const v0, 0x3ffffff

    and-int/2addr v15, v0

    .line 265
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOj:I

    add-int v16, v0, v14

    ushr-int/lit8 v14, v16, 0x1a

    const v0, 0x3ffffff

    and-int v16, v16, v0

    .line 266
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOk:I

    add-int v17, v0, v14

    ushr-int/lit8 v14, v17, 0x1a

    const v0, 0x3ffffff

    and-int v17, v17, v0

    .line 267
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOl:I

    add-int v18, v0, v14

    ushr-int/lit8 v14, v18, 0x1a

    const v0, 0x3ffffff

    and-int v18, v18, v0

    .line 268
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOm:I

    add-int/2addr v0, v14

    const/high16 v1, 0x4000000

    sub-int v19, v0, v1

    .line 270
    ushr-int/lit8 v0, v19, 0x1f

    add-int/lit8 v14, v0, -0x1

    .line 271
    xor-int/lit8 v20, v14, -0x1

    .line 272
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOi:I

    and-int v0, v0, v20

    and-int v1, v15, v14

    or-int/2addr v0, v1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aOi:I

    .line 273
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOj:I

    and-int v0, v0, v20

    and-int v1, v16, v14

    or-int/2addr v0, v1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aOj:I

    .line 274
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOk:I

    and-int v0, v0, v20

    and-int v1, v17, v14

    or-int/2addr v0, v1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aOk:I

    .line 275
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOl:I

    and-int v0, v0, v20

    and-int v1, v18, v14

    or-int/2addr v0, v1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aOl:I

    .line 276
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOm:I

    and-int v0, v0, v20

    and-int v1, v19, v14

    or-int/2addr v0, v1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aOm:I

    .line 278
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOi:I

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aOj:I

    shl-int/lit8 v1, v1, 0x1a

    or-int/2addr v0, v1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/crypto/macs/Poly1305;->aOd:I

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long v6, v0, v2

    .line 279
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOj:I

    ushr-int/lit8 v0, v0, 0x6

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aOk:I

    shl-int/lit8 v1, v1, 0x14

    or-int/2addr v0, v1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/crypto/macs/Poly1305;->aOe:I

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long v8, v0, v2

    .line 280
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOk:I

    ushr-int/lit8 v0, v0, 0xc

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aOl:I

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/crypto/macs/Poly1305;->aOf:I

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long v10, v0, v2

    .line 281
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->aOl:I

    ushr-int/lit8 v0, v0, 0x12

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/crypto/macs/Poly1305;->aOm:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/crypto/macs/Poly1305;->aOg:I

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long v12, v0, v2

    .line 283
    long-to-int v0, v6

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/spongycastle/util/Pack;->ʿ(I[BI)V

    .line 284
    const/16 v0, 0x20

    ushr-long v0, v6, v0

    add-long/2addr v8, v0

    .line 285
    long-to-int v0, v8

    add-int/lit8 v1, p2, 0x4

    move-object/from16 v2, p1

    invoke-static {v0, v2, v1}, Lorg/spongycastle/util/Pack;->ʿ(I[BI)V

    .line 286
    const/16 v0, 0x20

    ushr-long v0, v8, v0

    add-long/2addr v10, v0

    .line 287
    long-to-int v0, v10

    add-int/lit8 v1, p2, 0x8

    move-object/from16 v2, p1

    invoke-static {v0, v2, v1}, Lorg/spongycastle/util/Pack;->ʿ(I[BI)V

    .line 288
    const/16 v0, 0x20

    ushr-long v0, v10, v0

    add-long/2addr v12, v0

    .line 289
    long-to-int v0, v12

    add-int/lit8 v1, p2, 0xc

    move-object/from16 v2, p1

    invoke-static {v0, v2, v1}, Lorg/spongycastle/util/Pack;->ʿ(I[BI)V

    .line 291
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/crypto/macs/Poly1305;->reset()V

    .line 292
    const/16 v0, 0x10

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 2

    .line 160
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    if-nez v0, :cond_0

    const-string v0, "Poly1305"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Poly1305-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public iO()I
    .locals 1

    .line 165
    const/16 v0, 0x10

    return v0
.end method

.method public reset()V
    .locals 1

    .line 297
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aOh:I

    .line 299
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aOm:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aOl:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aOk:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aOj:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aOi:I

    .line 300
    return-void
.end method

.method public update(B)V
    .locals 3

    .line 171
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aHz:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 172
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aHz:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/spongycastle/crypto/macs/Poly1305;->update([BII)V

    .line 173
    return-void
.end method

.method public update([BII)V
    .locals 5

    .line 179
    const/4 v3, 0x0

    .line 180
    :goto_0
    if-le p3, v3, :cond_1

    .line 182
    iget v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aOh:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 184
    invoke-direct {p0}, Lorg/spongycastle/crypto/macs/Poly1305;->iV()V

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aOh:I

    .line 188
    :cond_0
    sub-int v0, p3, v3

    iget v1, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aOh:I

    rsub-int/lit8 v1, v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 189
    add-int v0, v3, p2

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aHB:[B

    iget v2, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aOh:I

    invoke-static {p1, v0, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    add-int/2addr v3, v4

    .line 191
    iget v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aOh:I

    add-int/2addr v0, v4

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aOh:I

    .line 192
    goto :goto_0

    .line 194
    :cond_1
    return-void
.end method

.method public ˊ(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 4

    .line 86
    const/4 v2, 0x0

    .line 88
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    if-eqz v0, :cond_1

    .line 90
    instance-of v0, p1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Poly1305 requires an IV when used with a block cipher."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object v3, v0

    .line 96
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    .line 97
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p1

    .line 100
    :cond_1
    instance-of v0, p1, Lorg/spongycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_2

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Poly1305 requires a key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    move-object v3, v0

    .line 107
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lorg/spongycastle/crypto/macs/Poly1305;->ˏ([B[B)V

    .line 109
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/Poly1305;->reset()V

    .line 110
    return-void
.end method
