.class Lo/aau;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic buU:Lo/aat;


# direct methods
.method constructor <init>(Lo/aat;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lo/aau;->buU:Lo/aat;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 237
    iget-object v0, p0, Lo/aau;->buU:Lo/aat;

    invoke-static {v0}, Lo/aat;->ˊ(Lo/aat;)V

    .line 238
    return-void
.end method
