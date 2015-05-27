.class Lo/yq$ˋ;
.super Lo/yq$ˏ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/yq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02cb"
.end annotation


# instance fields
.field final synthetic bqL:Lo/yq;


# direct methods
.method private constructor <init>(Lo/yq;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lo/yq$ˋ;->bqL:Lo/yq;

    invoke-direct {p0}, Lo/yq$ˏ;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/yq;Lo/yr;)V
    .locals 0

    .line 568
    invoke-direct {p0, p1}, Lo/yq$ˋ;-><init>(Lo/yq;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 571
    iget-object v0, p0, Lo/yq$ˋ;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ʾ(Lo/yq;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 572
    invoke-virtual {p0}, Lo/yq$ˋ;->uF()V

    .line 573
    :goto_0
    invoke-virtual {p0}, Lo/yq$ˋ;->uE()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 574
    iget-object v0, p0, Lo/yq$ˋ;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ʿ(Lo/yq;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/yq$ˊ;

    move-object v3, v0

    .line 575
    if-nez v3, :cond_0

    .line 576
    new-instance v3, Lo/yq$ˊ;

    const/16 v0, 0x400

    invoke-direct {v3, v0}, Lo/yq$ˊ;-><init>(I)V

    .line 578
    :cond_0
    iget-object v0, p0, Lo/yq$ˋ;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ʾ(Lo/yq;)Landroid/media/AudioRecord;

    move-result-object v0

    iget-object v1, p0, Lo/yq$ˋ;->bqL:Lo/yq;

    invoke-static {v1}, Lo/yq;->ˈ(Lo/yq;)J

    move-result-wide v1

    invoke-virtual {v3, v0, v1, v2}, Lo/yq$ˊ;->ˊ(Landroid/media/AudioRecord;J)I

    .line 579
    iget-object v0, p0, Lo/yq$ˋ;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ˉ(Lo/yq;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 580
    invoke-virtual {v3}, Lo/yq$ˊ;->clear()V

    .line 582
    :cond_1
    iget-object v0, p0, Lo/yq$ˋ;->bqL:Lo/yq;

    invoke-static {v0, v3}, Lo/yq;->ˊ(Lo/yq;Lo/yq$ˊ;)V

    .line 583
    goto :goto_0

    .line 584
    :cond_2
    iget-object v0, p0, Lo/yq$ˋ;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ʿ(Lo/yq;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 585
    iget-object v0, p0, Lo/yq$ˋ;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ʾ(Lo/yq;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 586
    iget-object v0, p0, Lo/yq$ˋ;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ʾ(Lo/yq;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 587
    return-void
.end method
