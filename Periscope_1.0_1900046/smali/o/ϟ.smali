.class public Lo/ϟ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ғ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\u0493<Lo/\u0138;Lo/\ufb3c;>;"
    }
.end annotation


# instance fields
.field private final lA:Lo/ғ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u0493<Landroid/graphics/Bitmap;Lo/\u1d5d;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/ғ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u0493<Landroid/graphics/Bitmap;Lo/\u1d5d;>;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lo/ϟ;->lA:Lo/ғ;

    .line 21
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "GifBitmapWrapperDrawableTranscoder.com.bumptech.glide.load.resource.transcode"

    return-object v0
.end method

.method public ˏ(Lo/ڔ;)Lo/ڔ;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u0694<Lo/\u0138;>;)Lo/\u0694<Lo/\ufb3c;>;"
        }
    .end annotation

    .line 26
    invoke-interface {p1}, Lo/ڔ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ĸ;

    move-object v1, v0

    .line 27
    invoke-virtual {v1}, Lo/ĸ;->ԇ()Lo/ڔ;

    move-result-object v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    iget-object v0, p0, Lo/ϟ;->lA:Lo/ғ;

    invoke-interface {v0, v2}, Lo/ғ;->ˏ(Lo/ڔ;)Lo/ڔ;

    move-result-object v3

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v1}, Lo/ĸ;->ה()Lo/ڔ;

    move-result-object v3

    .line 36
    :goto_0
    return-object v3
.end method
