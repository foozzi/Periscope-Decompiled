.class Lo/aez;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bBV:Lo/aet;


# direct methods
.method constructor <init>(Lo/aet;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lo/aez;->bBV:Lo/aet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 197
    const-string v0, "RTMP"

    const-string v1, "5000 seconds of onStop have elapsed, ending broadcast."

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lo/aez;->bBV:Lo/aet;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/aet;->ˊ(Lo/aet;Z)V

    .line 199
    return-void
.end method
