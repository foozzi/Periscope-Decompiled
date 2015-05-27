.class Lo/ﾅ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ﺀ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\ufe80<Lo/\u1d68;Landroid/graphics/Bitmap;>;"
    }
.end annotation


# instance fields
.field private final eD:Lo/ი;


# direct methods
.method public constructor <init>(Lo/ი;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lo/ﾅ;->eD:Lo/ი;

    .line 16
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 26
    const-string v0, "GifFrameResourceDecoder.com.bumptech.glide.load.resource.gif"

    return-object v0
.end method

.method public bridge synthetic ˋ(Ljava/lang/Object;II)Lo/ڔ;
    .locals 1

    .line 11
    move-object v0, p1

    check-cast v0, Lo/ᵨ;

    invoke-virtual {p0, v0, p2, p3}, Lo/ﾅ;->ˋ(Lo/ᵨ;II)Lo/ڔ;

    move-result-object v0

    return-object v0
.end method

.method public ˋ(Lo/ᵨ;II)Lo/ڔ;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u1d68;II)Lo/\u0694<Landroid/graphics/Bitmap;>;"
        }
    .end annotation

    .line 20
    invoke-virtual {p1}, Lo/ᵨ;->ῒ()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 21
    iget-object v0, p0, Lo/ﾅ;->eD:Lo/ი;

    invoke-static {v1, v0}, Lo/ᖟ;->ˊ(Landroid/graphics/Bitmap;Lo/ი;)Lo/ᖟ;

    move-result-object v0

    return-object v0
.end method
