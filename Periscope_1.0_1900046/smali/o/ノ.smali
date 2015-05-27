.class public Lo/ノ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ﺀ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\ufe80<Ljava/io/InputStream;Landroid/graphics/Bitmap;>;"
    }
.end annotation


# instance fields
.field private eD:Lo/ი;

.field private eF:Lo/ﭝ;

.field private id:Ljava/lang/String;

.field private final kx:Lo/ᴧ;


# direct methods
.method public constructor <init>(Lo/ი;Lo/ﭝ;)V
    .locals 1

    .line 39
    sget-object v0, Lo/ᴧ;->jX:Lo/ᴧ;

    invoke-direct {p0, v0, p1, p2}, Lo/ノ;-><init>(Lo/ᴧ;Lo/ი;Lo/ﭝ;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lo/ᴧ;Lo/ი;Lo/ﭝ;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lo/ノ;->kx:Lo/ᴧ;

    .line 44
    iput-object p2, p0, Lo/ノ;->eD:Lo/ი;

    .line 45
    iput-object p3, p0, Lo/ノ;->eF:Lo/ﭝ;

    .line 46
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 2

    .line 56
    iget-object v0, p0, Lo/ノ;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StreamBitmapDecoder.com.bumptech.glide.load.resource.bitmap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/ノ;->kx:Lo/ᴧ;

    invoke-virtual {v1}, Lo/ᴧ;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/ノ;->eF:Lo/ﭝ;

    invoke-virtual {v1}, Lo/ﭝ;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ノ;->id:Ljava/lang/String;

    .line 63
    :cond_0
    iget-object v0, p0, Lo/ノ;->id:Ljava/lang/String;

    return-object v0
.end method

.method public ˊ(Ljava/io/InputStream;II)Lo/ڔ;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/io/InputStream;II)Lo/\u0694<Landroid/graphics/Bitmap;>;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lo/ノ;->kx:Lo/ᴧ;

    move-object v1, p1

    iget-object v2, p0, Lo/ノ;->eD:Lo/ი;

    move v3, p2

    move v4, p3

    iget-object v5, p0, Lo/ノ;->eF:Lo/ﭝ;

    invoke-virtual/range {v0 .. v5}, Lo/ᴧ;->ˊ(Ljava/io/InputStream;Lo/ი;IILo/ﭝ;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 51
    iget-object v0, p0, Lo/ノ;->eD:Lo/ი;

    invoke-static {v6, v0}, Lo/ᖟ;->ˊ(Landroid/graphics/Bitmap;Lo/ი;)Lo/ᖟ;

    move-result-object v0

    return-object v0
.end method

.method public synthetic ˋ(Ljava/lang/Object;II)Lo/ڔ;
    .locals 1

    .line 19
    move-object v0, p1

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {p0, v0, p2, p3}, Lo/ノ;->ˊ(Ljava/io/InputStream;II)Lo/ڔ;

    move-result-object v0

    return-object v0
.end method
