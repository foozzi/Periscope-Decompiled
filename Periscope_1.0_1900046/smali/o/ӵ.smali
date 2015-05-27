.class Lo/ӵ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/tr$ˊ;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/tr$\u02ca<Ljava/lang/Boolean;>;"
    }
.end annotation


# instance fields
.field final synthetic nN:Lo/ɬ;


# direct methods
.method constructor <init>(Lo/ɬ;)V
    .locals 0

    .line 955
    iput-object p1, p0, Lo/ӵ;->nN:Lo/ɬ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˋ(Lo/tu;)Ljava/lang/Boolean;
    .locals 4

    .line 958
    const/4 v2, 0x1

    .line 960
    iget-object v0, p0, Lo/ӵ;->nN:Lo/ɬ;

    invoke-virtual {v0}, Lo/ɬ;->ch()Lo/pj;

    move-result-object v0

    invoke-virtual {v0}, Lo/pj;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    .line 962
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/ӵ;->nN:Lo/ɬ;

    invoke-virtual {v0}, Lo/ɬ;->ο()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lo/ӵ;->nN:Lo/ɬ;

    iget-object v1, p1, Lo/tu;->oy:Lo/tp;

    invoke-static {v0, v3, v1}, Lo/ɬ;->ˊ(Lo/ɬ;Landroid/app/Activity;Lo/tp;)Z

    move-result v2

    .line 967
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic ˎ(Lo/tu;)Ljava/lang/Object;
    .locals 1

    .line 955
    invoke-virtual {p0, p1}, Lo/ӵ;->ˋ(Lo/tu;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
