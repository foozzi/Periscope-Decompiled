.class public Lo/ҁ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ғ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\u0493<Landroid/graphics/Bitmap;Lo/\u1d5d;>;"
    }
.end annotation


# instance fields
.field private final eD:Lo/ი;

.field private final jM:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lo/ი;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lo/ҁ;->jM:Landroid/content/res/Resources;

    .line 27
    iput-object p2, p0, Lo/ҁ;->eD:Lo/ი;

    .line 28
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, "GlideBitmapDrawableTranscoder.com.bumptech.glide.load.resource.transcode"

    return-object v0
.end method

.method public ˏ(Lo/ڔ;)Lo/ڔ;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u0694<Landroid/graphics/Bitmap;>;)Lo/\u0694<Lo/\u1d5d;>;"
        }
    .end annotation

    .line 32
    new-instance v2, Lo/ᵝ;

    iget-object v0, p0, Lo/ҁ;->jM:Landroid/content/res/Resources;

    invoke-interface {p1}, Lo/ڔ;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {v2, v0, v1}, Lo/ᵝ;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 33
    new-instance v0, Lo/ᵦ;

    iget-object v1, p0, Lo/ҁ;->eD:Lo/ი;

    invoke-direct {v0, v2, v1}, Lo/ᵦ;-><init>(Lo/ᵝ;Lo/ი;)V

    return-object v0
.end method
