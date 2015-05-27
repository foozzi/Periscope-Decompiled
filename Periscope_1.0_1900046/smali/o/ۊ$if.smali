.class Lo/ۊ$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ۊ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field private sF:I

.field protected sS:Landroid/media/AudioTrack;

.field private ts:Z

.field private tt:J

.field private tu:J

.field private tv:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/ܚ;)V
    .locals 0

    .line 753
    invoke-direct {p0}, Lo/ۊ$if;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Landroid/media/AudioTrack;Z)V
    .locals 2

    .line 769
    iput-object p1, p0, Lo/ۊ$if;->sS:Landroid/media/AudioTrack;

    .line 770
    iput-boolean p2, p0, Lo/ۊ$if;->ts:Z

    .line 771
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/ۊ$if;->tt:J

    .line 772
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/ۊ$if;->tu:J

    .line 773
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/ۊ$if;->tv:J

    .line 774
    if-eqz p1, :cond_0

    .line 775
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v0

    iput v0, p0, Lo/ۊ$if;->sF:I

    .line 777
    :cond_0
    return-void
.end method

.method public ܪ()Z
    .locals 2

    .line 788
    sget v0, Lo/ผ;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_0

    iget-boolean v0, p0, Lo/ۊ$if;->ts:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ۊ$if;->sS:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/ۊ$if;->sS:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ܬ()J
    .locals 6

    .line 803
    iget-object v0, p0, Lo/ۊ$if;->sS:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v4, v2, v0

    .line 804
    sget v0, Lo/ผ;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_2

    iget-boolean v0, p0, Lo/ۊ$if;->ts:Z

    if-eqz v0, :cond_2

    .line 810
    iget-object v0, p0, Lo/ۊ$if;->sS:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 812
    iput-wide v4, p0, Lo/ۊ$if;->tt:J

    goto :goto_0

    .line 813
    :cond_0
    iget-object v0, p0, Lo/ۊ$if;->sS:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-nez v0, :cond_1

    .line 815
    iget-wide v0, p0, Lo/ۊ$if;->tt:J

    iput-wide v0, p0, Lo/ۊ$if;->tv:J

    .line 817
    :cond_1
    :goto_0
    iget-wide v0, p0, Lo/ۊ$if;->tv:J

    add-long/2addr v4, v0

    .line 819
    :cond_2
    iget-wide v0, p0, Lo/ۊ$if;->tt:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    .line 821
    iget-wide v0, p0, Lo/ۊ$if;->tu:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ۊ$if;->tu:J

    .line 823
    :cond_3
    iput-wide v4, p0, Lo/ۊ$if;->tt:J

    .line 824
    iget-wide v0, p0, Lo/ۊ$if;->tu:J

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-long/2addr v0, v4

    return-wide v0
.end method

.method public र()J
    .locals 4

    .line 831
    invoke-virtual {p0}, Lo/ۊ$if;->ܬ()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget v2, p0, Lo/ۊ$if;->sF:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public ঌ()Z
    .locals 1

    .line 841
    const/4 v0, 0x0

    return v0
.end method

.method public গ()J
    .locals 1

    .line 855
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public ঢ()J
    .locals 1

    .line 871
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
