.class final Lo/ԁ$ˏ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ԁ$ˋ;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ԁ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "\u02cf"
.end annotation


# instance fields
.field private final sc:I

.field private sd:[Landroid/media/MediaCodecInfo;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lo/ԁ$ˏ;->sc:I

    .line 317
    return-void
.end method

.method private ь()V
    .locals 2

    .line 342
    iget-object v0, p0, Lo/ԁ$ˏ;->sd:[Landroid/media/MediaCodecInfo;

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Landroid/media/MediaCodecList;

    iget v1, p0, Lo/ԁ$ˏ;->sc:I

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Lo/ԁ$ˏ;->sd:[Landroid/media/MediaCodecInfo;

    .line 345
    :cond_0
    return-void
.end method


# virtual methods
.method public getCodecCount()I
    .locals 1

    .line 321
    invoke-direct {p0}, Lo/ԁ$ˏ;->ь()V

    .line 322
    iget-object v0, p0, Lo/ԁ$ˏ;->sd:[Landroid/media/MediaCodecInfo;

    array-length v0, v0

    return v0
.end method

.method public getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    .locals 1

    .line 327
    invoke-direct {p0}, Lo/ԁ$ˏ;->ь()V

    .line 328
    iget-object v0, p0, Lo/ԁ$ˏ;->sd:[Landroid/media/MediaCodecInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public ˊ(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1

    .line 338
    const-string v0, "secure-playback"

    invoke-virtual {p2, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public л()Z
    .locals 1

    .line 333
    const/4 v0, 0x1

    return v0
.end method
