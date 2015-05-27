.class public Lo/ĵ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ﺪ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ĵ$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\ufeaa<Lo/\ufee0;>;"
    }
.end annotation


# static fields
.field private static final li:Lo/ĵ$if;


# instance fields
.field private final eD:Lo/ი;

.field private final lj:Lo/ᵨ$if;

.field private final lk:Lo/ĵ$if;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lo/ĵ$if;

    invoke-direct {v0}, Lo/ĵ$if;-><init>()V

    sput-object v0, Lo/ĵ;->li:Lo/ĵ$if;

    return-void
.end method

.method public constructor <init>(Lo/ი;)V
    .locals 1

    .line 33
    sget-object v0, Lo/ĵ;->li:Lo/ĵ$if;

    invoke-direct {p0, p1, v0}, Lo/ĵ;-><init>(Lo/ი;Lo/ĵ$if;)V

    .line 34
    return-void
.end method

.method constructor <init>(Lo/ი;Lo/ĵ$if;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lo/ĵ;->eD:Lo/ი;

    .line 39
    new-instance v0, Lo/ﺮ;

    invoke-direct {v0, p1}, Lo/ﺮ;-><init>(Lo/ი;)V

    iput-object v0, p0, Lo/ĵ;->lj:Lo/ᵨ$if;

    .line 40
    iput-object p2, p0, Lo/ĵ;->lk:Lo/ĵ$if;

    .line 41
    return-void
.end method

.method private ˊ(Landroid/graphics/Bitmap;Lo/ﺭ;Lo/ﻠ;)Lo/ڔ;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/graphics/Bitmap;Lo/\ufead<Landroid/graphics/Bitmap;>;Lo/\ufee0;)Lo/\u0694<Landroid/graphics/Bitmap;>;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lo/ĵ;->lk:Lo/ĵ$if;

    iget-object v1, p0, Lo/ĵ;->eD:Lo/ი;

    invoke-virtual {v0, p1, v1}, Lo/ĵ$if;->ˋ(Landroid/graphics/Bitmap;Lo/ი;)Lo/ڔ;

    move-result-object v2

    .line 116
    invoke-virtual {p3}, Lo/ﻠ;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Lo/ﻠ;->getIntrinsicHeight()I

    move-result v1

    invoke-interface {p2, v2, v0, v1}, Lo/ﺭ;->ˊ(Lo/ڔ;II)Lo/ڔ;

    move-result-object v3

    .line 118
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-interface {v2}, Lo/ڔ;->recycle()V

    .line 121
    :cond_0
    return-object v3
.end method

