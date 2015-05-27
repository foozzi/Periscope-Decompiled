.class Lo/aex;
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

    .line 1029
    iput-object p1, p0, Lo/aex;->bBV:Lo/aet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1033
    const-string v0, "RTMP"

    const-string v1, "RTMP Setup complete"

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    iget-object v0, p0, Lo/aex;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ʹ(Lo/aet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Lo/aex;->bBV:Lo/aet;

    iget-object v1, p0, Lo/aex;->bBV:Lo/aet;

    invoke-static {v1}, Lo/aet;->ՙ(Lo/aet;)Landroid/graphics/Typeface;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x7f060046

    invoke-static {v0, v2, v3, v1}, Lo/aet;->ˊ(Lo/aet;ZILandroid/graphics/Typeface;)V

    .line 1037
    :cond_0
    return-void
.end method
