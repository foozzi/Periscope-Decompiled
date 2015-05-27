.class Lo/ᓓ;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic op:Lo/ऽ;


# direct methods
.method constructor <init>(Lo/ऽ;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lo/ᓓ;->op:Lo/ऽ;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 240
    iget-object v0, p0, Lo/ᓓ;->op:Lo/ऽ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ऽ;->ˊ(Lo/ऽ;Z)Z

    .line 241
    return-void
.end method
