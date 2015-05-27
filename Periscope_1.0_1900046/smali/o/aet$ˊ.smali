.class Lo/aet$ˊ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02ca"
.end annotation


# instance fields
.field final synthetic bBV:Lo/aet;


# direct methods
.method private constructor <init>(Lo/aet;)V
    .locals 0

    .line 1131
    iput-object p1, p0, Lo/aet$ˊ;->bBV:Lo/aet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/aet;Lo/aeu;)V
    .locals 0

    .line 1131
    invoke-direct {p0, p1}, Lo/aet$ˊ;-><init>(Lo/aet;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1134
    iget-object v0, p0, Lo/aet$ˊ;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->י(Lo/aet;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1135
    iget-object v0, p0, Lo/aet$ˊ;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ᵎ(Lo/aet;)Lo/vn;

    move-result-object v0

    iget-object v1, p0, Lo/aet$ˊ;->bBV:Lo/aet;

    invoke-static {v1}, Lo/aet;->ٴ(Lo/aet;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/aet$ˊ;->bBV:Lo/aet;

    invoke-static {v2}, Lo/aet;->ᴵ(Lo/aet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/vn;->ᐣ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1136
    iget-object v0, p0, Lo/aet$ˊ;->bBV:Lo/aet;

    invoke-static {v0}, Lo/aet;->ˎ(Lo/aet;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1138
    :cond_0
    return-void
.end method
