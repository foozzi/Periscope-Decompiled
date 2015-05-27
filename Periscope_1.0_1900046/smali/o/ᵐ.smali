.class public Lo/ᵐ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ﺀ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\ufe80<Landroid/os/ParcelFileDescriptor;Landroid/graphics/Bitmap;>;"
    }
.end annotation


# instance fields
.field private final eD:Lo/ი;

.field private eF:Lo/ﭝ;

.field private final kc:Lo/亠;


# direct methods
.method public constructor <init>(Lo/ი;Lo/ﭝ;)V
    .locals 1

    .line 33
    new-instance v0, Lo/亠;

    invoke-direct {v0}, Lo/亠;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lo/ᵐ;-><init>(Lo/亠;Lo/ი;Lo/ﭝ;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lo/亠;Lo/ი;Lo/ﭝ;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lo/ᵐ;->kc:Lo/亠;

    .line 39
    iput-object p2, p0, Lo/ᵐ;->eD:Lo/ი;

    .line 40
    iput-object p3, p0, Lo/ᵐ;->eF:Lo/ﭝ;

    .line 41
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "FileDescriptorBitmapDecoder.com.bumptech.glide.load.data.bitmap"

    return-object v0
.end method

.method public ˊ(Landroid/os/ParcelFileDescriptor;II)Lo/ڔ;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/os/ParcelFileDescriptor;II)Lo/\u0694<Landroid/graphics/Bitmap;>;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lo/ᵐ;->kc:Lo/亠;

    move-object v1, p1

    iget-object v2, p0, Lo/ᵐ;->eD:Lo/ი;

    move v3, p2

    move v4, p3

    iget-object v5, p0, Lo/ᵐ;->eF:Lo/ﭝ;

    invoke-virtual/range {v0 .. v5}, Lo/亠;->ˊ(Landroid/os/ParcelFileDescriptor;Lo/ი;IILo/ﭝ;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 46
    iget-object v0, p0, Lo/ᵐ;->eD:Lo/ი;

    invoke-static {v6, v0}, Lo/ᖟ;->ˊ(Landroid/graphics/Bitmap;Lo/ი;)Lo/ᖟ;

    move-result-object v0

    return-object v0
.end method

.method public synthetic ˋ(Ljava/lang/Object;II)Lo/ڔ;
    .locals 1

    .line 19
    move-object v0, p1

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, v0, p2, p3}, Lo/ᵐ;->ˊ(Landroid/os/ParcelFileDescriptor;II)Lo/ڔ;

    move-result-object v0

    return-object v0
.end method
