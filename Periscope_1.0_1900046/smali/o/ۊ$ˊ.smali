.class Lo/ۊ$ˊ;
.super Lo/ۊ$if;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ۊ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02ca"
.end annotation


# instance fields
.field private final tw:Landroid/media/AudioTimestamp;

.field private tx:J

.field private ty:J

.field private tz:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 885
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/ۊ$if;-><init>(Lo/ܚ;)V

    .line 886
    new-instance v0, Landroid/media/AudioTimestamp;

    invoke-direct {v0}, Landroid/media/AudioTimestamp;-><init>()V

    iput-object v0, p0, Lo/ۊ$ˊ;->tw:Landroid/media/AudioTimestamp;

    .line 887
    return-void
.end method


# virtual methods
.method public ˊ(Landroid/media/AudioTrack;Z)V
    .locals 2

    .line 891
    invoke-super {p0, p1, p2}, Lo/ۊ$if;->ˊ(Landroid/media/AudioTrack;Z)V

    .line 892
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/ۊ$ˊ;->tx:J

    .line 893
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/ۊ$ˊ;->ty:J

    .line 894
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/ۊ$ˊ;->tz:J

    .line 895
    return-void
.end method

.method public ঌ()Z
    .locals 7

    .line 899
    iget-object v0, p0, Lo/ۊ$ˊ;->sS:Landroid/media/AudioTrack;

    iget-object v1, p0, Lo/ۊ$ˊ;->tw:Landroid/media/AudioTimestamp;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v4

    .line 900
    if-eqz v4, :cond_1

    .line 901
    iget-object v0, p0, Lo/ۊ$ˊ;->tw:Landroid/media/AudioTimestamp;

    iget-wide v5, v0, Landroid/media/AudioTimestamp;->framePosition:J

    .line 902
    iget-wide v0, p0, Lo/ۊ$ˊ;->ty:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_0

    .line 904
    iget-wide v0, p0, Lo/ۊ$ˊ;->tx:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ۊ$ˊ;->tx:J

    .line 906
    :cond_0
    iput-wide v5, p0, Lo/ۊ$ˊ;->ty:J

    .line 907
    iget-wide v0, p0, Lo/ۊ$ˊ;->tx:J

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-long/2addr v0, v5

    iput-wide v0, p0, Lo/ۊ$ˊ;->tz:J

    .line 909
    :cond_1
    return v4
.end method

.method public গ()J
    .locals 2

    .line 914
    iget-object v0, p0, Lo/ۊ$ˊ;->tw:Landroid/media/AudioTimestamp;

    iget-wide v0, v0, Landroid/media/AudioTimestamp;->nanoTime:J

    return-wide v0
.end method

.method public ঢ()J
    .locals 2

    .line 919
    iget-wide v0, p0, Lo/ۊ$ˊ;->tz:J

    return-wide v0
.end method
