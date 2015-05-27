.class Lo/aem;
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
.field final synthetic bAQ:Lo/aek;


# direct methods
.method constructor <init>(Lo/aek;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lo/aem;->bAQ:Lo/aek;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 356
    iget-object v0, p0, Lo/aem;->bAQ:Lo/aek;

    invoke-static {v0}, Lo/aek;->ˊ(Lo/aek;)V

    .line 357
    iget-object v0, p0, Lo/aem;->bAQ:Lo/aek;

    invoke-static {v0}, Lo/aek;->ˋ(Lo/aek;)V

    .line 358
    iget-object v0, p0, Lo/aem;->bAQ:Lo/aek;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/aek;->ˊ(Lo/aek;Z)Z

    .line 359
    iget-object v0, p0, Lo/aem;->bAQ:Lo/aek;

    invoke-static {v0}, Lo/aek;->ˎ(Lo/aek;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lo/aem;->bAQ:Lo/aek;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/aek;->ˋ(Lo/aek;Z)V

    .line 362
    :cond_0
    return-void
.end method
