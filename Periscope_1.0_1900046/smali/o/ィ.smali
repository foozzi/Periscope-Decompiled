.class final enum Lo/ィ;
.super Lo/ΐ$ˋ;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lo/ΐ$ˋ;-><init>(Ljava/lang/String;ILo/ΐ$1;)V

    return-void
.end method


# virtual methods
.method protected ˊ(Ljava/lang/Throwable;)V
    .locals 2

    .line 36
    const-string v0, "PriorityExecutor"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "PriorityExecutor"

    const-string v1, "Request threw uncaught throwable"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    :cond_0
    return-void
.end method