.method private ˊ([BLjava/io/OutputStream;)Z
    .locals 4

    .line 88
    const/4 v2, 0x1

    .line 90
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    .line 91
    :catch_0
    move-exception v3

    .line 92
    const-string v0, "GifEncoder"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "GifEncoder"

    const-string v1, "Failed to write data to output stream in GifResourceEncoder"

    invoke-static {v0, v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    :cond_0
    const/4 v2, 0x0

    .line 97
    :goto_0
    return v2
.end method

.method private ˎ([B)Lo/ᵨ;
    .locals 5

    .line 101
    iget-object v0, p0, Lo/ĵ;->lk:Lo/ĵ$if;

    invoke-virtual {v0}, Lo/ĵ$if;->ҭ()Lo/ⅽ;

    move-result-object v2

    .line 102
    invoke-virtual {v2, p1}, Lo/ⅽ;->ˊ([B)Lo/ⅽ;

    .line 103
    invoke-virtual {v2}, Lo/ⅽ;->ィ()Lo/ⅹ;

    move-result-object v3

    .line 105
    iget-object v0, p0, Lo/ĵ;->lk:Lo/ĵ$if;

    iget-object v1, p0, Lo/ĵ;->lj:Lo/ᵨ$if;

    invoke-virtual {v0, v1}, Lo/ĵ$if;->ˋ(Lo/ᵨ$if;)Lo/ᵨ;

    move-result-object v4

    .line 106
    invoke-virtual {v4, v3, p1}, Lo/ᵨ;->ˊ(Lo/ⅹ;[B)V

    .line 107
    invoke-virtual {v4}, Lo/ᵨ;->advance()V

    .line 109
    return-object v4
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 126
    const-string v0, ""

    return-object v0
.end method

.method public bridge synthetic ˊ(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 1

    .line 25
    move-object v0, p1

    check-cast v0, Lo/ڔ;

    invoke-virtual {p0, v0, p2}, Lo/ĵ;->ˊ(Lo/ڔ;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method

.method public ˊ(Lo/ڔ;Ljava/io/OutputStream;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u0694<Lo/\ufee0;>;Ljava/io/OutputStream;)Z"
        }
    .end annotation

    .line 45
    invoke-static {}, Lo/ｯ;->〱()J

    move-result-wide v4

    .line 47
    invoke-interface/range {p1 .. p1}, Lo/ڔ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ﻠ;

    move-object v6, v0

    .line 48
    invoke-virtual {v6}, Lo/ﻠ;->ʋ()Lo/ﺭ;

    move-result-object v7

    .line 49
    instance-of v0, v7, Lo/ᒦ;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v6}, Lo/ﻠ;->getData()[B

    move-result-object v0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v1, v0, v2}, Lo/ĵ;->ˊ([BLjava/io/OutputStream;)Z

    move-result v0

    return v0

    .line 53
    :cond_0
    invoke-virtual {v6}, Lo/ﻠ;->getData()[B

    move-result-object v0

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lo/ĵ;->ˎ([B)Lo/ᵨ;

    move-result-object v8

    .line 55
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ĵ;->lk:Lo/ĵ$if;

    invoke-virtual {v0}, Lo/ĵ$if;->Ү()Lo/ײַ;

    move-result-object v9

    .line 56
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Lo/ײַ;->ˊ(Ljava/io/OutputStream;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    const/4 v0, 0x0

    return v0

    .line 60
    :cond_1
    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v8}, Lo/ᵨ;->getFrameCount()I

    move-result v0

    if-ge v10, v0, :cond_3

    .line 61
    invoke-virtual {v8}, Lo/ᵨ;->ῒ()Landroid/graphics/Bitmap;

    move-result-object v11

    .line 62
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v7, v6}, Lo/ĵ;->ˊ(Landroid/graphics/Bitmap;Lo/ﺭ;Lo/ﻠ;)Lo/ڔ;

    move-result-object v12

    .line 64
    :try_start_0
    invoke-interface {v12}, Lo/ڔ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v9, v0}, Lo/ײַ;->ˎ(Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 65
    const/4 v13, 0x0

    .line 73
    invoke-interface {v12}, Lo/ڔ;->recycle()V

    return v13

    .line 67
    :cond_2
    :try_start_1
    invoke-virtual {v8}, Lo/ᵨ;->ẛ()I

    move-result v13

    .line 68
    invoke-virtual {v8, v13}, Lo/ᵨ;->Ι(I)I

    move-result v14

    .line 69
    invoke-virtual {v9, v14}, Lo/ײַ;->і(I)V

    .line 71
    invoke-virtual {v8}, Lo/ᵨ;->advance()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    invoke-interface {v12}, Lo/ڔ;->recycle()V

    .line 74
    goto :goto_1

    .line 73
    :catchall_0
    move-exception v15

    invoke-interface {v12}, Lo/ڔ;->recycle()V

    throw v15

    .line 60
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {v9}, Lo/ײַ;->Ｌ()Z

    move-result v10

    .line 79
    const-string v0, "GifEncoder"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    const-string v0, "GifEncoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoded gif with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lo/ᵨ;->getFrameCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " frames and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lo/ﻠ;->getData()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4, v5}, Lo/ｯ;->ˎ(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_4
    return v10
.end method
