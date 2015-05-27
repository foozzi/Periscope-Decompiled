.class public Lo/ﾝ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ﺀ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ﾝ$ˊ;,
        Lo/ﾝ$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\ufe80<Ljava/io/InputStream;Lo/\ufee0;>;"
    }
.end annotation


# static fields
.field private static final ld:Lo/ﾝ$ˊ;

.field private static final le:Lo/ﾝ$if;


# instance fields
.field private final dV:Landroid/content/Context;

.field private final eD:Lo/ი;

.field private final lf:Lo/ﾝ$ˊ;

.field private final lg:Lo/ﾝ$if;

.field private final lh:Lo/ﺮ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lo/ﾝ$ˊ;

    invoke-direct {v0}, Lo/ﾝ$ˊ;-><init>()V

    sput-object v0, Lo/ﾝ;->ld:Lo/ﾝ$ˊ;

    .line 29
    new-instance v0, Lo/ﾝ$if;

    invoke-direct {v0}, Lo/ﾝ$if;-><init>()V

    sput-object v0, Lo/ﾝ;->le:Lo/ﾝ$if;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/ი;)V
    .locals 2

    .line 42
    sget-object v0, Lo/ﾝ;->ld:Lo/ﾝ$ˊ;

    sget-object v1, Lo/ﾝ;->le:Lo/ﾝ$if;

    invoke-direct {p0, p1, p2, v0, v1}, Lo/ﾝ;-><init>(Landroid/content/Context;Lo/ი;Lo/ﾝ$ˊ;Lo/ﾝ$if;)V

    .line 43
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lo/ი;Lo/ﾝ$ˊ;Lo/ﾝ$if;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lo/ﾝ;->dV:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lo/ﾝ;->eD:Lo/ი;

    .line 50
    iput-object p4, p0, Lo/ﾝ;->lg:Lo/ﾝ$if;

    .line 51
    new-instance v0, Lo/ﺮ;

    invoke-direct {v0, p2}, Lo/ﺮ;-><init>(Lo/ი;)V

    iput-object v0, p0, Lo/ﾝ;->lh:Lo/ﺮ;

    .line 52
    iput-object p3, p0, Lo/ﾝ;->lf:Lo/ﾝ$ˊ;

    .line 53
    return-void
.end method

