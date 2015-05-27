.class Lo/ں;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic lK:Lo/ژ;


# direct methods
.method constructor <init>(Lo/ژ;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lo/ں;->lK:Lo/ژ;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 20
    iget-object v0, p0, Lo/ں;->lK:Lo/ژ;

    invoke-static {v0}, Lo/ژ;->ˊ(Lo/ژ;)Z

    move-result v2

    .line 21
    iget-object v0, p0, Lo/ں;->lK:Lo/ژ;

    iget-object v1, p0, Lo/ں;->lK:Lo/ژ;

    invoke-static {v1, p1}, Lo/ژ;->ˊ(Lo/ژ;Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lo/ژ;->ˊ(Lo/ژ;Z)Z

    .line 22
    iget-object v0, p0, Lo/ں;->lK:Lo/ژ;

    invoke-static {v0}, Lo/ژ;->ˊ(Lo/ژ;)Z

    move-result v0

    if-eq v2, v0, :cond_0

    .line 23
    iget-object v0, p0, Lo/ں;->lK:Lo/ژ;

    invoke-static {v0}, Lo/ژ;->ˋ(Lo/ژ;)Lo/ٲ$if;

    move-result-object v0

    iget-object v1, p0, Lo/ں;->lK:Lo/ژ;

    invoke-static {v1}, Lo/ژ;->ˊ(Lo/ژ;)Z

    move-result v1

    invoke-interface {v0, v1}, Lo/ٲ$if;->ˮ(Z)V

    .line 25
    :cond_0
    return-void
.end method
