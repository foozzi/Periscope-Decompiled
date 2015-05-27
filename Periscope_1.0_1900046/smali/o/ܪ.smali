.class Lo/ܪ;
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

    .line 616
    iput-object p1, p0, Lo/ܪ;->tr:Lo/ۊ;

    iput-object p2, p0, Lo/ܪ;->tq:Landroid/media/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 619
    iget-object v0, p0, Lo/ܪ;->tq:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 620
    return-void
.end method
