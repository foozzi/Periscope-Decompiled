.class public Lo/亠;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᒨ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/亠$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\u14a8<Landroid/os/ParcelFileDescriptor;>;"
    }
.end annotation


# static fields
.field private static final ky:Lo/亠$if;


# instance fields
.field private kA:I

.field private kz:Lo/亠$if;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lo/亠$if;

    invoke-direct {v0}, Lo/亠$if;-><init>()V

    sput-object v0, Lo/亠;->ky:Lo/亠$if;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 25
    sget-object v0, Lo/亠;->ky:Lo/亠$if;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lo/亠;-><init>(Lo/亠$if;I)V

    .line 26
    return-void
.end method

.method constructor <init>(Lo/亠$if;I)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lo/亠;->kz:Lo/亠$if;

    .line 38
    iput p2, p0, Lo/亠;->kA:I

    .line 39
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, "VideoBitmapDecoder.com.bumptech.glide.load.resource.bitmap"

    return-object v0
.end method

.method public ˊ(Landroid/os/ParcelFileDescriptor;Lo/ი;IILo/ﭝ;)Landroid/graphics/Bitmap;
    .locals 4

    .line 45
    iget-object v0, p0, Lo/亠;->kz:Lo/亠$if;

    invoke-virtual {v0}, Lo/亠$if;->ǰ()Landroid/media/MediaMetadataRetriever;

    move-result-object v2

    .line 46
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 48
    iget v0, p0, Lo/亠;->kA:I

    if-ltz v0, :cond_0

    .line 49
    iget v0, p0, Lo/亠;->kA:I

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 53
    :goto_0
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 54
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 55
    return-object v3
.end method
