.class public Lo/ǰ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ﺀ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ǰ$ˊ;,
        Lo/ǰ$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\ufe80<Lo/\uff8c;Lo/\u0138;>;"
    }
.end annotation


# static fields
.field private static final lo:Lo/ǰ$ˊ;

.field private static final lp:Lo/ǰ$if;


# instance fields
.field private final eD:Lo/ი;

.field private id:Ljava/lang/String;

.field private final lq:Lo/ﺀ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufe80<Lo/\uff8c;Landroid/graphics/Bitmap;>;"
        }
    .end annotation
.end field

.field private final lr:Lo/ﺀ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufe80<Ljava/io/InputStream;Lo/\ufee0;>;"
        }
    .end annotation
.end field

.field private final ls:Lo/ǰ$ˊ;

.field private final lt:Lo/ǰ$if;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lo/ǰ$ˊ;

    invoke-direct {v0}, Lo/ǰ$ˊ;-><init>()V

    sput-object v0, Lo/ǰ;->lo:Lo/ǰ$ˊ;

    .line 24
    new-instance v0, Lo/ǰ$if;

    invoke-direct {v0}, Lo/ǰ$if;-><init>()V

    sput-object v0, Lo/ǰ;->lp:Lo/ǰ$if;

    return-void
.end method

.method public constructor <init>(Lo/ﺀ;Lo/ﺀ;Lo/ი;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufe80<Lo/\uff8c;Landroid/graphics/Bitmap;>;Lo/\ufe80<Ljava/io/InputStream;Lo/\ufee0;>;Lo/\u10d8;)V"
        }
    .end annotation

    .line 38
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    sget-object v4, Lo/ǰ;->lo:Lo/ǰ$ˊ;

    sget-object v5, Lo/ǰ;->lp:Lo/ǰ$if;

    invoke-direct/range {v0 .. v5}, Lo/ǰ;-><init>(Lo/ﺀ;Lo/ﺀ;Lo/ი;Lo/ǰ$ˊ;Lo/ǰ$if;)V

    .line 39
    return-void
.end method

