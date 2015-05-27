.class Lo/ܚ;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tq:Landroid/media/AudioTrack;

.field final synthetic tr:Lo/ۊ;


# direct methods
.method constructor <init>(Lo/ۊ;Landroid/media/AudioTrack;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lo/ܚ;->tr:Lo/ۊ;

    iput-object p2, p0, Lo/ܚ;->tq:Landroid/media/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 592
    :try_start_0
    iget-object v0, p0, Lo/ܚ;->tq:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    iget-object v0, p0, Lo/ܚ;->tr:Lo/ۊ;

    invoke-static {v0}, Lo/ۊ;->ˊ(Lo/ۊ;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 595
    goto :goto_0

    .line 594
    :catchall_0
    move-exception v1

    iget-object v0, p0, Lo/ܚ;->tr:Lo/ۊ;

    invoke-static {v0}, Lo/ۊ;->ˊ(Lo/ۊ;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    throw v1

    .line 596
    :goto_0
    return-void
.end method
