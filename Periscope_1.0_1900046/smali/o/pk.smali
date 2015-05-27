.class Lo/pk;
.super Lo/pg$ˊ;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic UV:Lo/pj;


# direct methods
.method constructor <init>(Lo/pj;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lo/pk;->UV:Lo/pj;

    invoke-direct {p0}, Lo/pg$ˊ;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 349
    iget-object v0, p0, Lo/pk;->UV:Lo/pj;

    invoke-virtual {v0, p1}, Lo/pj;->ᐧ(Landroid/app/Activity;)Lo/pj;

    .line 350
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 359
    iget-object v0, p0, Lo/pk;->UV:Lo/pj;

    invoke-virtual {v0, p1}, Lo/pj;->ᐧ(Landroid/app/Activity;)Lo/pj;

    .line 360
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 354
    iget-object v0, p0, Lo/pk;->UV:Lo/pj;

    invoke-virtual {v0, p1}, Lo/pj;->ᐧ(Landroid/app/Activity;)Lo/pj;

    .line 355
    return-void
.end method