.method constructor <init>(Lo/ﺀ;Lo/ﺀ;Lo/ი;Lo/ǰ$ˊ;Lo/ǰ$if;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufe80<Lo/\uff8c;Landroid/graphics/Bitmap;>;Lo/\ufe80<Ljava/io/InputStream;Lo/\ufee0;>;Lo/\u10d8;Lo/\u01f0$\u02ca;Lo/\u01f0$if;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lo/ǰ;->lq:Lo/ﺀ;

    .line 46
    iput-object p2, p0, Lo/ǰ;->lr:Lo/ﺀ;

    .line 47
    iput-object p3, p0, Lo/ǰ;->eD:Lo/ი;

    .line 48
    iput-object p4, p0, Lo/ǰ;->ls:Lo/ǰ$ˊ;

    .line 49
    iput-object p5, p0, Lo/ǰ;->lt:Lo/ǰ$if;

    .line 50
    return-void
.end method

.method private ˊ(Lo/ﾌ;II[B)Lo/ĸ;
    .locals 2

    .line 70
    invoke-virtual {p1}, Lo/ﾌ;->冫()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lo/ǰ;->ˋ(Lo/ﾌ;II[B)Lo/ĸ;

    move-result-object v1

    goto :goto_0

    .line 73
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lo/ǰ;->ˋ(Lo/ﾌ;II)Lo/ĸ;

    move-result-object v1

    .line 75
    :goto_0
    return-object v1
.end method

.method private ˋ(Lo/ﾌ;II)Lo/ĸ;
    .locals 3

    .line 119
    const/4 v1, 0x0

    .line 121
    iget-object v0, p0, Lo/ǰ;->lq:Lo/ﺀ;

    invoke-interface {v0, p1, p2, p3}, Lo/ﺀ;->ˋ(Ljava/lang/Object;II)Lo/ڔ;

    move-result-object v2

    .line 122
    if-eqz v2, :cond_0

    .line 123
    new-instance v1, Lo/ĸ;

    const/4 v0, 0x0

    invoke-direct {v1, v2, v0}, Lo/ĸ;-><init>(Lo/ڔ;Lo/ڔ;)V

    .line 126
    :cond_0
    return-object v1
.end method

.method private ˋ(Lo/ﾌ;II[B)Lo/ĸ;
    .locals 6

    .line 80
    iget-object v0, p0, Lo/ǰ;->lt:Lo/ǰ$if;

    invoke-virtual {p1}, Lo/ﾌ;->冫()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lo/ǰ$if;->ˋ(Ljava/io/InputStream;[B)Ljava/io/InputStream;

    move-result-object v2

    .line 81
    const/16 v0, 0x800

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->mark(I)V

    .line 82
    iget-object v0, p0, Lo/ǰ;->ls:Lo/ǰ$ˊ;

    invoke-virtual {v0, v2}, Lo/ǰ$ˊ;->ˏ(Ljava/io/InputStream;)Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    move-result-object v3

    .line 83
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 85
    const/4 v4, 0x0

    .line 86
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    if-ne v3, v0, :cond_0

    .line 87
    invoke-direct {p0, v2, p2, p3}, Lo/ǰ;->ˎ(Ljava/io/InputStream;II)Lo/ĸ;

    move-result-object v4

    .line 90
    :cond_0
    if-nez v4, :cond_1

    .line 93
    new-instance v5, Lo/ﾌ;

    invoke-virtual {p1}, Lo/ﾌ;->לּ()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {v5, v2, v0}, Lo/ﾌ;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    .line 94
    invoke-direct {p0, v5, p2, p3}, Lo/ǰ;->ˋ(Lo/ﾌ;II)Lo/ĸ;

    move-result-object v4

    .line 96
    :cond_1
    return-object v4
.end method

.method private ˎ(Ljava/io/InputStream;II)Lo/ĸ;
    .locals 6

    .line 100
    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lo/ǰ;->lr:Lo/ﺀ;

    invoke-interface {v0, p1, p2, p3}, Lo/ﺀ;->ˋ(Ljava/lang/Object;II)Lo/ڔ;

    move-result-object v3

    .line 102
    if-eqz v3, :cond_1

    .line 103
    invoke-interface {v3}, Lo/ڔ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ﻠ;

    move-object v4, v0

    .line 108
    invoke-virtual {v4}, Lo/ﻠ;->getFrameCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 109
    new-instance v2, Lo/ĸ;

    const/4 v0, 0x0

    invoke-direct {v2, v0, v3}, Lo/ĸ;-><init>(Lo/ڔ;Lo/ڔ;)V

    goto :goto_0

    .line 111
    :cond_0
    new-instance v5, Lo/ᖟ;

    invoke-virtual {v4}, Lo/ﻠ;->ʇ()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lo/ǰ;->eD:Lo/ი;

    invoke-direct {v5, v0, v1}, Lo/ᖟ;-><init>(Landroid/graphics/Bitmap;Lo/ი;)V

    .line 112
    new-instance v2, Lo/ĸ;

    const/4 v0, 0x0

    invoke-direct {v2, v5, v0}, Lo/ĸ;-><init>(Lo/ڔ;Lo/ڔ;)V

    .line 115
    :cond_1
    :goto_0
    return-object v2
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 2

    .line 131
    iget-object v0, p0, Lo/ǰ;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/ǰ;->lr:Lo/ﺀ;

    invoke-interface {v1}, Lo/ﺀ;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/ǰ;->lq:Lo/ﺀ;

    invoke-interface {v1}, Lo/ﺀ;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ǰ;->id:Ljava/lang/String;

    .line 134
    :cond_0
    iget-object v0, p0, Lo/ǰ;->id:Ljava/lang/String;

    return-object v0
.end method

.method public ˊ(Lo/ﾌ;II)Lo/ڔ;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\uff8c;II)Lo/\u0694<Lo/\u0138;>;"
        }
    .end annotation

    .line 56
    invoke-static {}, Lo/ﮣ;->ῖ()Lo/ﮣ;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lo/ﮣ;->getBytes()[B

    move-result-object v2

    .line 59
    const/4 v3, 0x0

    .line 61
    :try_start_0
    invoke-direct {p0, p1, p2, p3, v2}, Lo/ǰ;->ˊ(Lo/ﾌ;II[B)Lo/ĸ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 63
    invoke-virtual {v1, v2}, Lo/ﮣ;->ˏ([B)Z

    .line 64
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v4

    invoke-virtual {v1, v2}, Lo/ﮣ;->ˏ([B)Z

    throw v4

    .line 65
    :goto_0
    if-eqz v3, :cond_0

    new-instance v0, Lo/ř;

    invoke-direct {v0, v3}, Lo/ř;-><init>(Lo/ĸ;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public synthetic ˋ(Ljava/lang/Object;II)Lo/ڔ;
    .locals 1

    .line 22
    move-object v0, p1

    check-cast v0, Lo/ﾌ;

    invoke-virtual {p0, v0, p2, p3}, Lo/ǰ;->ˊ(Lo/ﾌ;II)Lo/ڔ;

    move-result-object v0

    return-object v0
.end method
