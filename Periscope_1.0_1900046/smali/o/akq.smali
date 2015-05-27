.class public Lo/akq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/akw$if;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/akq$ˊ;,
        Lo/akq$if;
    }
.end annotation


# static fields
.field static final bJN:[I


# instance fields
.field private bBH:Landroid/media/MediaFormat;

.field private bBI:Landroid/media/MediaFormat;

.field private bJA:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
        }
    .end annotation
.end field

.field private bJB:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
        }
    .end annotation
.end field

.field private bJC:J

.field private bJD:J

.field private bJE:J

.field private bJF:Lo/aks;

.field private bJG:Ljava/lang/String;

.field private bJH:Ljava/lang/String;

.field private bJI:I

.field private bJJ:Ljava/lang/String;

.field private bJK:Ljava/lang/String;

.field private bJL:Ljava/lang/String;

.field private bJM:Lo/akq$if;

.field private bJp:[B

.field private bJq:[B

.field private bJr:Z

.field private bJs:Z

.field private bJt:Z

.field private bJu:Z

.field private bJv:Z

.field private bJw:Lo/akq$ˊ;

.field private bJx:J

.field private bJy:J

.field private bJz:D

.field private buM:Lo/akw;

.field private buQ:Ljava/util/Timer;

.field private buR:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 598
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lo/akq;->bJN:[I

    return-void

    :array_0
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lo/akq;->bJp:[B

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lo/akq;->bJq:[B

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/akq;->bJr:Z

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/akq;->bJs:Z

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/akq;->bJt:Z

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/akq;->bJu:Z

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/akq;->bJv:Z

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lo/akq;->bJA:Ljava/util/HashMap;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/akq;->bJB:Ljava/util/HashMap;

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/akq;->bJD:J

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/akq;->bJE:J

    .line 58
    new-instance v0, Lo/aks;

    invoke-direct {v0}, Lo/aks;-><init>()V

    iput-object v0, p0, Lo/akq;->bJF:Lo/aks;

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/akq;->buR:J

    .line 83
    sget-object v0, Lo/akq$if;->bJP:Lo/akq$if;

    iput-object v0, p0, Lo/akq;->bJM:Lo/akq$if;

    .line 92
    iput-object p1, p0, Lo/akq;->bJG:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lo/akq;->bJH:Ljava/lang/String;

    .line 94
    iput p3, p0, Lo/akq;->bJI:I

    .line 95
    iput-object p4, p0, Lo/akq;->bJJ:Ljava/lang/String;

    .line 96
    iput-object p5, p0, Lo/akq;->bJK:Ljava/lang/String;

    .line 97
    iput-object p6, p0, Lo/akq;->bJL:Ljava/lang/String;

    .line 99
    invoke-direct {p0}, Lo/akq;->vI()V

    .line 100
    invoke-direct {p0}, Lo/akq;->vG()V

    .line 101
    return-void
.end method

.method private AT()V
    .locals 11

    .line 488
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    .line 489
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v0, v3, v1

    .line 490
    iget-object v0, p0, Lo/akq;->buM:Lo/akw;

    invoke-virtual {v0}, Lo/akw;->getTarget()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    .line 491
    const-string v0, "live"

    const/4 v1, 0x2

    aput-object v0, v3, v1

    .line 492
    iget-object v0, p0, Lo/akq;->buM:Lo/akw;

    const-string v1, "publish"

    invoke-virtual {v0, v1, v3}, Lo/akw;->ˊ(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 495
    const-string v0, "connectiondata"

    const-string v1, "In IP4 0.0.0.0"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string v0, "name"

    const-string v1, "Live stream from Periscope"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    const-string v0, "protocolversion"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const-string v0, "timing"

    const-string v1, "0 0"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 501
    const-string v0, "rtpsessioninfo"

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/Object;

    .line 504
    invoke-direct {p0}, Lo/akq;->AU()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v6, v1

    .line 505
    invoke-direct {p0}, Lo/akq;->AV()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v6, v1

    .line 506
    const-string v0, "trackinfo"

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    iget-object v0, p0, Lo/akq;->bBI:Landroid/media/MediaFormat;

    const-string v1, "width"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    .line 509
    iget-object v0, p0, Lo/akq;->bBI:Landroid/media/MediaFormat;

    const-string v1, "height"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v8

    .line 510
    const-string v0, "videocodecid"

    const-string v1, "avc1"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    const-string v0, "width"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    const-string v0, "displayWidth"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const-string v0, "frameWidth"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    const-string v0, "height"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    const-string v0, "displayHeight"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    const-string v0, "frameHeight"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    const-string v0, "audiocodecid"

    const-string v1, "mp4a"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    const-string v0, "audiochannels"

    iget-object v1, p0, Lo/akq;->bBH:Landroid/media/MediaFormat;

    const-string v2, "channel-count"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    const-string v0, "audiosamplerate"

    iget-object v1, p0, Lo/akq;->bBH:Landroid/media/MediaFormat;

    const-string v2, "sample-rate"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    const/4 v0, 0x2

    new-array v9, v0, [Ljava/lang/Object;

    const-string v0, "onMetadata"

    const/4 v1, 0x0

    aput-object v0, v9, v1

    const/4 v0, 0x1

    aput-object v5, v9, v0

    .line 523
    new-instance v10, Lo/alc;

    iget-object v0, p0, Lo/akq;->buM:Lo/akw;

    invoke-virtual {v0}, Lo/akw;->Bh()I

    move-result v0

    const/16 v1, 0x12

    const/4 v2, 0x5

    invoke-direct {v10, v1, v2, v0}, Lo/alc;-><init>(III)V

    .line 524
    invoke-virtual {v10, v9}, Lo/alc;->ˎ([Ljava/lang/Object;)V

    .line 525
    iget-object v0, p0, Lo/akq;->buM:Lo/akw;

    invoke-virtual {v0, v10}, Lo/akw;->ˏ(Lo/alc;)V

    .line 526
    const-string v0, "RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lo/akq;->buM:Lo/akw;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lo/akw;->ᓹ(I)V

    .line 532
    invoke-direct {p0}, Lo/akq;->AW()V

    .line 534
    invoke-direct {p0}, Lo/akq;->AX()V

    .line 535
    return-void
.end method

.method private AU()Ljava/util/Map;
    .locals 11

    .line 540
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/akq;->bJp:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Lo/akq;->ᒩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/akq;->bJp:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Lo/akq;->ᒩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/akq;->bJp:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Lo/akq;->ᒩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 543
    const-string v0, "profile-level-id"

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/akq;->bJp:[B

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/akq;->bJq:[B

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 546
    const-string v0, "sprop-parameter-sets"

    invoke-virtual {v3, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    iget-object v0, p0, Lo/akq;->bBI:Landroid/media/MediaFormat;

    const-string v1, "width"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    .line 549
    iget-object v0, p0, Lo/akq;->bBI:Landroid/media/MediaFormat;

    const-string v1, "height"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{H264CodecConfigInfo: codec:H264, profile:Main, level:2.1, frameSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displaySize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", crop: l:0 r:0 t:0 b:0}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 551
    const-string v0, "description"

    invoke-virtual {v3, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    const-string v0, "language"

    const-string v1, "eng"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    const-string v0, "timescale"

    const v1, 0x15f90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    const-string v0, "type"

    const-string v1, "video"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/Object;

    .line 558
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 559
    const-string v0, "sampletype"

    const-string v1, "H264"

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const/4 v0, 0x0

    aput-object v10, v9, v0

    .line 561
    const-string v0, "sampledescription"

    invoke-virtual {v3, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    const-string v0, "RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video props: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    return-object v3
.end method

.method private AV()Ljava/util/Map;
    .locals 11

    .line 574
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 575
    iget-object v0, p0, Lo/akq;->bBH:Landroid/media/MediaFormat;

    const-string v1, "channel-count"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 576
    iget-object v0, p0, Lo/akq;->bBH:Landroid/media/MediaFormat;

    const-string v1, "sample-rate"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{AACFrame: codec:AAC, channels:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frequency:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", samplesPerFrame:1024, objectType:LC}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 578
    const-string v0, "description"

    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    const-string v0, "language"

    const-string v1, "eng"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    const-string v0, "timescale"

    const v1, 0x15f90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    const-string v0, "type"

    const-string v1, "audio"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/Object;

    .line 584
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 585
    const-string v0, "sampletype"

    const-string v1, "mpeg4-generic"

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    const/4 v0, 0x0

    aput-object v8, v7, v0

    .line 587
    const-string v0, "sampledescription"

    invoke-virtual {v3, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    invoke-direct {p0, v5, v4}, Lo/akq;->Ι(II)[B

    move-result-object v9

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-byte v1, v9, v1

    invoke-static {v1}, Lo/akq;->ᒩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget-byte v1, v9, v1

    invoke-static {v1}, Lo/akq;->ᒩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 592
    const-string v0, "config"

    invoke-virtual {v3, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    const-string v0, "RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio props: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    return-object v3
.end method

.method private AW()V
    .locals 5

    .line 643
    invoke-direct {p0}, Lo/akq;->AY()[B

    move-result-object v3

    .line 644
    array-length v0, v3

    add-int/lit8 v0, v0, 0x5

    new-array v4, v0, [B

    .line 645
    const/16 v0, 0x17

    const/4 v1, 0x0

    aput-byte v0, v4, v1

    .line 646
    array-length v0, v3

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-static {v3, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 648
    iget-object v0, p0, Lo/akq;->buM:Lo/akw;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v4, v1, v2}, Lo/akw;->ˊ([BJ)V

    .line 649
    return-void
.end method

.method private AX()V
    .locals 7

    .line 653
    iget-object v0, p0, Lo/akq;->bBH:Landroid/media/MediaFormat;

    const-string v1, "channel-count"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 654
    iget-object v0, p0, Lo/akq;->bBH:Landroid/media/MediaFormat;

    const-string v1, "sample-rate"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 655
    invoke-direct {p0, v4, v3}, Lo/akq;->Ι(II)[B

    move-result-object v5

    .line 656
    const/4 v0, 0x4

    new-array v6, v0, [B

    .line 657
    const/16 v0, -0x51

    const/4 v1, 0x0

    aput-byte v0, v6, v1

    .line 658
    const/4 v0, 0x0

    aget-byte v0, v5, v0

    const/4 v1, 0x2

    aput-byte v0, v6, v1

    .line 659
    const/4 v0, 0x1

    aget-byte v0, v5, v0

    const/4 v1, 0x3

    aput-byte v0, v6, v1

    .line 660
    iget-object v0, p0, Lo/akq;->buM:Lo/akw;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v6, v1, v2}, Lo/akw;->ˋ([BJ)V

    .line 661
    return-void
.end method

.method private AY()[B
    .locals 6

    .line 665
    iget-object v0, p0, Lo/akq;->bJp:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0xb

    iget-object v1, p0, Lo/akq;->bJq:[B

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v4, v0, [B

    .line 666
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-byte v0, v4, v1

    .line 667
    iget-object v0, p0, Lo/akq;->bJp:[B

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 668
    const/4 v0, -0x1

    const/4 v1, 0x4

    aput-byte v0, v4, v1

    .line 669
    const/16 v0, -0x1f

    const/4 v1, 0x5

    aput-byte v0, v4, v1

    .line 670
    iget-object v0, p0, Lo/akq;->bJp:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x8

    rem-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x6

    aput-byte v0, v4, v1

    .line 671
    iget-object v0, p0, Lo/akq;->bJp:[B

    array-length v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x7

    aput-byte v0, v4, v1

    .line 672
    iget-object v0, p0, Lo/akq;->bJp:[B

    iget-object v1, p0, Lo/akq;->bJp:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v0, v2, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 673
    iget-object v0, p0, Lo/akq;->bJp:[B

    array-length v0, v0

    add-int/lit8 v5, v0, 0x8

    .line 674
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x1

    aput-byte v1, v4, v0

    .line 675
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    iget-object v1, p0, Lo/akq;->bJq:[B

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    .line 676
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    iget-object v1, p0, Lo/akq;->bJq:[B

    array-length v1, v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    .line 677
    iget-object v0, p0, Lo/akq;->bJq:[B

    iget-object v1, p0, Lo/akq;->bJq:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 679
    return-object v4
.end method

.method private vG()V
    .locals 8

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/akq;->buR:J

    .line 106
    new-instance v0, Lo/akw;

    invoke-direct {v0}, Lo/akw;-><init>()V

    iput-object v0, p0, Lo/akq;->buM:Lo/akw;

    .line 107
    iget-object v0, p0, Lo/akq;->buM:Lo/akw;

    const-wide/32 v1, 0x2625a0

    invoke-virtual {v0, v1, v2}, Lo/akw;->৲(J)V

    .line 108
    iget-object v0, p0, Lo/akq;->buM:Lo/akw;

    iget-object v1, p0, Lo/akq;->bJG:Ljava/lang/String;

    iget-object v2, p0, Lo/akq;->bJH:Ljava/lang/String;

    iget v3, p0, Lo/akq;->bJI:I

    iget-object v4, p0, Lo/akq;->bJJ:Ljava/lang/String;

    iget-object v5, p0, Lo/akq;->bJK:Ljava/lang/String;

    iget-object v6, p0, Lo/akq;->bJL:Ljava/lang/String;

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lo/akw;->ˊ(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/akw$if;)V

    .line 109
    return-void
.end method

.method private vI()V
    .locals 6

    .line 886
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lo/akq;->buQ:Ljava/util/Timer;

    .line 887
    iget-object v0, p0, Lo/akq;->buQ:Ljava/util/Timer;

    new-instance v1, Lo/akr;

    invoke-direct {v1, p0}, Lo/akr;-><init>(Lo/akq;)V

    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0xbb8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 895
    return-void
.end method

.method private vJ()V
    .locals 1

    .line 899
    iget-object v0, p0, Lo/akq;->buQ:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lo/akq;->buQ:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 902
    const/4 v0, 0x0

    iput-object v0, p0, Lo/akq;->buQ:Ljava/util/Timer;

    .line 904
    :cond_0
    return-void
.end method

.method private vK()V
    .locals 9

    .line 908
    const/4 v4, 0x0

    .line 909
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 910
    move-object v7, p0

    monitor-enter v7

    .line 912
    :try_start_0
    iget-wide v0, p0, Lo/akq;->buR:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 914
    iget-wide v0, p0, Lo/akq;->buR:J

    sub-long v0, v5, v0

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 916
    const-string v0, "RTMP"

    const-string v1, "Restart on Connect timeout"

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    const/4 v4, 0x1

    .line 918
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/akq;->buR:J

    .line 921
    :cond_0
    if-eqz v4, :cond_1

    .line 923
    invoke-virtual {p0}, Lo/akq;->Bc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    :cond_1
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v7

    throw v8

    .line 926
    :goto_0
    return-void
.end method

.method static synthetic ˊ(Lo/akq;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lo/akq;->vK()V

    return-void
.end method

.method private ˋ(Lo/akq$if;)V
    .locals 3

    .line 827
    move-object v1, p0

    monitor-enter v1

    .line 829
    :try_start_0
    iget-object v0, p0, Lo/akq;->bJM:Lo/akq$if;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    .line 831
    monitor-exit v1

    return-void

    .line 833
    :cond_0
    :try_start_1
    iput-object p1, p0, Lo/akq;->bJM:Lo/akq$if;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 834
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 835
    :goto_0
    iget-object v0, p0, Lo/akq;->bJw:Lo/akq$ˊ;

    if-eqz v0, :cond_1

    .line 837
    iget-object v0, p0, Lo/akq;->bJw:Lo/akq$ˊ;

    invoke-interface {v0, p1}, Lo/akq$ˊ;->ˊ(Lo/akq$if;)V

    .line 839
    :cond_1
    return-void
.end method

.method private ˤ(J)[B
    .locals 10

    .line 727
    invoke-direct {p0, p1, p2}, Lo/akq;->ι(J)[B

    move-result-object v2

    .line 736
    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x17

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 738
    array-length v0, v2

    add-int/lit8 v4, v0, 0x10

    .line 739
    const/4 v0, 0x6

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 740
    const/4 v0, 0x5

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 743
    :goto_0
    const/16 v0, 0xff

    if-le v4, v0, :cond_0

    .line 745
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 746
    add-int/lit16 v4, v4, -0xff

    goto :goto_0

    .line 748
    :cond_0
    int-to-byte v0, v4

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 751
    sget-object v0, Lo/aaw;->bvg:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v5

    .line 752
    invoke-virtual {v3, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 753
    sget-object v0, Lo/aaw;->bvg:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v5

    .line 754
    invoke-virtual {v3, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 757
    const/4 v7, 0x0

    .line 758
    const/4 v8, 0x0

    :goto_1
    array-length v0, v2

    if-ge v8, v0, :cond_3

    .line 760
    aget-byte v9, v2, v8

    .line 761
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 762
    if-nez v9, :cond_2

    .line 764
    if-eqz v7, :cond_1

    .line 767
    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 768
    const/4 v7, 0x0

    goto :goto_2

    .line 771
    :cond_1
    const/4 v7, 0x1

    goto :goto_2

    .line 775
    :cond_2
    const/4 v7, 0x0

    .line 758
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 780
    :cond_3
    const/16 v0, -0x80

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 782
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    new-array v8, v0, [B

    .line 783
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 784
    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 786
    return-object v8
.end method

.method private Ι(II)[B
    .locals 5

    .line 617
    const/4 v2, 0x2

    .line 618
    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    .line 620
    const/4 p2, 0x7

    .line 623
    :cond_0
    const/4 v3, 0x0

    .line 625
    const/4 v4, 0x0

    :goto_0
    sget-object v0, Lo/akq;->bJN:[I

    array-length v0, v0

    if-ge v4, v0, :cond_2

    .line 627
    sget-object v0, Lo/akq;->bJN:[I

    aget v0, v0, v4

    if-ne v0, p1, :cond_1

    .line 629
    move v3, v4

    .line 630
    goto :goto_1

    .line 625
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 634
    :cond_2
    :goto_1
    const/4 v0, 0x2

    new-array v4, v0, [B

    .line 635
    shr-int/lit8 v0, v3, 0x1

    and-int/lit8 v0, v0, 0x7

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, v4, v1

    .line 636
    and-int/lit8 v0, v3, 0x1

    shl-int/lit8 v0, v0, 0x7

    shl-int/lit8 v1, p2, 0x3

    or-int/2addr v0, v1

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, v4, v1

    .line 638
    return-object v4
.end method

.method private ι(J)[B
    .locals 11

    .line 793
    const-wide/16 v4, 0x0

    .line 794
    move-object v6, p0

    monitor-enter v6

    .line 796
    :try_start_0
    iget-wide v0, p0, Lo/akq;->bJD:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 798
    iget-wide v0, p0, Lo/akq;->bJD:J

    iget-wide v2, p0, Lo/akq;->bJC:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v2, p1, v2

    add-long v7, v0, v2

    .line 799
    long-to-double v0, v7

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    const-wide v2, 0x41e0754fd0000000L    # 2.2089888E9

    add-double v4, v0, v2

    .line 801
    :cond_0
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v6

    throw v9

    .line 802
    :goto_0
    iget-object v0, p0, Lo/akq;->bJB:Ljava/util/HashMap;

    const-string v1, "ntp"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 805
    iget-object v0, p0, Lo/akq;->bJA:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 807
    iget-object v0, p0, Lo/akq;->bJA:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 809
    :cond_1
    iget-object v0, p0, Lo/akq;->bJB:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 813
    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v6, v7, v0

    .line 814
    invoke-static {v7}, Lo/akt;->ˋ([Ljava/lang/Object;)[B

    move-result-object v8

    .line 815
    const/4 v0, 0x2

    invoke-static {v8, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9

    .line 816
    const-string v0, "Base64"

    invoke-virtual {v6, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/Object;

    const-string v0, "Periscope"

    const/4 v1, 0x0

    aput-object v0, v10, v1

    const/4 v0, 0x1

    aput-object v6, v10, v0

    .line 820
    iget-object v0, p0, Lo/akq;->buM:Lo/akw;

    invoke-virtual {v0, v10, p1, p2}, Lo/akw;->ˊ([Ljava/lang/Object;J)V

    .line 822
    return-object v8
.end method

.method public static ᒩ(I)Ljava/lang/String;
    .locals 2

    .line 569
    and-int/lit16 v0, p0, 0xff

    or-int/lit16 v0, v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public AS()V
    .locals 4

    .line 152
    move-object v2, p0

    monitor-enter v2

    .line 154
    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lo/akq;->bJD:J

    .line 155
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/akq;->bJC:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 157
    :goto_0
    return-void
.end method

.method public AZ()J
    .locals 2

    .line 684
    iget-object v0, p0, Lo/akq;->buM:Lo/akw;

    if-nez v0, :cond_0

    .line 686
    const-wide/16 v0, 0x0

    return-wide v0

    .line 688
    :cond_0
    iget-object v0, p0, Lo/akq;->buM:Lo/akw;

    invoke-virtual {v0}, Lo/akw;->AZ()J

    move-result-wide v0

    return-wide v0
.end method

.method public Ba()J
    .locals 2

    .line 693
    iget-object v0, p0, Lo/akq;->buM:Lo/akw;

    if-nez v0, :cond_0

    .line 695
    const-wide/16 v0, 0x0

    return-wide v0

    .line 697
    :cond_0
    iget-object v0, p0, Lo/akq;->buM:Lo/akw;

    invoke-virtual {v0}, Lo/akw;->Ba()J

    move-result-wide v0

    return-wide v0
.end method

.method public Bb()Ljava/util/Date;
    .locals 1

    .line 702
    iget-object v0, p0, Lo/akq;->buM:Lo/akw;

    if-nez v0, :cond_0

    .line 704
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0

    .line 706
    :cond_0
    iget-object v0, p0, Lo/akq;->buM:Lo/akw;

    invoke-virtual {v0}, Lo/akw;->Bb()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public Bc()V
    .locals 4

    .line 848
    const-string v0, "RTMP"

    const-string v1, "Restarting publish connection"

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    sget-object v0, Lo/akq$if;->bJR:Lo/akq$if;

    invoke-direct {p0, v0}, Lo/akq;->ˋ(Lo/akq$if;)V

    .line 850
    move-object v2, p0

    monitor-enter v2

    .line 852
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lo/akq;->bJr:Z

    .line 853
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/akq;->bJu:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 854
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 855
    :goto_0
    iget-object v0, p0, Lo/akq;->buM:Lo/akw;

    invoke-virtual {v0}, Lo/akw;->shutdown()V

    .line 856
    const/4 v0, 0x0

    iput-object v0, p0, Lo/akq;->buM:Lo/akw;

    .line 858
    invoke-direct {p0}, Lo/akq;->vG()V

    .line 859
    return-void
.end method

.method public onClose()V
    .locals 2

    .line 863
    iget-object v0, p0, Lo/akq;->bJM:Lo/akq$if;

    sget-object v1, Lo/akq$if;->bJS:Lo/akq$if;

    if-eq v0, v1, :cond_1

    .line 866
    iget-object v0, p0, Lo/akq;->buM:Lo/akw;

    invoke-virtual {v0}, Lo/akw;->Bi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/akq;->bJI:I

    const/16 v1, 0x50

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/akq;->bJG:Ljava/lang/String;

    const-string v1, "rtmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 872
    const/16 v0, 0x1bb

    iput v0, p0, Lo/akq;->bJI:I

    .line 873
    const-string v0, "RTMPS"

    iput-object v0, p0, Lo/akq;->bJG:Ljava/lang/String;

    .line 874
    const-string v0, "RTMP"

    const-string v1, "Attempt restart with SSL:443"

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 878
    :cond_0
    const-string v0, "RTMP"

    const-string v1, "Restart on socket close"

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    :goto_0
    invoke-virtual {p0}, Lo/akq;->Bc()V

    .line 882
    :cond_1
    return-void
.end method

.method public onShutdown()V
    .locals 1

    .line 843
    sget-object v0, Lo/akq$if;->bJS:Lo/akq$if;

    invoke-direct {p0, v0}, Lo/akq;->ˋ(Lo/akq$if;)V

    .line 844
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 446
    invoke-direct {p0}, Lo/akq;->vJ()V

    .line 447
    sget-object v0, Lo/akq$if;->bJS:Lo/akq$if;

    invoke-direct {p0, v0}, Lo/akq;->ˋ(Lo/akq$if;)V

    .line 448
    iget-object v0, p0, Lo/akq;->bJF:Lo/aks;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lo/akq;->bJF:Lo/aks;

    invoke-virtual {v0}, Lo/aks;->Bd()V

    .line 452
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/akq;->bJu:Z

    .line 453
    iget-object v0, p0, Lo/akq;->buM:Lo/akw;

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lo/akq;->buM:Lo/akw;

    invoke-virtual {v0}, Lo/akw;->shutdown()V

    .line 457
    :cond_1
    return-void
.end method

.method public Ŀ(I)V
    .locals 3

    .line 427
    if-lez p1, :cond_1

    .line 429
    move-object v1, p0

    monitor-enter v1

    .line 431
    :try_start_0
    iget-boolean v0, p0, Lo/akq;->bJr:Z

    if-nez v0, :cond_0

    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/akq;->bJr:Z

    .line 434
    iget-boolean v0, p0, Lo/akq;->bJs:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/akq;->bJt:Z

    if-eqz v0, :cond_0

    .line 436
    invoke-direct {p0}, Lo/akq;->AT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 442
    :cond_1
    :goto_0
    return-void
.end method

.method public ˊ(Landroid/media/MediaFormat;Landroid/media/MediaFormat;)V
    .locals 7

    .line 118
    iput-object p2, p0, Lo/akq;->bBI:Landroid/media/MediaFormat;

    .line 119
    iput-object p1, p0, Lo/akq;->bBH:Landroid/media/MediaFormat;

    .line 121
    const/4 v4, 0x0

    .line 122
    move-object v5, p0

    monitor-enter v5

    .line 124
    :try_start_0
    iget-boolean v0, p0, Lo/akq;->bJt:Z

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/akq;->bJt:Z

    .line 127
    iget-boolean v0, p0, Lo/akq;->bJr:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/akq;->bJs:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 129
    const/4 v4, 0x1

    .line 132
    :cond_0
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v5

    throw v6

    .line 133
    :goto_0
    if-eqz v4, :cond_1

    .line 135
    invoke-direct {p0}, Lo/akq;->AT()V

    .line 138
    :cond_1
    iget-object v0, p0, Lo/akq;->bBH:Landroid/media/MediaFormat;

    const-string v1, "channel-count"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    iget-object v2, p0, Lo/akq;->bBH:Landroid/media/MediaFormat;

    const-string v3, "sample-rate"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lo/akq;->bJz:D

    .line 139
    return-void
.end method

.method public ˊ(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 23

    .line 206
    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v2, 0x3e8

    div-long v5, v0, v2

    .line 207
    move-object/from16 v7, p0

    monitor-enter v7

    .line 209
    move-object/from16 v0, p0

    :try_start_0
    iget-wide v0, v0, Lo/akq;->bJD:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, v5, v0

    if-lez v0, :cond_0

    .line 211
    invoke-static {}, Lo/akx;->Bl()Lo/akx;

    move-result-object v0

    invoke-virtual {v0}, Lo/akx;->getTime()J

    move-result-wide v0

    move-object/from16 v2, p0

    iput-wide v0, v2, Lo/akq;->bJD:J

    .line 212
    move-object/from16 v0, p0

    iput-wide v5, v0, Lo/akq;->bJC:J

    .line 214
    :cond_0
    move-object/from16 v0, p0

    iput-wide v5, v0, Lo/akq;->bJE:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v7

    throw v8

    .line 217
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/akq;->bJF:Lo/aks;

    if-eqz v0, :cond_1

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/akq;->bJF:Lo/aks;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lo/aks;->ˏ(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 230
    :cond_1
    const/4 v7, 0x0

    .line 232
    const/4 v8, 0x0

    .line 233
    const/4 v9, 0x0

    .line 235
    const/4 v10, 0x0

    .line 236
    const/4 v11, 0x0

    .line 237
    const/4 v12, 0x0

    .line 239
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    if-ge v7, v0, :cond_8

    .line 241
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-nez v0, :cond_7

    add-int/lit8 v0, v7, 0x1

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-nez v0, :cond_7

    add-int/lit8 v0, v7, 0x2

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 245
    add-int/lit8 v0, v7, 0x3

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    .line 246
    and-int/lit8 v14, v13, 0x1f

    .line 247
    and-int/lit8 v0, v13, 0x60

    if-eqz v0, :cond_2

    .line 249
    const/4 v11, 0x1

    .line 251
    :cond_2
    const/4 v0, 0x5

    if-ne v14, v0, :cond_3

    .line 253
    const/4 v10, 0x1

    .line 254
    const/4 v12, 0x1

    .line 256
    :cond_3
    const/4 v0, 0x7

    if-ne v14, v0, :cond_4

    .line 258
    const-string v0, "RTMP"

    const-string v1, "SPS found"

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_4
    const/4 v0, 0x1

    if-ne v14, v0, :cond_5

    .line 262
    const/4 v12, 0x1

    .line 264
    :cond_5
    if-nez v8, :cond_6

    .line 266
    add-int/lit8 v8, v7, 0x3

    goto :goto_2

    .line 269
    :cond_6
    add-int/lit8 v9, v7, 0x3

    .line 272
    :goto_2
    and-int/lit8 v0, v13, 0x1f

    const/4 v1, 0x7

    if-eq v0, v1, :cond_7

    .line 275
    goto :goto_3

    .line 278
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 281
    :cond_8
    :goto_3
    if-lez v9, :cond_9

    .line 283
    add-int/lit8 v0, v9, -0x3

    sub-int v13, v0, v8

    .line 284
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    sub-int v14, v0, v9

    goto :goto_4

    .line 287
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    sub-int v13, v0, v8

    .line 288
    const/4 v14, 0x0

    .line 291
    :goto_4
    if-lez v9, :cond_d

    .line 293
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x7

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x8

    if-ne v0, v1, :cond_c

    .line 295
    move-object/from16 v15, p0

    monitor-enter v15

    .line 297
    move/from16 v16, v13

    .line 298
    move/from16 v0, v16

    :try_start_1
    new-array v0, v0, [B

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/akq;->bJp:[B

    .line 299
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/akq;->bJp:[B

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move/from16 v3, v16

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 301
    move/from16 v17, v14

    .line 302
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/akq;->bJq:[B

    .line 303
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/akq;->bJq:[B

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move/from16 v3, v17

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 306
    const/16 v18, 0x0

    .line 307
    move-object/from16 v19, p0

    monitor-enter v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 309
    move-object/from16 v0, p0

    :try_start_2
    iget-boolean v0, v0, Lo/akq;->bJs:Z

    if-nez v0, :cond_a

    .line 311
    const/4 v0, 0x1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/akq;->bJs:Z

    .line 312
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/akq;->bJr:Z

    if-eqz v0, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/akq;->bJt:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_a

    .line 314
    const/16 v18, 0x1

    .line 317
    :cond_a
    monitor-exit v19

    goto :goto_5

    :catchall_1
    move-exception v20

    monitor-exit v19

    :try_start_3
    throw v20

    .line 318
    :goto_5
    if-eqz v18, :cond_b

    .line 320
    invoke-direct/range {p0 .. p0}, Lo/akq;->AT()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 322
    :cond_b
    monitor-exit v15

    goto :goto_6

    :catchall_2
    move-exception v21

    monitor-exit v15

    throw v21

    :goto_6
    goto :goto_7

    .line 325
    :cond_c
    const-string v0, "RTMP"

    const-string v1, "Unexpected NALU structure"

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_d
    :goto_7
    if-nez v12, :cond_e

    .line 331
    return-void

    .line 334
    :cond_e
    move-object/from16 v15, p0

    monitor-enter v15

    .line 336
    move-object/from16 v0, p0

    :try_start_4
    iget-boolean v0, v0, Lo/akq;->bJu:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v0, :cond_f

    .line 338
    monitor-exit v15

    return-void

    .line 340
    :cond_f
    monitor-exit v15

    goto :goto_8

    :catchall_3
    move-exception v22

    monitor-exit v15

    throw v22

    .line 342
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/akq;->bJv:Z

    if-nez v0, :cond_11

    .line 344
    if-nez v10, :cond_10

    .line 346
    return-void

    .line 349
    :cond_10
    const/4 v0, 0x1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/akq;->bJv:Z

    .line 354
    :cond_11
    add-int/lit8 v15, v13, 0x4

    .line 355
    if-lez v14, :cond_12

    .line 357
    add-int/lit8 v0, v14, 0x4

    add-int/2addr v15, v0

    .line 359
    :cond_12
    const/16 v16, 0x0

    .line 360
    if-eqz v10, :cond_13

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/akq;->bJp:[B

    array-length v0, v0

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/akq;->bJq:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v15, v0

    .line 363
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lo/akq;->ˤ(J)[B

    move-result-object v16

    .line 364
    if-eqz v16, :cond_13

    .line 366
    move-object/from16 v0, v16

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v15, v0

    .line 370
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/akq;->buM:Lo/akw;

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/akq;->buM:Lo/akw;

    invoke-virtual {v1}, Lo/akw;->Bh()I

    move-result v1

    add-int/lit8 v2, v15, 0x5

    const/16 v3, 0x9

    const/4 v4, 0x7

    invoke-virtual {v0, v3, v4, v1, v2}, Lo/akw;->ᵔ(IIII)Lo/alc;

    move-result-object v17

    .line 371
    invoke-virtual/range {v17 .. v17}, Lo/alc;->Br()Lo/akz;

    move-result-object v18

    .line 372
    if-eqz v10, :cond_14

    .line 374
    move-object/from16 v0, v18

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lo/akz;->ˉ(B)V

    goto :goto_9

    .line 375
    :cond_14
    if-eqz v11, :cond_15

    .line 377
    move-object/from16 v0, v18

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Lo/akz;->ˉ(B)V

    goto :goto_9

    .line 380
    :cond_15
    move-object/from16 v0, v18

    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Lo/akz;->ˉ(B)V

    .line 382
    :goto_9
    move-object/from16 v0, v18

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/akz;->ˉ(B)V

    .line 385
    const-wide/16 v19, 0x0

    .line 392
    move-object/from16 v0, v18

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/akz;->ˉ(B)V

    .line 393
    move-object/from16 v0, v18

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/akz;->ˉ(B)V

    .line 394
    move-object/from16 v0, v18

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/akz;->ˉ(B)V

    .line 396
    const/16 v21, 0x5

    .line 397
    if-eqz v10, :cond_16

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/akq;->bJp:[B

    array-length v0, v0

    int-to-long v0, v0

    move-object/from16 v2, v18

    iget-object v2, v2, Lo/akz;->buffer:[B

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lo/akw;->ͺ(J[BI)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/akq;->bJp:[B

    move-object/from16 v1, v18

    iget-object v1, v1, Lo/akz;->buffer:[B

    move-object/from16 v2, p0

    iget-object v2, v2, Lo/akq;->bJp:[B

    array-length v2, v2

    const/4 v3, 0x0

    const/16 v4, 0x9

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/akq;->bJp:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v21, v0, 0x5

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/akq;->bJq:[B

    array-length v0, v0

    int-to-long v0, v0

    move-object/from16 v2, v18

    iget-object v2, v2, Lo/akz;->buffer:[B

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lo/akw;->ͺ(J[BI)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/akq;->bJq:[B

    move-object/from16 v1, v18

    iget-object v1, v1, Lo/akz;->buffer:[B

    add-int/lit8 v2, v21, 0x4

    move-object/from16 v3, p0

    iget-object v3, v3, Lo/akq;->bJq:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/akq;->bJq:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    add-int v21, v21, v0

    .line 407
    if-eqz v16, :cond_16

    .line 409
    move-object/from16 v0, v16

    array-length v0, v0

    int-to-long v0, v0

    move-object/from16 v2, v18

    iget-object v2, v2, Lo/akz;->buffer:[B

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lo/akw;->ͺ(J[BI)V

    .line 410
    move-object/from16 v0, v18

    iget-object v0, v0, Lo/akz;->buffer:[B

    add-int/lit8 v1, v21, 0x4

    move-object/from16 v2, v16

    array-length v2, v2

    move-object/from16 v3, v16

    const/4 v4, 0x0

    invoke-static {v3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    move-object/from16 v0, v16

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    add-int v21, v21, v0

    .line 414
    :cond_16
    int-to-long v0, v13

    move-object/from16 v2, v18

    iget-object v2, v2, Lo/akz;->buffer:[B

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lo/akw;->ͺ(J[BI)V

    .line 415
    add-int/lit8 v21, v21, 0x4

    .line 416
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 417
    move-object/from16 v0, v18

    iget-object v0, v0, Lo/akz;->buffer:[B

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v1, v0, v2, v13}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 418
    add-int v21, v21, v13

    .line 419
    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Lo/akz;->length:I

    .line 420
    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Lo/alc;->setTime(J)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/akq;->buM:Lo/akw;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lo/akw;->ˏ(Lo/alc;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/akq;->buM:Lo/akw;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lo/akw;->ˎ(Lo/alc;)V

    .line 423
    return-void
.end method

.method public ˊ(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;)V"
        }
    .end annotation

    .line 711
    iput-object p1, p0, Lo/akq;->bJA:Ljava/util/HashMap;

    .line 713
    iget-boolean v0, p0, Lo/akq;->bJr:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/akq;->bJs:Z

    if-eqz v0, :cond_0

    .line 716
    const-wide/16 v2, 0x0

    .line 717
    move-object v4, p0

    monitor-enter v4

    .line 719
    :try_start_0
    iget-wide v2, p0, Lo/akq;->bJE:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5

    .line 721
    :goto_0
    invoke-direct {p0, v2, v3}, Lo/akq;->ι(J)[B

    .line 723
    :cond_0
    return-void
.end method

.method public ˊ(Lo/akq$ˊ;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lo/akq;->bJw:Lo/akq$ˊ;

    .line 114
    return-void
.end method

.method public ˊ(Lo/alc;)Z
    .locals 8

    .line 461
    invoke-virtual {p1}, Lo/alc;->getType()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 463
    invoke-virtual {p1}, Lo/alc;->Bu()[Ljava/lang/Object;

    move-result-object v2

    .line 464
    const/4 v0, 0x0

    aget-object v0, v2, v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 465
    const-string v0, "onStatus"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    array-length v0, v2

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 467
    const/4 v0, 0x3

    aget-object v0, v2, v0

    check-cast v0, Ljava/util/Map;

    move-object v4, v0

    .line 468
    const-string v0, "code"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 469
    const-string v0, "NetStream.Publish.Start"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    move-object v6, p0

    monitor-enter v6

    .line 473
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lo/akq;->bJv:Z

    .line 474
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/akq;->bJu:Z

    .line 477
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/akq;->buR:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v6

    throw v7

    .line 479
    :goto_0
    sget-object v0, Lo/akq$if;->bJQ:Lo/akq$if;

    invoke-direct {p0, v0}, Lo/akq;->ˋ(Lo/akq$if;)V

    .line 483
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ˋ(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 10

    .line 162
    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v2, 0x3e8

    div-long v6, v0, v2

    .line 163
    move-object v8, p0

    monitor-enter v8

    .line 165
    :try_start_0
    iget-boolean v0, p0, Lo/akq;->bJu:Z

    if-nez v0, :cond_0

    .line 167
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/akq;->bJx:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit v8

    return-void

    .line 170
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lo/akq;->bJD:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_1

    .line 173
    invoke-static {}, Lo/akx;->Bl()Lo/akx;

    move-result-object v0

    invoke-virtual {v0}, Lo/akx;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/akq;->bJD:J

    .line 174
    iput-wide v6, p0, Lo/akq;->bJC:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    :cond_1
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v8

    throw v9

    .line 178
    :goto_0
    iget-wide v0, p0, Lo/akq;->bJx:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 180
    iput-wide v6, p0, Lo/akq;->bJy:J

    goto :goto_1

    .line 183
    :cond_2
    iget-wide v0, p0, Lo/akq;->bJy:J

    iget-wide v2, p0, Lo/akq;->bJx:J

    long-to-double v2, v2

    iget-wide v4, p0, Lo/akq;->bJz:D

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    add-long v6, v0, v2

    .line 185
    :goto_1
    iget-wide v0, p0, Lo/akq;->bJx:J

    const-wide/16 v2, 0x400

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/akq;->bJx:J

    .line 186
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, v6

    iput-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 187
    iget-object v0, p0, Lo/akq;->bJF:Lo/aks;

    if-eqz v0, :cond_3

    .line 189
    iget-object v0, p0, Lo/akq;->bJF:Lo/aks;

    invoke-virtual {v0, p1, p2}, Lo/aks;->ˎ(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 193
    :cond_3
    iget-object v0, p0, Lo/akq;->buM:Lo/akw;

    iget-object v1, p0, Lo/akq;->buM:Lo/akw;

    invoke-virtual {v1}, Lo/akw;->Bh()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    const/16 v3, 0x8

    const/4 v4, 0x6

    invoke-virtual {v0, v3, v4, v1, v2}, Lo/akw;->ᵔ(IIII)Lo/alc;

    move-result-object v8

    .line 194
    invoke-virtual {v8}, Lo/alc;->Br()Lo/akz;

    move-result-object v9

    .line 195
    const/16 v0, -0x51

    invoke-virtual {v9, v0}, Lo/akz;->ˉ(B)V

    .line 196
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lo/akz;->ˉ(B)V

    .line 197
    iget-object v0, v9, Lo/akz;->buffer:[B

    iget v1, v9, Lo/akz;->length:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 198
    iget v0, v9, Lo/akz;->length:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v9, Lo/akz;->length:I

    .line 199
    invoke-virtual {v8, v6, v7}, Lo/alc;->setTime(J)V

    .line 200
    iget-object v0, p0, Lo/akq;->buM:Lo/akw;

    invoke-virtual {v0, v8}, Lo/akw;->ˏ(Lo/alc;)V

    .line 201
    iget-object v0, p0, Lo/akq;->buM:Lo/akw;

    invoke-virtual {v0, v8}, Lo/akw;->ˎ(Lo/alc;)V

    .line 202
    return-void
.end method

.method public ᴴ(Ljava/lang/String;)V
    .locals 3

    .line 144
    iget-object v0, p0, Lo/akq;->bJF:Lo/aks;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lo/akq;->bJF:Lo/aks;

    iget-object v1, p0, Lo/akq;->bBH:Landroid/media/MediaFormat;

    iget-object v2, p0, Lo/akq;->bBI:Landroid/media/MediaFormat;

    invoke-virtual {v0, p1, v1, v2}, Lo/aks;->ˊ(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaFormat;)V

    .line 148
    :cond_0
    return-void
.end method