.method private ˊ(Lo/ᵨ;Lo/ⅹ;[B)Landroid/graphics/Bitmap;
    .locals 1

    .line 89
    invoke-virtual {p1, p2, p3}, Lo/ᵨ;->ˊ(Lo/ⅹ;[B)V

    .line 90
    invoke-virtual {p1}, Lo/ᵨ;->advance()V

    .line 91
    invoke-virtual {p1}, Lo/ᵨ;->ῒ()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private ˊ([BIILo/ⅽ;Lo/ᵨ;)Lo/ｃ;
    .locals 14

    .line 69
    invoke-virtual/range {p4 .. p4}, Lo/ⅽ;->ィ()Lo/ⅹ;

    move-result-object v10

    .line 70
    invoke-virtual {v10}, Lo/ⅹ;->ⅴ()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v10}, Lo/ⅹ;->getStatus()I

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_1
    move-object/from16 v0, p5

    invoke-direct {p0, v0, v10, p1}, Lo/ﾝ;->ˊ(Lo/ᵨ;Lo/ⅹ;[B)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 76
    if-nez v11, :cond_2

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_2
    invoke-static {}, Lo/ᒦ;->ﱢ()Lo/ᒦ;

    move-result-object v12

    .line 82
    new-instance v0, Lo/ﻠ;

    iget-object v1, p0, Lo/ﾝ;->dV:Landroid/content/Context;

    iget-object v2, p0, Lo/ﾝ;->lh:Lo/ﺮ;

    iget-object v3, p0, Lo/ﾝ;->eD:Lo/ი;

    move-object v4, v12

    move/from16 v5, p2

    move/from16 v6, p3

    move-object v7, v10

    move-object v8, p1

    move-object v9, v11

    invoke-direct/range {v0 .. v9}, Lo/ﻠ;-><init>(Landroid/content/Context;Lo/ᵨ$if;Lo/ი;Lo/ﺭ;IILo/ⅹ;[BLandroid/graphics/Bitmap;)V

    move-object v13, v0

    .line 85
    new-instance v0, Lo/ｃ;

    invoke-direct {v0, v13}, Lo/ｃ;-><init>(Lo/ﻠ;)V

    return-object v0
.end method

.method private static ˎ(Ljava/io/InputStream;)[B
    .locals 6

    .line 100
    const/16 v2, 0x4000

    .line 101
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x4000

    invoke-direct {v3, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 104
    const/16 v0, 0x4000

    :try_start_0
    new-array v5, v0, [B

    .line 105
    :goto_0
    invoke-virtual {p0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v0

    move v4, v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 106
    const/4 v0, 0x0

    invoke-virtual {v3, v5, v0, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    goto :goto_1

    .line 109
    :catch_0
    move-exception v4

    .line 110
    const-string v0, "GifResourceDecoder"

    const-string v1, "Error reading data from stream"

    invoke-static {v0, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    :goto_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 96
    const-string v0, ""

    return-object v0
.end method

.method public bridge synthetic ˋ(Ljava/lang/Object;II)Lo/ڔ;
    .locals 1

    .line 26
    move-object v0, p1

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {p0, v0, p2, p3}, Lo/ﾝ;->ˋ(Ljava/io/InputStream;II)Lo/ｃ;

    move-result-object v0

    return-object v0
.end method

.method public ˋ(Ljava/io/InputStream;II)Lo/ｃ;
    .locals 11

    .line 57
    invoke-static {p1}, Lo/ﾝ;->ˎ(Ljava/io/InputStream;)[B

    move-result-object v6

    .line 58
    iget-object v0, p0, Lo/ﾝ;->lf:Lo/ﾝ$ˊ;

    invoke-virtual {v0, v6}, Lo/ﾝ$ˊ;->ˋ([B)Lo/ⅽ;

    move-result-object v7

    .line 59
    iget-object v0, p0, Lo/ﾝ;->lg:Lo/ﾝ$if;

    iget-object v1, p0, Lo/ﾝ;->lh:Lo/ﺮ;

    invoke-virtual {v0, v1}, Lo/ﾝ$if;->ˊ(Lo/ᵨ$if;)Lo/ᵨ;

    move-result-object v8

    .line 61
    move-object v0, p0

    move-object v1, v6

    move v2, p2

    move v3, p3

    move-object v4, v7

    move-object v5, v8

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lo/ﾝ;->ˊ([BIILo/ⅽ;Lo/ᵨ;)Lo/ｃ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 63
    iget-object v0, p0, Lo/ﾝ;->lf:Lo/ﾝ$ˊ;

    invoke-virtual {v0, v7}, Lo/ﾝ$ˊ;->ˊ(Lo/ⅽ;)V

    .line 64
    iget-object v0, p0, Lo/ﾝ;->lg:Lo/ﾝ$if;

    invoke-virtual {v0, v8}, Lo/ﾝ$if;->ˊ(Lo/ᵨ;)V

    return-object v9

    .line 63
    :catchall_0
    move-exception v10

    iget-object v0, p0, Lo/ﾝ;->lf:Lo/ﾝ$ˊ;

    invoke-virtual {v0, v7}, Lo/ﾝ$ˊ;->ˊ(Lo/ⅽ;)V

    .line 64
    iget-object v0, p0, Lo/ﾝ;->lg:Lo/ﾝ$if;

    invoke-virtual {v0, v8}, Lo/ﾝ$if;->ˊ(Lo/ᵨ;)V

    throw v10
.end method
