.class Lo/ᒐ;
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

    .line 228
    iput-object p1, p0, Lo/ᒐ;->op:Lo/ऽ;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 231
    iget-object v0, p0, Lo/ᒐ;->op:Lo/ऽ;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/ऽ;->ˊ(Lo/ऽ;Z)Z

    .line 232
    return-void
.end method
