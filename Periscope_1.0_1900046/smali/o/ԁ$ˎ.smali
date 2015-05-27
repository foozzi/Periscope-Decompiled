.class final Lo/ԁ$ˎ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ԁ$ˋ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ԁ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "\u02ce"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/ԁ$1;)V
    .locals 0

    .line 350
    invoke-direct {p0}, Lo/ԁ$ˎ;-><init>()V

    return-void
.end method


# virtual methods
.method public getCodecCount()I
    .locals 1

    .line 354
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    return v0
.end method

.method public getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    .locals 1

    .line 359
    invoke-static {p1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1

    .line 371
    const-string v0, "video/avc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public л()Z
    .locals 1

    .line 364
    const/4 v0, 0x0

    return v0
.end method
